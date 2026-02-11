from pathlib import Path
CHUNKS_BASE = Path('2_EXTRACTED_CHUNKS')
ASM_BASE = Path('4_ASSEMBLY_DISASSEMBLY/assembly_output')
OUTPUT = Path('6_DOCUMENTATION/02_GAME_ENGINE/CHUNKS/CHUNK_VERIFICATION_REPORT.md')
CODE_PATTERNS = [(b'\xE9', 'JMP_NEAR'),(b'\xEB', 'JMP_SHORT'),(b'\xE8', 'CALL'),(b'\x55\x8B\xEC', 'FUNC_PROLOGUE'),(b'\xCD', 'INT'),(b'\xC3', 'RET')]
def find_code_sigs(data, limit=128):
    matches = []
    check = data[:min(limit, len(data))]
    for pat, name in CODE_PATTERNS:
        offset = 0
        while True:
            pos = check.find(pat, offset)
            if pos == -1: break
            matches.append((pos, name))
            offset = pos + 1
    return matches
def has_asm(archive, chunk_num):
    return (ASM_BASE / f'{archive}_chunks' / f'chunk_{chunk_num:02d}.asm').exists()
results = []
for archive in ['zelres1', 'zelres2', 'zelres3']:
    for chunk_num in range(40):
        chunk_file = CHUNKS_BASE / f'{archive}_extracted' / f'chunk_{chunk_num:02d}.bin'
        if not chunk_file.exists(): continue
        with open(chunk_file, 'rb') as f: data = f.read()
        size = len(data)
        fmt = data[5] if len(data) > 5 else None
        is_comp = fmt in [0x00, 0x05, 0x06, 0x07]
        code_sigs = find_code_sigs(data)
        has_disasm = has_asm(archive, chunk_num)
        if has_disasm: cls,conf = 'CODE','CONFIRMED'
        elif is_comp and len(code_sigs) == 0: cls,conf = 'DATA','LIKELY'
        elif len(code_sigs) >= 5: cls,conf = 'CODE','LIKELY'
        elif len(code_sigs) <= 2 and is_comp: cls,conf = 'DATA','LIKELY'
        else: cls,conf = 'UNKNOWN','UNCERTAIN'
        results.append({'archive':archive,'chunk':chunk_num,'size':size,'format':fmt,'compressed':is_comp,'code_sigs':code_sigs,'has_asm':has_disasm,'classification':cls,'confidence':conf})
code_count = sum(1 for r in results if r['classification'] == 'CODE')
data_count = sum(1 for r in results if r['classification'] == 'DATA')
unknown_count = sum(1 for r in results if r['classification'] == 'UNKNOWN')
code_conf = sum(1 for r in results if r['classification'] == 'CODE' and r['confidence'] == 'CONFIRMED')
OUTPUT.parent.mkdir(parents=True, exist_ok=True)
with open(OUTPUT, 'w') as f:
    f.write('# Chunk Verification Report\n\n**Date:** February 10, 2026\n\n')
    f.write('Systematic analysis of all 120 chunks using code signature detection.\n\n')
    f.write(f'## Executive Summary\n\n- **Total**: 120 chunks\n- **Code**: {code_count} ({code_conf} confirmed)\n- **Data**: {data_count}\n- **Uncertain**: {unknown_count}\n\n')
    f.write('| Archive | Code | Data | Unknown |\n|---------|------|---------|----------|\n')
    for arc in ['zelres1','zelres2','zelres3']:
        c = sum(1 for r in results if r['archive']==arc and r['classification']=='CODE')
        d = sum(1 for r in results if r['archive']==arc and r['classification']=='DATA')
        u = sum(1 for r in results if r['archive']==arc and r['classification']=='UNKNOWN')
        f.write(f'| {arc} | {c} | {d} | {u} |\n')
    f.write('\n## All Chunks\n\n| Archive | Chunk | Size | Format | C | Sigs | ASM | Classification |\n|---------|-------|------|--------|---|------|-----|----------------|\n')
    for r in results:
        fmt = f'0x{r["format"]:02X}' if r['format'] else 'N/A'
        comp = 'Y' if r['compressed'] else 'N'
        asm = 'Y' if r['has_asm'] else 'N'
        f.write(f'| {r["archive"]} | {r["chunk"]:02d} | {r["size"]:,} | {fmt} | {comp} | {len(r["code_sigs"])} | {asm} | {r["classification"]} |\n')
    f.write('\n## Key Findings\n\n')
    f.write('### Confirmed Code (has .asm disassembly)\n\n')
    for arc in ['zelres1','zelres2','zelres3']:
        chunks = [r for r in results if r['archive']==arc and r['has_asm']]
        if chunks:
            f.write(f'**{arc}**: chunks ')
            f.write(', '.join(str(r['chunk']) for r in sorted(chunks, key=lambda x: x['chunk'])))
            f.write(f' ({len(chunks)} total)\n\n')
    f.write('### Likely Code (5+ signatures)\n\n')
    likely = [r for r in results if r['classification']=='CODE' and not r['has_asm']]
    for r in sorted(likely, key=lambda x: -len(x['code_sigs']))[:10]:
        f.write(f'- {r["archive"]}/chunk_{r["chunk"]:02d}: {len(r["code_sigs"])} signatures\n')
    f.write('\n### Graphics Data (.grp files)\n\n')
    f.write('zelres1 chunks 13-39: Compressed images (format 0x06/0x07)\n\n')
    f.write('zelres2 chunks 18-35: Gameplay sprites (format 0x06 table RLE)\n\n')
print(f'Report saved: {OUTPUT}')
print(f'Code={code_count}, Data={data_count}, Uncertain={unknown_count}')
