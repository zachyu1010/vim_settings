" use Silver Searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  noremap FF :Ack<Space>
else
  noremap FF :echo "you need to install ack or ag first"<Enter>
endif

