USER=$1
PASS=$2
KEY=$3
APP=$4
IP=`hostname -i`
localip=`hostname -i | cut --delimiter='.' -f -3`

mkdir -p /srv/ 
cd /srv
/bin/wget https://totalcaeapplications.blob.core.windows.net/applications/chef-repo.gpg
echo ${KEY} |  gpg --batch --output chef.tar --passphrase-fd O  --decrypt chef-repo.gpg
tar xfv chef.tar
cd chef-repo
./setup.sh

