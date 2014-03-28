My Vim Configuration
====================

This vim setup is designed to be used as an IDE for mainly ruby, python, and chef.

 * Syntastic - real time syntax checking
 * Fugititve - run Git in native vim style
 * Ack - a better grep for code
 * Exuberant CTags - navigate code by function
 * White space made visible
 * Syntax highlighting

I'm blatantly ripping off the style of managing Vim plugins using Pathogen and git submodules that is layed out in this VimCast:

http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/#comment-86499711

Deploy:
-------

**Prerequisites:**

 * git
 * linkme.sh
 * Vim compiled with python enabled.
 * Python powerline installed.
 * A Terminal configured for the Solarized color palette (see below)
 * A Terminal configured to use a powerline patched font (see below)

**Procedure:**

Clone repo to your home directory:

    git clone git://github.com/nurfherder/dotvim.git ~/code/dot/dotvim

Create symlinks to config files and fetch submodules:

    cd ~/code/dot/dotvim
    git submodule update --init
    linkme.sh

Powerline is a python extention to Vim that you will need to install using the python pip command:

    pip install --user git+git://github.com/Lokaltog/powerline

and to Solarize powerline you need to edit `~/.local/lib/python2.7/site-packages/powerline/config_files/config.jason` so that for the `vim` entry it has `"colorscheme": "solarized",`.

Upgrade Plugins:
----------------

Later down the road you'll want to upgrade all the included vim plugins to the latest code in their respective git repositories.  Run the following command:

    git submodule foreach git pull origin master

Beautify Terminal:
------------------

In order to take full advantage of the solarized color scheme and powerline you'll need to update your terminal's color pallete and use a powerline 'patched' font.


###For Windows:

 *  Use PuttyTray
 *  Add Solarized Color Palette
 *  Add PowerLine enhanced font

###For Linux:

 *  Use gTERM
 *  Add Solarized Color Palette
 *  Add PowerLine enhanced font

###For OS X:

 *  Use built-in Terminal.app
 *  Add Solarized Color Palette
 *  Add PowerLine enhanced font
