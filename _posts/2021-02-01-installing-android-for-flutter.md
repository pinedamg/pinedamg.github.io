---
layout: post
title:  "Installing Android Studio For Flutter in PopOs!"
date:   2021-02-01 08:35:45 -0600
categories: android flutter popos
---

Prerequisites:
- Oracle JDK

1. Clone flutter from Github
2. Download and install Android ZIP
3. Install Oracle JDK download from https://www.oracle.com/technetwork/java/javase/downloads/jdk11-downloads-5066655.html
4. https://www.fosslinux.com/41519/how-to-install-java-on-pop_os.htm
5. Install SDK (android device) into Android Studio at least 2 type (30 a 29 for example)
6. Install Flutter Plugin into Android Studio
7. Run 'flutter doctor'
8. flutter config --android-studio-dir="/home/mpineda/Work/softwares/android-studio"
9. flutter config --android-sdk="/home/mpineda/Android/Sdk"
10. flutter doctor --android-licenses
11. Done!, It should looks like as below

```
$ flutter config
......
  android-studio-dir: /home/mpineda/Work/softwares/android-studio
  android-sdk: /home/mpineda/Android/Sdk
```

```
$ flutter doctor                   
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel master, 1.26.0-18.0.pre.75, on Linux, locale en_US.UTF-8)
[✓] Android toolchain - develop for Android devices (Android SDK version 30.0.3)
[✓] Chrome - develop for the web
[✓] Android Studio
[✓] VS Code (version 1.52.1)
[✓] Connected device (1 available)

• No issues found!
````
