# Defined via `source`
function hide-desktop --wraps='defaults write com.apple.finder CreateDesktop false; killall Finder' --description 'alias hide-desktop=defaults write com.apple.finder CreateDesktop false; killall Finder'
  defaults write com.apple.finder CreateDesktop false; killall Finder $argv; 
end
