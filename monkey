问题：
  adb devices 显示设备list of devices attached是空的
解决一：
  进入到这个目录：D:\adt-bundle-windows-x86_64-20140702\sdk\platform-tools
  cmd 指令：adb-killserver
            adb-startserver
