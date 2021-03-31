function jayemacs --description 'Open Jayemacs'
    rm ~/.emacs.d
    ln -s ~/dotfiles/jayemacs ~/.emacs.d
    open -n ~/Applications/Emacs.app --args $argv
end
