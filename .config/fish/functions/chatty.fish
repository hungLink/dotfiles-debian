function chatty --wraps='nohup /usr/local/opt/openjdk@17/bin/java -jar /Users/alopez/repos-personal/Chatty_0.17/Chatty.jar > /dev/null &' --description 'alias chatty=nohup /usr/local/opt/openjdk@17/bin/java -jar /Users/alopez/repos-personal/Chatty_0.17/Chatty.jar > /dev/null &'
  nohup /usr/local/opt/openjdk@17/bin/java -jar /Users/alopez/repos-personal/Chatty_0.17/Chatty.jar > /dev/null & $argv; 
end
