#sudo qemu-system-x86_64 -enable-kvm -cpu host -serial file:virtual.log -netdev tap,helper=/usr/libexec/qemu-bridge-helper,id=thor_net0 -device rtl8139,netdev=thor_net0,id=thor_nic0 -vga std -hda hdd.img
#sudo run-qemu -enable-kvm -cpu host -serial file:virtual.log -vga std -hda hdd.img
sudo qemu-system-x86_64 -enable-kvm -cpu host -serial file:virtual.log -net user,vlan=0 -net nic,model=rtl8139,vlan=0,macaddr=52:54:00:12:34:56 -net socket,listen=localhost:1234 -net dump,vlan=0,file=thor.pcap -vga std -hda hdd.img &
