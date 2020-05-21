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

function setjavahome --description 'Set JAVA_HOME'
  set -l installed_javas  (/usr/libexec/java_home -V 2>&1 1>/dev/null | cut -f3 -s )

  printf "Found %s java installations.\n" (count $installed_javas)
  
  for i in (seq 1 (count $installed_javas))
    printf "%s) %s\n" $i $installed_javas[$i]
  end

  echo ""
  read -l -p "echo 'JAVA_HOME (default 1)>' " choice

  if test -z $choice -o $choice -gt (count $installed_javas) -o $choice -lt 1
    echo "Invalid choice $choice"
    echo "JAVA_HOME is $JAVA_HOME"
    return 1
  end

  set -x JAVA_HOME $installed_javas[$choice]

end

function mvn --description 'Alias to Maven with option to set JAVA_HOME'
  if test -z "$JAVA_HOME"
    setjavahome
  end

  echo "JAVA_HOME=$JAVA_HOME"

  command mvn $argv
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

function progress --description "Show progress utility function"
  set t $argv[1]
  set total $argv[2]
  set prg (string repeat -n (math "round(100*$t/$total)") -N "#")
  
  echo -ne "Progress: $prg\r"
end

function increment --description "Increment a counter"
  math $argv "+" 1
end

function split-image --description "Split an image in half"
  
  read -l -P "Directory to stored the split images (default: cropped): " split_dir
  if test -z "$split_dir"
    set split_dir "cropped"
  end

  if ! test -e $split_dir
    mkdir "$split_dir"
  end

  set i 1
  set total (count $argv)
  for f in $argv
    progress $i $total
    set i (increment $i)
    cp "$f" "./$split_dir/"
    mogrify -crop "50%x100%" "./$split_dir/$f"
  end
end
