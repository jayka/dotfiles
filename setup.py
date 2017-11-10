#!/usr/bin/env python
import os, sys


spmacs = [".emacs.d", ".spacemacs.d"]

setup_path = os.path.dirname(os.path.abspath(sys.argv[0]))
user_home = os.path.expanduser("~")

def symlnk_and_backup(sdir):
    symlink   = os.path.join(user_home, sdir)
    source_path = os.path.join(setup_path, sdir)

    if( os.path.lexists(symlink)):  # symlink exists
        backup_dir = symlink + ".bak_" + str(int(round(time.time() * 1000000)))
        print(backup_dir)
        os.rename(symlink, backup_dir)   # create a backup
        print(symlink + " exists. Created backup " + backup_dir)
        
    os.symlink(source_path, symlink)  # create the symlink
    print("Created " + symlink)

# Create all symlinks

for d in spmacs:
    symlnk_and_backup(d)
