# Defined via `source`
function kc --wraps=kubectl --description 'alias kc=kubectl'
  kubectl $argv; 
end
