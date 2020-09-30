#!/usr/bin/env bash 

export HOME=/tmp

rm -rf ~/.vimrc ~/.vim
mkdir -p ~/.vim/pack/plugins/{start,opt}

echo '1. Putting package in `~/.vim/pack/*/start/*` without pack commands in ~/.vimrc'
echo '```'
git clone -q https://github.com/sheerun/vim-packages-bug ~/.vim/pack/plugins/start/vim-packages-bug
touch ~/.vimrc
vim --cmd 'filetype plugin indent on' -c q 
echo '```'

echo 
echo '2. Putting package in `~/.vim/pack/*/start/*` with `packload`'
echo '```'
echo "packload" > ~/.vimrc
vim --cmd 'filetype plugin indent on' -c q 
echo '```'

echo 
echo '3. Putting package in `~/.vim/pack/*/start/*` with `packadd vim-packages-bug` in vimrc'
echo '```'
echo 'packadd vim-packages-bug' > ~/.vimrc
vim --cmd 'filetype plugin indent on' -c q 
echo '```'

echo 
echo '4. Putting package in `~/.vim/pack/*/start/*` with `packadd! vim-packages-bug` in vimrc'
echo '```'
echo 'packadd! vim-packages-bug' > ~/.vimrc
vim --cmd 'filetype plugin indent on' -c q 
echo '```'

echo 
echo '5. Putting package in `~/.vim/pack/*/opt/*` with `packadd vim-packages-bug` in vimrc'
echo '```'
mv ~/.vim/pack/plugins/{start,opt}/vim-packages-bug
echo 'packadd vim-packages-bug' > ~/.vimrc
vim --cmd 'filetype plugin indent on' -c q 
echo '```'

echo 
echo '6. Putting package in `~/.vim/pack/*/opt/*` with `packadd! vim-packages-bug` in vimrc'
echo '```'
echo 'packadd! vim-packages-bug' > ~/.vimrc
vim --cmd 'filetype plugin indent on' -c q 
echo '```'
