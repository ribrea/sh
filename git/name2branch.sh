name=$1
name=$(echo $name | tr '[:upper:]' '[:lower:]')
name=$(echo $name | sed -e "s/ /_/g")
cuname=$2
cuname=$(echo $cuname | sed -e "s/CU-//g")
echo "${name}_#${cuname}"
