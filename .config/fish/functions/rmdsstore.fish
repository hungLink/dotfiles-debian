function rmdsstore --wraps=find\ .\ -name\ \'.DS_Store\'\ -type\ f\ -delete --description alias\ rmdsstore=find\ .\ -name\ \'.DS_Store\'\ -type\ f\ -delete
  find . -name '.DS_Store' -type f -delete $argv; 
end
