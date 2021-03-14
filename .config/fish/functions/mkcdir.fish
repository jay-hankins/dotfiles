function mkcdir --description "Make a new directory and change into it"
  mkdir -p $argv; and cd $argv
end

