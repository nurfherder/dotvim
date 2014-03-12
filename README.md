Introduction:
-------------

This vim setup is designed to be used as an IDE for mainly ruby, python, and chef.

 * Syntastic - real time syntax checking
 * Fugititve - run Git in native vim style
 * Ack - a better grep for code
 * Exuberant CTags - navigate code by function
 * White space made visible
 * Syntax highlighting

Deploy:
-------

Clone repo to your home directory:

    git clone git://github.com/nurfherder/dotvim.git ~/dot/vim

Create symlinks:

    ln -s ~/dot/vim ~/.vim
    ln -s ~/dot/vim/vimrc ~/.vimrc
    ln -s ~/dot/vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Upgrade Plugins:
----------------

Later down the road you'll want to upgrade all the included vim plugins to the latest code in their respective git repositories.  Run the following command:

    git submodule foreach git pull origin master

Beautify Terminal:
------------------

###For Windows:

 *  Use PuttyTray
 *  Add Solarized Color Palette
 *  Add PowerLine enhanced font

###For Ubuntu:

 *  Use gTERM
 *  Add Solarized Color Palette
 *  Add PowerLine enhanced font

###For OS X:

 *  Use built-in Terminal.app
 *  Add Solarized Color Palette
 *  Add PowerLine enhanced font
