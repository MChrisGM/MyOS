VBoxManage createvm --name OS-test --ostype Other --register --basefolder %cd%

VBoxManage modifyvm OS-test --cpus 1 --memory 1024 --vram 2

VBoxManage storagectl OS-test --name "SATA Controller" --add sata --bootable on

VBoxManage storageattach OS-test --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium %cd%/os.vdi

VBoxManage startvm OS-test