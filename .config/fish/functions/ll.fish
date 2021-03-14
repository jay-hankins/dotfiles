# Defined via `source`
function ll --wraps='exa --group-directories-first -lagF --git --time-style=long-iso  ;' --description 'alias ll=exa --group-directories-first -lagF --git --time-style=long-iso  ;'
  exa --group-directories-first -lagF --git --time-style=long-iso  ; $argv; 
end
