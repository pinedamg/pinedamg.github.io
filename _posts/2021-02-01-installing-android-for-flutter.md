---
layout: post
title:  "Installing Android Studio For Flutter in PopOs!"
date:   2021-02-01 08:35:45 -0600
categories: android flutter popos
---

1. Clone flutter from Github
2. Download and install Android ZIP
3. Install SDK (android device) into Android Studio
4. Install Flutter Plugin into Android Studio
5. Run 'flutter doctor'
6. flutter config --android-studio-dir="/snap/android-studio/current/android-studio"
7. flutter doctor --android-licenses
8. Done!, It should look like below

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
