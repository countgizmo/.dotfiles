function fish_right_prompt
  set_color purple

  # Only show git_prompt if we're in a repo
  set is_inside_git $(git rev-parse --is-inside-work-tree 2> /dev/null)
  if test -d .git
    or test "$is_inside_git" = "true"
    printf '%s ' (fish_git_prompt)
  end

end
