rm -rf $HOME/repos/programs/rofi-collection
mkdir -p $HOME/repos/programs/rofi-collection
git clone git@github.com:Murzchnvok/rofi-collection.git $HOME/repos/programs/rofi-collection
echo "Remember to set rofi to be executed using 'rofi -show {run,drun,window} -theme $HOME/repos/programs/rofi-collection/dracula/dracula.rasi'"
