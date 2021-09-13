" ==============================================================================
" SpaceVim Keybindings
" ==============================================================================

" Denite config
" -----------------------------------------------------------------------------

if has('python3')
    let g:ctrlp_map = ''

   call denite#custom#map(
            \ 'normal',
            \ '<C-l>',
            \ '<denite:enter_mode:insert>',
            \ 'noremap'
            \)
    call denite#custom#map(
            \ 'insert',
            \ '<C-l>',
            \ '<denite:enter_mode:normal>',
            \ 'noremap'
            \)
    nnoremap <silent> <Leader>p :DeniteProjectDir file/rec<CR>
    nnoremap <silent> <Leader>b :Denite buffer<CR>
    nmap <Leader>bb :Denite buffer<CR>
    nnoremap <silent> <Leader>l :Denite buffer<CR>
    nnoremap <silent> <Leader>j :bn<CR><esc>
    nnoremap <silent> <Leader>k :bp<CR><esc>
    nnoremap <silent> <Leader>g :e#<CR><esc>
    nnoremap <silent> <Leader>1 :1b<CR><esc>
    nnoremap <silent> <Leader>2 :2b<CR><esc>
    nnoremap <silent> <Leader>3 :3b<CR><esc>
    nnoremap <silent> <Leader>4 :4b<CR><esc>
    nnoremap <silent> <Leader>5 :5b<CR><esc>
    nnoremap <silent> <Leader>6 :6b<CR><esc>
    nnoremap <silent> <Leader>7 :7b<CR><esc>
    nnoremap <silent> <Leader>8 :8b<CR><esc>
    nnoremap <silent> <Leader>9 :9b<CR><esc>
    nnoremap <silent> <Leader>0 :10b<CR><esc>
endif

" Bullets
" -----------------------------------------------------------------------------

" TODO: shortcuts to insert bullet points
" ◦•‣

" Config shortcut
" -----------------------------------------------------------------------------

nnoremap vrc <Esc> :e ~/vim/init.vim <CR>
nnoremap vrp <Esc> :e ~/vim/plugins.vim <CR>
nnoremap vrk <Esc> :e ~/vim/keybindings.vim <CR>
nnoremap zrc <Esc> :e ~/zsh/src/init.zsh <CR>
nnoremap arc <Esc> :e ~/zsh/plugins/zsh-aliases <CR>
nnoremap zconf <Esc> :e ~/zsh/src/config.zsh <CR>

" Keybindings
" -----------------------------------------------------------------------------

" Common typos
command! Q q!
command! QQ q!
command! QQQ q!
command! W w
command! WW w!
command! WWW w!
command! Ww w!
command! WQ wq!
command! Wq wq!

" Stupid help menu
map  <F1> <Esc>
imap <F1> <Esc>

" Writing/exiting shortcuts
inoremap qq  <Esc>
nnoremap qqq <Esc> :quit!  <CR>
nnoremap QQ  <Esc> :quit!  <CR>
nnoremap WW  <Esc> :write! <CR>
nnoremap WQ  <Esc> :wq!    <CR>

" Copy/paste
" -----------------------------------------------------------------------------

vmap <c-c> "+yi
vmap <c-x> "+c
vmap <c-v> c<esc>"+p
imap <c-v> <esc>"+pa
imap <c-v> <esc><c-v>a
map <F6> :set invpaste<CR>:set paste?<CR>
nnoremap Y y$
vmap Y "+y
imap <c-v> <esc>"+pa

" Buffers
" -----------------------------------------------------------------------------

" TODO: Rename/Refactor
" -----------------------------------------------------------------------------
" - Find and replace:
"   - Categories -> Comments
"   - categories -> comments
"   - Category -> Comment
"   - category -> comment
"
" - Interface:
"    call g:RenameModel("Comments", "Comment", "comments", "comment", "Categories", "Category", "categories", "category")


" inoremap <silent> <Leader>0 <Esc>:call <SID>align()<CR>a

nnoremap alnc <Esc> :Tab /,\zs<CR>
nnoremap alns <Esc> :Tab /:\zs<CR>
