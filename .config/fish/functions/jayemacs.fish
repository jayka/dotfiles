# Defined in - @ line 2
function jayemacs --description 'Open Jayemacs'
	rm ~/.emacs.d
    ln -s ~/jayemacs ~/.emacs.d
    open -n ~/Applications/Emacs.app --args $argv
end
