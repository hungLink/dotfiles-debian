function sodo --wraps='pass show sudo | sudo' --description 'alias sodo=pass show sudo | sudo'
  pass show sudo | sudo $argv; 
end
