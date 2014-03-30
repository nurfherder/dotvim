My Vim Configuration
====================

This vim setup is designed to be used as an IDE for mainly ruby, python, and chef.

Includes:

 * [Syntastic][6] - real time syntax checking
 * [Fugitive][7] - run Git in native vim style
 * Configured to make white space made visible
 * Has built-in syntax highlighting for many popular languages.

Works well with:
 * [Ack][1] - a better grep for code
 * [Exuberant CTags][2] - navigate code by function

I'm blatantly ripping off the style of managing Vim plugins using Pathogen and git submodules that is layed out in this VimCast:

http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/#comment-86499711

Deploy:
-------

**Prerequisites:**

 * git
 * [slink](https://github.com/nurfherder/slink)
 * Vim compiled with python enabled (sometimes packaged as vim-enhanced).
 * [Powerline python add-on][8] (_optional_).
 * A Terminal configured for the Solarized color palette (see below)
 * A Terminal configured to use a powerline patched font (see below)

**Procedure:**

Clone repo to your home directory:

    git clone git://github.com/nurfherder/dotvim.git ~/code/dot/dotvim

Create symlinks to config files and fetch submodules:

    cd ~/code/dot/dotvim
    git submodule update --init
    slink

Powerline is a python extention to Vim that you will need to install using the python pip command:

    pip install --user git+git://github.com/Lokaltog/powerline

and to Solarize powerline you need to edit `~/.local/lib/python2.7/site-packages/powerline/config_files/config.jason` so that for the `vim` entry it has `"colorscheme": "solarized",`.

Upgrade Plugins:
----------------

Later down the road you'll want to upgrade all the included vim plugins to the latest code in their respective git repositories.  Run the following command:

    git submodule foreach git pull origin master

Beautify Terminal:
------------------

In order to take full advantage of the [solarized color scheme][3] and powerline add-on you'll want to update your terminal's color palette and use a [powerline 'patched' font][4].  I recommend downloading DejaVuSansMono:

https://github.com/Lokaltog/powerline-fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf


###For Windows:

 *  Use [PuttyTray][5]
 *  Add Solarized Color Palette
 *  Add PowerLine enhanced font

###For Linux:

 *  Use Gterm
 *  Add Solarized Color Palette
 *  Add PowerLine enhanced font

###For OS X:

 *  Use built-in Terminal.app
 *  Add Solarized Color Palette
 *  Add PowerLine enhanced font

[1]: http://beyondgrep.com/ "ack!"
[2]: http://ctags.sourceforge.net/ "Exuberant Ctags"
[3]: http://ethanschoonover.com/solarized "Solarized"
[4]: https://github.com/Lokaltog/powerline-fonts "Powerline fonts"
[5]: https://puttytray.goeswhere.com/ "PuTTYtray"
[6]: https://github.com/scrooloose/syntastic "Vim Syntastic"
[7]: https://github.com/tpope/vim-fugitive "Vim Fugitive"
[8]: https://github.com/Lokaltog/powerline "Vim Powerline"
