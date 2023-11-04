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
mkdir -p /home/SamLProgrammer/church_billboard/devops

#downloading repo (using provided token)
REPO_URL="https://SamLProgrammer:${git_token}@github.com/SamLProgrammer/church_billboard_scripts.git"
echo "*************************************************************************"
echo "$REPO_URL"
echo "*************************************************************************"
cd "$TARGET_DIRECTORY"
git clone $REPO_URL

#relocating current script directory
cd /home/SamLProgrammer/church_billboard/initial_scripts/church_billboard_scripts

#giving executable permissions to scripts
sudo chmod +x envVarsSetup.sh
sudo chmod +x gitTokenSetup.sh
sudo chmod +x installMySQL.sh
sudo chmod +x MySQLUserSetup.sh
sudo chmod +x MySQLUserSetup.sh
sudo chmod +x initDatabase.sh
sudo chmod +x installJDK17.sh
sudo chmod +x cloneBackServer.sh
sudo chmod +x launchBackServer.sh
sudo chmod +x cloneRefresher.sh
sudo chmod +x launchRefresher.sh
sudo chmod +x cloneFrontApp.sh
sudo chmod +x cloneFrontServer.sh
sudo chmod 600 VPSMySQL.cnf

#Setup Security
echo "======================================================="
echo "Setting up ENV "
echo "======================================================="
./envVarsSetup.sh "$sql_user" "$sql_password" > envVarsSetup.log
echo "======================================================="
echo "Setting up Token ..."
echo "======================================================="
./gitTokenSetup.sh "$git_username" "$git_token" > gitTokenSetup.log
echo "======================================================="
echo "Setting up MySQL ..."
echo "======================================================="
./installMySQL.sh > installMySQL.log
echo "======================================================="
echo "Setting up MySQL User ..."
echo "======================================================="
sudo ./MySQLUserSetup.sh > MySQLUserSetup.log
echo "======================================================="
echo "Setting up Data Base ..."
echo "======================================================="
sudo ./initDatabase.sh > initDatabase.log
echo "======================================================="
echo "Setting up Java ..."
echo "======================================================="
./installJDK17.sh > installJDK17.log
echo "======================================================="
echo "Setting up Back Server ..."
echo "======================================================="
./cloneBackServer.sh > cloneBackServer.log
echo "======================================================="
echo "Launching up Back Server ..."
echo "======================================================="
./launchBackServer.sh > launchBackServer.log &
echo "======================================================="
echo "Clonning Refresher"
echo "======================================================="
./cloneRefresher.sh > cloneRefresher.log 
echo "======================================================="
echo "Launching Refresher"
echo "======================================================="
./launchRefresher.sh > launchRefresher.log &
echo "======================================================="
echo "Clonning Front APP"
echo "======================================================="
./cloneFrontApp.sh > cloneFrontApp.log
echo "======================================================="
echo "Launching Front Server"
echo "======================================================="
./cloneFrontServer.sh > cloneFrontServer.log &


#Install and Clone scripts
# ./installNode.sh> script_node.log
# ./installMySQL.sh > script_mysql.log
# ./setupMySQLUser.sh > setupMySQLUser.log
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
