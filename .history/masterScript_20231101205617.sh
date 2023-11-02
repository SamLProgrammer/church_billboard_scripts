#!/bin/bash
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <git_username> <git_token> <sql_user> <sql_password>"
    exit 1
fi

# Parameters
git_username="$1"
git_token="$2"
sql_user="$3"
sql_password="$4"
TARGET_DIRECTORY="/home/SamLProgrammer/church_billboard/initial_scripts"

#git installation
sudo apt-get update
sudo apt-get -y install git

#folders structure initialization
mkdir -p /home/SamLProgrammer/church_billboard/initial_scripts
mkdir -p /home/SamLProgrammer/church_billboard/back
mkdir -p /home/SamLProgrammer/church_billboard/mysql
mkdir -p /home/SamLProgrammer/church_billboard/front

#downloading repo (using provided token)
REPO_URL="https://SamLProgrammer:${git_token}@github.com/SamLProgrammer/ABST-VPS-Initial-Installation-Bashes.git"
echo "*************************************************************************"
echo "$REPO_URL"
echo "*************************************************************************"
cd "$TARGET_DIRECTORY"
git clone $REPO_URL

#relocating current script directory
# cd /home/SamLProgrammer/church_billboard/initial_scripts/ABST-VPS-Initial-Installation-Bashes

#giving executable permissions to scripts

# sudo chmod +x installNode.sh
# sudo chmod +x installMySQL.sh
# sudo chmod +x createMySQLDB.sh
# sudo chmod +x cloneNodeServer.sh
# sudo chmod +x setupMySQLUser.sh
# sudo chmod +x cloneNodeServerRefresher.sh
# sudo chmod +x launchNodeServer.sh
# sudo chmod +x launchNodeServerRefresher.sh
# sudo chmod +x cloneReactApp.sh
# sudo chmod +x buildReactApp.sh
# sudo chmod +x cloneReactServer.sh
# sudo chmod +x launchReactServer.sh
# sudo chmod +x resetDatabase.sh
# sudo chmod 600 VPSMySQL.cnf

#Install and Clone scripts
# ./installNode.sh> script_node.log
# ./installMySQL.sh > script_mysql.log
# ./setupMySQLUser.sh > setupMySQLUser.log
# ./cloneNodeServer.sh "$git_token" > cloneNodeServer.log
# ./cloneNodeServerRefresher.sh "$git_token" > cloneNodeServerRefresher.log


# sudo chmod +x /home/SamLProgrammer/church_billboard/custom_connector/MySQLConnectorRefreshListener/scripts/refresh_mysql_connector_server.sh
# mv /home/SamLProgrammer/church_billboard/initial_scripts/ABST-VPS-Initial-Installation-Bashes/createMySQLDB.sh /home/SamLProgrammer/church_billboard/mysql
# mv /home/SamLProgrammer/church_billboard/initial_scripts/ABST-VPS-Initial-Installation-Bashes/VPSMySQL.cnf /home/SamLProgrammer/church_billboard/mysql
# mv /home/SamLProgrammer/church_billboard/initial_scripts/ABST-VPS-Initial-Installation-Bashes/setupMySQLUser.sh /home/SamLProgrammer/church_billboard/mysql
# mv /home/SamLProgrammer/church_billboard/initial_scripts/ABST-VPS-Initial-Installation-Bashes/resetDatabase.sh /home/SamLProgrammer/church_billboard/mysql

#Launch Scripts
# ./launchNodeServer.sh > launchNodeServer.log &
# ./launchNodeServerRefresher.sh > launchNodeServerRefresher.log &
# ./cloneReactApp.sh "$git_token"> cloneReactApp.log
# ./buildReactApp.sh > buildReactApp.log &
# ./cloneReactServer.sh "$git_token"> cloneReactServer.log
# ./launchReactServer.sh > launchReactServer.log

# rm -rf /home/masterScript.sh

echo "======================================================="
echo "Initial Setup Is Ready"
echo "======================================================="
