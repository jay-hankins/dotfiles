function replace_icons
    cp ~/.custom-icons/vs-code-3.icns /Applications/Visual\ Studio\ Code.app/Contents/Resources/Code.icns
    touch /Applications/Visual\ Studio\ Code.app
    sudo killall Finder; and sudo killall Dock
end
