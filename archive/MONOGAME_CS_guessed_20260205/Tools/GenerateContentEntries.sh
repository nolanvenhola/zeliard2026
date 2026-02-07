#!/bin/bash
# Generate Content.mgcb entries for all sprites

cd ../Content/Sprites

for file in *.png; do
    name="${file%.png}"
    echo ""
    echo "#begin Sprites/$file"
    echo "/importer:TextureImporter"
    echo "/processor:TextureProcessor"
    echo "/processorParam:ColorKeyColor=255,0,255,255"
    echo "/processorParam:ColorKeyEnabled=True"
    echo "/processorParam:GenerateMipmaps=False"
    echo "/processorParam:PremultiplyAlpha=True"
    echo "/processorParam:ResizeToPowerOfTwo=False"
    echo "/processorParam:MakeSquare=False"
    echo "/processorParam:TextureFormat=Color"
    echo "/build:Sprites/$file"
done

cd ../Tilesets
for file in *.png; do
    name="${file%.png}"
    echo ""
    echo "#begin Tilesets/$file"
    echo "/importer:TextureImporter"
    echo "/processor:TextureProcessor"
    echo "/processorParam:ColorKeyColor=255,0,255,255"
    echo "/processorParam:ColorKeyEnabled=True"
    echo "/processorParam:GenerateMipmaps=False"
    echo "/processorParam:PremultiplyAlpha=True"
    echo "/processorParam:ResizeToPowerOfTwo=False"
    echo "/processorParam:MakeSquare=False"
    echo "/processorParam:TextureFormat=Color"
    echo "/build:Tilesets/$file"
done
