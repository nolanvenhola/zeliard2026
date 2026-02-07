#!/usr/bin/env python3
"""
Ghidra Headless Script to Export Assembly Listings
This script exports assembly from analyzed Ghidra projects
"""

# For use with Ghidra's analyzeHeadless tool
# This will be executed by Ghidra's Python interpreter

from ghidra.program.model.listing import CodeUnit
from ghidra.app.util.exporter import AsmExporter
from java.io import File

# Get current program
program = getCurrentProgram()
listing = program.getListing()

# Export to assembly file
output_file = File("/c/Projects/Zeliard/assembly_output/" + program.getName() + ".asm")
output_file.getParentFile().mkdirs()

# Create exporter
exporter = AsmExporter()

# Export with options
options = exporter.getOptions(None)
exporter.export(output_file, program, program.getMemory(), monitor)

print("Exported assembly for: " + program.getName())
print("Output: " + output_file.getAbsolutePath())
