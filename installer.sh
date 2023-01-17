#!/bin/sh
# ###########################################
# SCRIPT : DOWNLOAD AND INSTALL PLUGIN JEDIMAKERXTREAM  #
# ###########################################
##setup command=wget https://raw.githubusercontent.com/emil237/jedimakerxtream/main/installer.sh -qO - | /bin/sh
#
# ###########################################
echo "***********************************************************************************************************************"
# Config script #
TMPDIR='/tmp'
VERSION='6.20'
MY_URL='https://raw.githubusercontent.com/emil237/jedimakerxtream/main'
MY_IPK="enigma2-plugin-extensions-jedimakerxtream_6.21_all.ipk"
MY_DEB="enigma2-plugin-extensions-jedimakerxtream_6.21_all.deb"
####################
MY_EM='============================================================================================================'
#  Remove Old Plugin  #

echo "   >>>>   Remove old version   "

rm -r /usr/lib/enigma2/python/Plugins/Extensions/JediMakerXtream

#################################
    
###################
echo "============================================================================================================================"
 echo " DOWNLOAD AND INSTALL PLUGIN "

echo "   Install Plugin please wait "
cd /tmp 
set -e
if which dpkg > /dev/null 2>&1;
wait
rm -f /tmp/$MY_DEB then
wget "$MY_URL/$MY_IPK"
 wait
		dpkg -i --force-overwrite $MY_DEB; apt-get install -f -y
	else
wget "$MY_URL/$MY_DEB"
		opkg install --force-overwrite $MY_IPK
wait
rm -f /tmp/$MY_IPK
	fi
echo "================================="
set +e
cd ..
wait
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL " 
sleep 4;
echo "  Develop by : KiddaC "                            
echo "$MY_EM"
###################                                                                                                                  
echo " your Device will RESTART Now " 
echo "**********************************************************************************"
wait
init 4
init 3
exit 0




























