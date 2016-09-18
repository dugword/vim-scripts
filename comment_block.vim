function CommentBlock(comment)
    " If 1 or more optional arguments, first optional arg is introducer
    let start_comment = "/*"
    let end_comment   = "*/"
    let upper_left    = "╔"
    let upper_right   = "╗"
    let lower_left    = "╚"
    let lower_right   = "╝"
    let horz_bar      = "═"
    let vert_bar      = "║"

    let comment_length = strlen(a:comment)

    " Build the comment box and put the comment inside it...
    return start_comment . "\<CR>"
    \    . upper_left    . repeat(horz_bar, comment_length + 2) . upper_right . "\<CR>"
    \    . vert_bar      . " " . a:comment . " " . vert_bar               . "\<CR>"
    \    . lower_left    . repeat(horz_bar, comment_length + 2) . lower_right  . "\<CR>"
    \    . end_comment   . "\<CR>"
endfunction

imap <silent> /// <C-R>=CommentBlock(input("Enter comment: "))<CR>

