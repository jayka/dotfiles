# Defined in - @ line 2
function spacemacs --description 'Open Spacemacs'
	rm ~/.emacs.d
    ln -s ~/setup/.emacs.d ~/.emacs.d
    open -n /Applications/Emacs.app $argv
end
