# Defined via `source`
function show-desktop --wraps='defaults write com.apple.finder CreateDesktop true; killall Finder' --description 'alias show-desktop=defaults write com.apple.finder CreateDesktop true; killall Finder'
  defaults write com.apple.finder CreateDesktop true; killall Finder $argv; 
end
