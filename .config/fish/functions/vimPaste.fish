function vimPaste --wraps=v\ +\'normal\ \"\*p\'ggdd --description alias\ vimPaste=v\ +\'normal\ \"\*p\'ggdd
  v +'normal "*p'ggdd $argv; 
end
