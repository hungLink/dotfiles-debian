function grep-history --wraps='history | grep' --description 'alias grep-history=history | grep'
  history | grep $argv; 
end
