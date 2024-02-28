#!/bin/bash

IMG='lost.img'

[[ -f build/$IMG ]] || { echo "Imagem $IMG não encontrada!"; exit 1; }

exec qemu-system-i386 -drive file=build/$IMG,format=raw,index=0,if=floppy