#!/bin/bash

echo "
   AA      NN      NN     GGGGG     EEEEEEE  LL
 AA  AA    NN NN   NN    GG    GG   EE       LL
AA    AA   NN  NN  NN   GG          EE       LL
AAAAAAAA   NN   NN NN   GG   GGGG   EEEEEEE  LL
AA    AA   NN      NN    GG    GG   EE       LL
AA    AA   NN      NN     GGGGG     EEEEEEE  LLLLLL

SSSSSS   IIII   NN      NN    GGGGGG     HH   HH 
SS        II    NN NN   NN   GG          HH   HH 
SSSSSS    II    NN  NN  NN   GG  GGGG    HHHHHHH 
     SS   II    NN   NN NN   GG    GG    HH   HH 
SSSSSS   IIII   NN      NN     GGGGG     HH   HH 



"

if [[ $EUID -eq 0 ]]; then
    # Download Burp Suite Profesional Latet Version
    echo 'Downloading Burp Suite Professional v2022.8.2 ....'
    Link="https://portswigger-cdn.net/burp/releases/download?product=pro&version=2022.8.2&type=jar"
    wget "$Link" -O Burp_Suite_Pro.jar --quiet --show-progress
    sleep 2

    # execute Keygenerator
    echo 'Starting Keygenerator'
    (java -jar keygen.jar) &
    sleep 3s
    
    # Execute Burp Suite Professional with Keyloader
    echo 'Executing Burp Suite Professional with Keyloader'
    echo "java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:$(pwd)/loader.jar -noverify -jar $(pwd)/Burp_Suite_Pro.jar &" > burp
    chmod +x burp
    cp burp /bin/burp 
    (./burp)
else
    echo "Execute Command as Root User"
    exit
fi

# Lets Download the latest Burp Suite Professional jar File
echo "`n`t 1. Please download latest Burp Suite Professional Jar file from :-:"
echo "`n`t https://portswigger.net/burp/releases/startdownload?product=pro&version=&type=Jar"
echo "`n`t 2. Replace the existing Burp-Suite-Pro.jar file with downloaded jar file. `n`t Keep previous file name"
