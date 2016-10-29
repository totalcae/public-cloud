export USER=$1
export PASS=$2
export KEY=$3
export APP=$4
export NODEPREFIX=$5
export INSTANCE_COUNT=$6

IP=`hostname -i`
localip=`hostname -i | cut --delimiter='.' -f -3`

mkdir -p /srv/ 
cd /srv
/bin/wget https://totalcaeapplications.blob.core.windows.net/applications/chef-repo.tar.gpg
echo ${KEY} |  gpg --batch --output chef-repo.tar --passphrase-fd O  --decrypt chef-repo.tar.gpg
tar xfv chef-repo.tar
cd chef-repo
./make-head.sh 

