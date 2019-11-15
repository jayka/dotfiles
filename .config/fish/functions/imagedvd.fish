# Defined in - @ line 2
function imagedvd
	set name (diskutil list | grep disk2 | tail -n 1 | string split ':' | tail -n 1 | string split '*' | head -n 1 | string trim)
    sudo umount /dev/disk2
    dd if=/dev/disk2 of=$name.iso
end
