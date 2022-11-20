tfv() {
  echo "Installed Terraform versions:"
  echo "---"
  CURRENT_VERSION=$(basename $(readlink /usr/local/bin/terraform))
  for f in $(ls -1 /usr/local/bin/terraform_*)
  do
    THIS=$(basename ${f})
    V=${THIS#"terraform_"}
    if [[ ${THIS} == ${CURRENT_VERSION} ]];
    then
      printf "${V}*\n"
    else
      printf "${V}\n"
    fi
  done
}

tswap() {
  rm -f /usr/local/bin/terraform
  ln -s /usr/local/bin/terraform_${1} /usr/local/bin/terraform
  echo "/usr/local/bin/terraform now set to $( readlink /usr/local/bin/terraform )"
}

