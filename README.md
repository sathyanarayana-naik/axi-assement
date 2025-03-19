Pre-requistes:

Step 1: install .NET SDK 8.0

step 2: install docker desktopURL : http://localhost:8080/time ; http://127.0.0.1:8080/time

![image](https://github.com/user-attachments/assets/61b845ef-47ef-40df-ae98-aa75514ce0eb)


step 3: run ./deploy.ps1 from terminal

![image](https://github.com/user-attachments/assets/5b331e43-a2f5-40b6-b21d-9d7e10e4e662)

note: 1. add this line in program.cs **webBuilder.UseUrls("http://0.0.0.0:5000");** --> allows ASP.NET Core application to listen for incoming HTTP requests, exposing port 5000 
      2. in timecontrollertesr.cs file "Assert.That(false, Is.EqualTo(false), "oops!");" make it as true to false, it expects false respone otherwise test case will fail.
      3, pls update  <TargetFramework>net3.1</TargetFramework> change this net3.1 to net8.0 since we instaled .NET SDK 8.0 update wherever needed.
