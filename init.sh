# initiate a new setup of dotfiles

dir = ~/dotfiles
dirbck = ~/dotfiles_old
files = ".bashrc .bash_profile .zshrc"

# backup old dotfiles
echo "Creating $dirbck for backup of any existing dotfiles in ~"
mkdir -p $dirbck
echo "...done"

# change to the dotfiles folder
echo "Changing to the $dir folder"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles backup directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $dirbck"
    mv ~/$file $dirbck/
    echo "Creating symlink to $file in home folder."
    ln -s $dir/$file ~/$file
done
