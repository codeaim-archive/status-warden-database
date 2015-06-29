# Set and persist enviroment variables

export DATABASE_PORT=$1 && echo "export DATABASE_PORT=$DATABASE_PORT" >> ~/.profile
export ENVIRONMENT=$2 && echo "export ENVIRONMENT=$ENVIRONMENT" >> ~/.profile

# Install MongoDb

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

# Start MongoDb

sudo mkdir -p /data/db /log /journal
sudo chown -R mongodb:mongodb /data/db /log /journal

sudo cp /vagrant/mongod.conf /etc/mongod.conf
sudo -- sh -c "echo '\nport = $DATABASE_PORT' >> /etc/mongod.conf"
sudo service mongod restart


