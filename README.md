# GenisysPro Install Script for Windows
This is a Windows PowerShell script which makes installing GenisysPro on Windows very easy.

## Using this script
1. Download `Windows-Installer.ps1` to the folder where you want to install GenisysPro.

2. Right-click on `Windows-Installer.ps1`, then select `Run with PowerShell`.
  !["Run with PowerShell" option](https://user-images.githubusercontent.com/14175175/28659691-f07d7696-72e2-11e7-9427-a564db7b2acc.png)

3. If you get a prompt asking you to change the execution policy, please enter `Y` for `Yes` to continue running the script.
  !["Execution Policy Change" prompt](https://user-images.githubusercontent.com/14175175/28659978-d75f6146-72e3-11e7-83e5-6dbce999c5af.PNG)

4. GenisysPro install script will start downloading and extracting necessary files.

5. Visual C++ Redistributable for Visual Studio 2015, a necessary component to make GenisysPro run, requires Administrator privileges to be installed. When you are instructed to select `Yes` in User Account Control, please do so.
  ![GenisysPro install script prompt on User Account Control](https://user-images.githubusercontent.com/14175175/28660523-d6f54bce-72e5-11e7-8cb1-e3505bcd1bb4.png)

6. GenisysPro install script will continue installation and clean-up. Once the installer tells you that you can start your server, installation completes. Enjoy!
