Server_name="socios_vm"
Disk_location="/opt/$Server_name.vdi"
Image_file="/opt/socios.iso"
echo $Image_file

#Creating virtual machine
sudo vboxmanage createvm --name $Server_name --ostype Ubuntu_64 --register
sudo vboxmanage createhd --filename $Disk_location  --size 32000 --format VDI

#Memory & CPU configuration
#sudo vboxmanage modifyvm $Server_name --memory 4096
#sudo vboxmanage modifyvm $Server_name --vram 16
#sudo vboxmanage modifyvm $Server_name --graphicscontroller VMSVGA
#sudo vboxmanage modifyvm $Server_name --cpus 2

#Configuration of virtual hard_disk
#sudo vboxmanage storagectl $Server_name --name "SATA Controller" --add sata --controller IntelAhci
#sudo vboxmanage storageattach $Server_name --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $Disk_location

#Configuration of ISO_image
#sudo VBoxManage storagectl $Server_name --name "IDE Controller" --add ide --controller PIIX4
#sudo VBoxManage storageattach $Server_name --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium $Image_file
#sudo vboxmanage startvm "Server_name"
