
#!/bin/bash
#Red 0;31    #Orange 0;33   #lightgreen 1;32     #yellow 1;33 


RED='\033[1;31m'
brown='\033[0;33m'
Green='\033[1;32m'
White='\033[1;37m'
fiveminutes=$((5*60))
i=1
sp="                           "
prox="--proxy 127.0.0.1:8080" #Testing purpose
l="\n----------------------------------------------------------------------------------------\n"

#Request Headers & pars
url="https://m.facebook.com/password/reauth/?next=https%3A%2F%2Fm.facebook.com%2Fentercode.php"
pass=""
dtsg=""
postdata="charset_test=%E2%82%AC%2C%C2%B4%2C%E2%82%AC%2C%C2%B4%2C%E6%B0%B4%2C%D0%94%2C%D0%84&save=Continue"
cok=""
cookie=""
UserAgent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:47.0) Gecko/20100101 Firefox/47.0"
Accept="Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
AcceptLanguage="Accept-Language: en-US,en;q=0.5"
AcceptEncoding="Accept-Encoding: gzip, deflate, br"
Referer="Referer: https://m.facebook.com/password/reauth/?next=https%3A%2F%2Fm.facebook.com%2Fentercode.php%3Fcp%3Dadmin%2540google.com%26refid%3D74&_rdr"

 
clear
echo -e 	"${RED}"
echo -e 	"|------------------------------------------------------------|"
echo -e 	"|------------------------------------------------------------|${White}"
echo -e 	"|------------    Facebook Authenticator 2016  ---------------|"
echo -e 	"|------------                By               ---------------|"
echo -e 	"|------------            @YasserGersy         ---------------|${RED}"
echo -e 	"|------------------------------------------------------------|"
echo -e 	"|------------------------------------------------------------|${Green}"

echo "\n This script sends POST request to facebook to reauth your current session , every five minutes \n"


#prompt fb cookie
echo -e "${l}Paste your facebook Cookie here"
read -p ">" cok 
cookie=${cok//[[:blank:]]/} #removing spaces

#prompt  CSTF token
echo -e "${l}Paste valid facebook fb_dtsg here"
read -p ">" dtsg 
dtsg=${dtsg//[[:blank:]/}
postdata="$postdata &fb_dtsg=$dtsg &pass="


#prompt fb password
echo -e "${l}Paste  facebook password here "
read -p ">" pass 
postdata="$postdata &pass"



echo -e "${White}${l}$(date)"
echo -e "${sp}Started  ";
for n in {0..10000} 
do
    
   echo -e " \n${brown}${l}";date   
   echo -e "${White} ${sp} Sending Request ( $i )   ${Green} "
   
   curl -i  --url  $url -A "$user-Agent" --data "$postdata"  -H "$Accept" -H "$AcceptLanguage" -H "$AcceptEncoding" -H "$Referer" --cookie "$cookie" -o gersy.txt
   echo -e ${White};echo $(sed -n "1p" "gersy.txt");echo  $(sed -n "2p" "gersy.txt")
   i=$((i+1))
   sleep $fiveminutes
done


echo "______________Done______________"
