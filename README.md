# contemplate.vim

This is an extremely light-weight template (aka "skeleton") plugin for Vim.  It
makes it easy to include all of the boilerplate necessary when creating certain
kinds of files.

## Installation

I recommend using a plugin manager like
[pathogen.vim](https://github.com/tpope/vim-pathogen). With pathogen, simply
execute the following commands:

    cd ~/.vim/bundle
    git clone git://github.com/xenomachina/vim-contemplate.git

## Usage

Template files are selected by filetype, *not* by extension, though most
filetypes are themselves determined by extension. The template file for a
given filetype is named `filetype.template`. For example, the C++ filetype is
`cpp`, so the C++ template file is called `cpp.template`, even if you use `.cxx`
or `.cc` as your extension.

Place template files in a `templates` subdirectory of your runtime path
(`~/.vim/templates/` is the de facto location).

Once a template for a given filetype exists, it will be read into new buffers
for that filetype automatically.

## Tips

- When in doubt about whether something should be included in a template, it's
  probably a good idea to include it. It's easy to then delete whatever is
  inappropriate for the file you're working on after the template loads.

## License

Copyright © Laurence Gonsalves.
Distributed under the same terms as Vim itself.
See `:help license`.
