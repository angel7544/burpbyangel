##################################** Prequisites **#############################################



	**Download .jar file for Burp Suite Pro from**
		--> https://portswigger.net/burp/releases/download?product=pro&version=&type=Jar

	**Download Burp Loader files. Then Follow Below Steps for Activation**

		--> https://github.com/SNGWN/Burp-Loader/archive/main.zip

	**If using in Windows 10, Download and Install Java and JDK**

		**For Java** --> https://javadl.oracle.com/webapps/download/AutoDL?BundleId=244068_89d678f2be164786b292527658ca1605

		**For JDK**  --> https://www.oracle.com/in/java/technologies/javase-jdk15-downloads.html



################################** Execution and Activation **################################

	

	**1. Place all files in 1 folder**

		For Example lets take as --> C:\Users\Siddharth\Downloads\burp-suite\

	----------------------------------------------

	**2.1 Run This Command for Windows in CMD Prompt.**

		java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:"C:\Users\siddh\Downloads\burp-suite\loader.jar" -noverify -jar "C:\Users\Siddharth\Downloads\burp-suite\burpsuite_pro_v2021.2.1.jar"

	**2.2 Run this command for Linux in Terminal. Suppose Your files are in /home/Siddharth/Downloads/burp-suite/**

		java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:/home/Siddharth/Downloads/burp-suite/loader.jar -noverify -jar /home/Siddharth/Downloads/burp-suite/burpsuite_pro_v2021.2.1.jar &

	----------------------------------------------

	**3. Use keygen.jar to generate the License key**

		java -jar keygen.jar

	----------------------------------------------

	**4. Activate Burp Suite Pro**

		1. Modify License String like "license to Siddharth"

		2. Copy License key from keygen.jar and paste in Burp Suite Pro and click Next.

		3. Select Manual Activation Option on your bottom Right in Burp Suite Pro.

		4. Copy License Request from BurpSuite_Pro and paste in keygen.jar

		5. Copy license response from keygen.jar and paste in BurpSuite_Pro, and next and Done

	----------------------------------------------

	**5.1 For Windows Follow These Steps**

		1. Open Notepad and Paste command at 2.1 and save the file with name burp.bat in C:\Users\Siddharth\Downloads\burp-suite\   Folder.

		2. Open another Notepad and Paste below command and save it with burp.VBS extension in Desktop.

			Set WshShell = CreateObject("WScript.Shell")

			WshShell.Run chr(34) & "C:\Users\Siddharth\Downloads\burp-suite\burp.bat" & Chr(34), 0

			Set WshShell = Nothing

	**5.2 For Linux Follow these Steps**

		1. With Sudo Permissions, Create a file with command "gedit /bin/burp"

		2. Paste command in text editor "java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:/home/Siddharth/Downloads/burp-suite/loader.jar -noverify -jar /home/Siddharth/Downloads/burp-suite/burpsuite_pro_v2021.2.1.jar &"

		3. Change Permissions for files with command "chmod +x /bin/burp"

	----------------------------------------------

	**6.1 For Executing Burp in Windows, Double Click on burp.VBS file.**

	**6.2 For Executing Burp in Linux, Write burp in Terminal and press Enter.**
