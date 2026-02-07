// Export assembly listing from Ghidra program
// @category Export

import ghidra.app.script.GhidraScript;
import ghidra.app.util.exporter.AsciiExporter;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.*;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

public class ExportAssembly extends GhidraScript {

    @Override
    public void run() throws Exception {
        if (currentProgram == null) {
            println("ERROR: No program loaded");
            return;
        }

        String programName = currentProgram.getName();
        println("Exporting assembly for: " + programName);

        // Create output directory
        File outputDir = new File("C:/Projects/Zeliard/assembly_output");
        outputDir.mkdirs();

        // Create output file
        File outputFile = new File(outputDir, programName + ".asm");
        PrintWriter writer = new PrintWriter(new FileWriter(outputFile));

        // Write header
        writer.println("; Assembly listing for: " + programName);
        writer.println("; Exported from Ghidra");
        writer.println("; Base address: " + currentProgram.getImageBase());
        writer.println();

        // Get the listing
        Listing listing = currentProgram.getListing();
        InstructionIterator instructions = listing.getInstructions(true);

        int count = 0;
        while (instructions.hasNext() && !monitor.isCancelled()) {
            Instruction instr = instructions.next();
            Address addr = instr.getAddress();

            // Format: address | bytes | mnemonic operands | comment
            String addrStr = addr.toString();
            String bytesStr = formatBytes(instr.getBytes());
            String mnemonicStr = instr.getMnemonicString();
            String operandsStr = instr.getDefaultOperandRepresentation(0);

            // Add additional operands if they exist
            for (int i = 1; i < instr.getNumOperands(); i++) {
                operandsStr += ", " + instr.getDefaultOperandRepresentation(i);
            }

            // Get comment if exists
            String comment = "";
            String eolComment = instr.getComment(CodeUnit.EOL_COMMENT);
            if (eolComment != null && !eolComment.isEmpty()) {
                comment = " ; " + eolComment;
            }

            // Write formatted line
            writer.printf("%-12s %-16s %-8s %-20s%s\n",
                addrStr, bytesStr, mnemonicStr, operandsStr, comment);

            count++;
            if (count % 1000 == 0) {
                println("Exported " + count + " instructions...");
            }
        }

        writer.close();
        println("Successfully exported " + count + " instructions to: " + outputFile.getAbsolutePath());
    }

    private String formatBytes(byte[] bytes) {
        if (bytes == null || bytes.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < Math.min(bytes.length, 8); i++) {
            sb.append(String.format("%02X ", bytes[i] & 0xFF));
        }
        return sb.toString().trim();
    }
}
