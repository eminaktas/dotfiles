function alacritty-theme --argument theme
  if ! test -f ~/.config/alacritty/themes/$theme.toml
    echo "file ~/.config/alacritty/themes/$theme.toml doesn't exist"
    return
  end

  # sed doesn't like symlinks, get the absolute path
  set -l config_path (realpath ~/.config/alacritty/alacritty.toml)

  sed -i "" "s#import = \[\"~/.config/alacritty/themes/.*#import = [\"~/.config/alacritty/themes/$theme.toml\"]#g" "$config_path"

  echo "switched to $theme"
end
