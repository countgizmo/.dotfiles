function fish_prompt
  set_color 62A
  printf (prompt_pwd)
  set_color green
  printf '-> '
  set_color normal
end
