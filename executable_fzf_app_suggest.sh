tlp() {
  local session
  session=$(find ~/.tmuxp -type f \( -name "*.yaml" -o -name "*.yml" -o -name "*.json" \) |
    fzf --prompt="Tmuxp session: " --preview='cat {}' --preview-window=down:wrap)

  if [ -n "$session" ]; then
    tmuxp load "$session"
  fi
}
