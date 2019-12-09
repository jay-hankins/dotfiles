# Defined in - @ line 1
function ll --description 'alias ll=exa --group-directories-first -lagF --git --time-style=long-iso '
	exa --group-directories-first -lagF --git --time-style=long-iso  $argv;
end
