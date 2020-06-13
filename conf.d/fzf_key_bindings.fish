if test "$FZF_DISABLE_KEYBINDINGS" -ne 1
  bind \co '__fzy_find_file'
  bind \cr '__fzy_reverse_isearch'
  bind \ec '__fzy_cd'
  bind \eC '__fzy_cd --hidden'

  if bind -M insert >/dev/null 2>/dev/null
    bind -M insert \co '__fzf_find_file'
    bind -M insert \cr '__fzf_reverse_isearch'
    bind -M insert \ec '__fzf_cd'
    bind -M insert \eC '__fzf_cd --hidden'
  end
end
