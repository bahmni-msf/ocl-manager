#!/bin/bash

CT="Content-Type:application/json"
AUTH="Authorization: Token xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
OCL_API_HOST="http://localhost:8000"
org="@org.json"
source="@source.json"

echo "Create an Organization.."
CREATE_ORG=`curl -s -H "${AUTH}" ${OCL_API_HOST}/orgs/ -X POST -H "${CT}" -d $org`
echo ${CREATE_ORG}
echo "_____________________________________"

echo "Create a Source.."
CREATE_SOURCE=`curl -s -H "${AUTH}" ${OCL_API_HOST}/orgs/MSF/sources/ -X POST -H "${CT}" -d $source`
echo ${CREATE_SOURCE}
echo "_____________________________________"

echo "Create Users.."
exec < ./users.txt
while read user; do
   echo "Create user -  ${user}"
   CREATE_USER=`curl -s -H "${AUTH}" ${OCL_API_HOST}/users/ -X POST -H "${CT}" -d "{ \"username\":\"${user}\",\"email\":\"test@test.com\",\"name\":\"${user}\"}"`
   echo ${CREATE_USER}
   echo "Add user - ${user} as a member of MSF organization"
   ADD_USER=`curl -s -H "${AUTH}" ${OCL_API_HOST}/orgs/MSF/members/${user}/ -X PUT`
   echo ${ADD_USER}
   echo "_____________________________________"
done
