nasm -f bin -o boot/boot_sector.bin boot/boot_sector.asm

dd if=/dev/zero of=boot/boot.img bs=1024 count=1440
dd if=boot/boot_sector.bin of=boot/boot.img seek=0 count=1 conv=notrunc

VBoxManage convertfromraw --format VDI boot/boot.img os.vdi