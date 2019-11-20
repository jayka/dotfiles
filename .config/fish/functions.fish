# Utilities
function dwdamqcommon
	while read -l var
      echo $var
      curl -s -o ./$var "http://stage2ud1013.qa.paypal.com:10194/get?path=/x/web/STAGE2UD1013/amqcommon/$var"
    end <dwdfilelist
end

function imagedvd --d 'Copy dvd/usb image to a file'
	set name (diskutil list | grep disk2 | tail -n 1 | string split ':' | tail -n 1 | string split '*' | head -n 1 | string trim)
    sudo umount /dev/disk2
    dd if=/dev/disk2 of=$name.iso
end

function jayemacs --description 'Open Jayemacs'
	rm ~/.emacs.d
    ln -s ~/jayemacs ~/.emacs.d
    open -n ~/Applications/Emacs.app --args $argv
end

function npmnode --description 'alias npmnode npm set registry https://registry.npmjs.org'
	npm set registry https://registry.npmjs.org $argv;
end

function npmpp --description 'alias npmpp npm set registry http://npm.paypal.com'
	npm set registry http://npm.paypal.com $argv;
end

function nvm
	bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function spacemacs --description 'Open Spacemacs'
	rm ~/.emacs.d
  ln -s ~/setup/.emacs.d ~/.emacs.d
  open -n /Applications/Emacs.app $argv
end

function vanilaemacs
  rm ~/.emacs.d
  ln -s ~/vanilaemacs ~/.emacs.d
  open -n ~/Applications/Emacs.app
end
