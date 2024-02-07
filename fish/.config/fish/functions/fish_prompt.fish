function fish_prompt
    string join '' -- \
  (set_color green) (prompt_pwd --full-length-dirs 2) (set_color normal) \
  (set_color purple) (fish_git_prompt) (set_color normal) ' > '
end
