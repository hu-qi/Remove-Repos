#!/bin/bash

env_file=$(pwd)/.env

function GetKey(){  
    section=$(echo $1 | cut -d '.' -f 1)  
    key=$(echo $1 | cut -d '.' -f 2)  
    sed -n "/\[$section\]/,/\[.*\]/{  
     /^\[.*\]/d  
     /^[ \t]*$/d  
     /^$/d  
     /^#.*$/d  
     s/^[ \t]*$key[ \t]*=[ \t]*\(.*\)[ \t]*/\1/p  
    }" $env_file  
}  
  
token=$(GetKey "server.token")  
username=$(GetKey "server.username")
type=$(GetKey "server.reop_type")
sort=$(GetKey "server.repo_sort")
echo '===============Start================'

let i=1
while [ $i -lt 10 ]; do
  curl -s -H "Authorization: token $token" \
       -H "Accept: application/vnd.github.v3+json" \
       "https://api.github.com/user/repos?&page=$i&per_page=100&type=$type&sort=$sort" | grep -w clone_url | grep -o '[^"]\+://.\+.git'  >> repos.txt
  let i=$i+1
done

echo $(wc -l 'repos.txt')
echo '===============end=================='
