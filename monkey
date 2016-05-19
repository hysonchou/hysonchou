问题：
  adb devices 显示设备list of devices attached是空的
解决一：
  进入到这个目录：D:\adt-bundle-windows-x86_64-20140702\sdk\platform-tools
  cmd 指令：adb-killserver
            adb-startserver
问题：
   查看Android应用包名package和入口activity名称
使用android自动化测试工具monkeyrunner启动应用时，需要填写被测程序的包名和启动的Activity，以下有两种查看应用包名package和入口activity名称的方法：
方法一：使用aapt    //aapt是sdk自带的一个工具，在sdk\builds-tools\目录下
1.以ES文件浏览器为例，命令行中切换到aapt.exe目录执行：aapt dump badging E:\apk\es3.apk
2.运行后的结果中以下两行分别是应用包名package和入口activity名称
package: name=’com.estrongs.android.pop’
launchable-activity: name=’com.estrongs.android.pop.view.FileExplorerActivity’
注：在android sdk目录搜索可以找到aapt.exe，如果没有可以下载apktool。
 
方法二：查看AndroidManifest.xml
1.使用apktool反编译app：apktool.bat d es3.apk E:\apk\es
2.打开AndroidManifest.xml
manifest节点的package属性值是应用的包名：
查找android.intent.action.MAIN和android.intent.category.LAUNCHER对应的activity，该activity对应的android:name属性既是入口activity名称，如下：
tyle/Theme.NoTitleBar” android:label=”@string/app_name” android:name=”com.estrongs.android.pop.view.FileExplorerActivity”>




android.intent.action.MAIN决定应用程序最先启动的Activity
android.intent.category.LAUNCHER决定应用程序是否显示在程序列表里
