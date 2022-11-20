function deleteScreenshots --wraps=shred\ -u\ /Users/alopez/Desktop/Screen\\\ Shot\\\ \* --description alias\ deleteScreenshots=shred\ -u\ /Users/alopez/Desktop/Screen\\\ Shot\\\ \*
  shred -u /Users/alopez/Desktop/Screen\ Shot\ * $argv; 
end
