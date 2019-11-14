# Defined in - @ line 1
function doomemacs --description 'alias doomemacs=rm ~/.emacs.d; ln -s ~/repo/ajays/doom-emacs/ ~/.emacs.d; open /Applications/Emacs.app'
	rm ~/.emacs.d; ln -s ~/repo/ajays/doom-emacs/ ~/.emacs.d; open /Applications/Emacs.app $argv;
end
