import os
import struct
from pathlib import Path

CHUNKS_BASE = Path('2_EXTRACTED_CHUNKS')
ASM_BASE = Path('4_ASSEMBLY_DISASSEMBLY/assembly_output')
OUTPUT = Path('6_DOCUMENTATION/02_GAME_ENGINE/CHUNKS/CHUNK_VERIFICATION_REPORT.md')

CODE_PATTERNS = [
    (b'\xE9', 'JMP_NEAR', 3),
    (b'\xEB', 'JMP_SHORT', 2),
    (b'\xE8', 'CALL', 3),
    (b'\x55\x8B\xEC', 'FUNC_PROLOGUE', 3),
    (b'\xCD', 'INT', 2),
    (b'\xC3', 'RET', 1),
]

def find_code_sigs(data, limit=128):
    matches = []
    check = data[:min(limit, len(data))]
    for pat, name, size in CODE_PATTERNS:
        offset = 0
        while True:
            pos = check.find(pat, offset)
            if pos == -1:
                break
            matches.append((pos, name))
            offset = pos + 1
    return matches

def analyze_data_type(data):
    if len(data) < 16:
        return "TOO_SMALL"
    fmt = data[5]
    if fmt == 0x06:
        return "RLE_TYPE6_TABLE"
    elif fmt == 0x07:
        return "RLE_TYPE7_ESCAPE"
    elif fmt in [0x00, 0x05]:
        return "RAW_OR_RLE5"
    return "UNKNOWN_DATA"

def has_asm(archive, chunk_num):
    asm_file = ASM_BASE / f'{archive}_chunks' / f'chunk_{chunk_num:02d}.asm'
    return asm_file.exists()

results = []
for archive in ['zelres1', 'zelres2', 'zelres3']:
    for chunk_num in range(40):
        chunk_file = CHUNKS_BASE / f'{archive}_extracted' / f'chunk_{chunk_num:02d}.bin'
        if not chunk_file.exists():
            continue
        
        with open(chunk_file, 'rb') as f:
            data = f.read()
        
        size = len(data)
        fmt = data[5] if len(data) > 5 else None
        is_comp = fmt in [0x00, 0x05, 0x06, 0x07]
        code_sigs = find_code_sigs(data)
        has_disasm = has_asm(archive, chunk_num)
        data_type = analyze_data_type(data)
        
        if has_disasm:
            cls = 'CODE'
            conf = 'CONFIRMED'
        elif is_comp and len(code_sigs) == 0:
            cls = 'DATA'
            conf = 'LIKELY'
        elif len(code_sigs) >= 5:
            cls = 'CODE'
            conf = 'LIKELY'
        elif len(code_sigs) <= 2 and is_comp:
            cls = 'DATA'
            conf = 'LIKELY'
        else:
            cls = 'UNKNOWN'
            conf = 'UNCERTAIN'
        
        results.append({
            'archive': archive,
            'chunk': chunk_num,
            'size': size,
            'format': fmt,
            'compressed': is_comp,
            'code_sigs': code_sigs,
            'has_asm': has_disasm,
            'classification': cls,
            'confidence': conf,
            'data_type': data_type,
        })

OUTPUT.parent.mkdir(parents=True, exist_ok=True)
with open(OUTPUT, 'w') as f:
    f.write('# Chunk Verification Report\n\n')
    f.write('Systematic analysis of all 120 chunks across zelres1, zelres2, zelres3.\n\n')
    
    code_count = sum(1 for r in results if r['classification'] == 'CODE')
    data_count = sum(1 for r in results if r['classification'] == 'DATA')
    unknown_count = sum(1 for r in results if r['classification'] == 'UNKNOWN')
    code_conf = sum(1 for r in results if r['classification'] == 'CODE' and r['confidence'] == 'CONFIRMED')
    
    f.write('## Executive Summary\n\n')
    f.write(f'- Total chunks: 120\n')
    f.write(f'- Code chunks: {code_count} ({code_conf} confirmed)\n')
    f.write(f'- Data chunks: {data_count}\n')
    f.write(f'- Uncertain: {unknown_count}\n\n')
    
    f.write('### By Archive\n\n')
    f.write('| Archive | Code | Data | Unknown |\n')
    f.write('|---------|------|------|----------|\n')
    for archive in ['zelres1', 'zelres2', 'zelres3']:
        arc_results = [r for r in results if r['archive'] == archive]
        arc_code = sum(1 for r in arc_results if r['classification'] == 'CODE')
        arc_data = sum(1 for r in arc_results if r['classification'] == 'DATA')
        arc_unk = sum(1 for r in arc_results if r['classification'] == 'UNKNOWN')
        f.write(f'| {archive} | {arc_code} | {arc_data} | {arc_unk} |\n')
    
    f.write('\n## All Chunks\n\n')
    f.write('| Archive | Chunk | Size | Format | Comp | Sigs | ASM | Classification |\n')
    f.write('|---------|-------|------|--------|------|------|-----|----------------|\n')
    for r in results:
        fmt = f'0x{r["format"]:02X}' if r['format'] is not None else 'N/A'
        comp = 'Y' if r['compressed'] else 'N'
        has_asm_str = 'Y' if r['has_asm'] else 'N'
        f.write(f'| {r["archive"]} | {r["chunk"]:02d} | {r["size"]:,} | {fmt} | {comp} | {len(r["code_sigs"])} | {has_asm_str} | {r["classification"]} |\n')

print(f'Report written to: {OUTPUT}')
print(f'Code: {code_count}, Data: {data_count}, Unknown: {unknown_count}')
