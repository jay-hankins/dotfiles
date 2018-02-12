function show-desktop
    defaults write com.apple.finder CreateDesktop true; killall Finder
end