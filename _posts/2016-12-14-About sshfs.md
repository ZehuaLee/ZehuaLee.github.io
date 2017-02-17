---
category: sshfs
title: 'About Building SSHFS on Mac/Linux'

---

## What is sshfs？

sshfs 是通过利用ssh建立一个到远程服务器的一个安全访问来在本地构建的一个虚拟文件系统。可以方便的实现在把远程服务器端的内容映射到本地的文件系统。
在linux 环境中，正常访问远程服务器的时候，通常是通过ssh安全访问的。但是ssh通过terminal的界面看服务器的内容真的很苦手，同时在terminal上的编辑器无非就是emacs，vim，就算用一堆插件堆砌也还是没有鼠标的。远没有使用sublime或是Atom等集成编辑工具方便。这样的话。 这时候，sshfs就是解决这个问题的最好工具。具体来说，就是把服务器端的远程目录挂载到本地，可以视为一个用ssh连接的远程硬盘。这时它就相当于本地的一个文件而已，操作就不用只通过terminal了。

## How to build the sshfs?

如果是Mac，有现成的安装包程序dmg包：
[传送门][id1]
[id1]: https://code.google.com/archive/p/macfuse/downloads
然后新建一个目录remote，在配置时将远程目录挂载到本地的新建的remote上，这样这个remote里的内容就是被挂载的远程目录的内容。

## Related problem?

目前我遇到的问题，就在于网络不稳定时连接中断后，再次在命令行使用挂载命令：```sshfs -C -o reconnect -p 22 sshID@Server.a.b.cn:/远程的/目录 /本地的/目录```

这时候会出现：```mount_osxfusefs: mount point /Users/ritakuka/klab_gem5 is itself on a OSXFUSE volume
```
或是其他挂载不上的问题，这时候就需要把sshfs的进程杀掉：``` ps aux | grep sshfs #get the process id
    kill PID
```
找出sshfs进程号并杀掉该进程，然后重新

```sshfs -C -o reconnect -p 22 sshID@Server.a.b.cn:/远程的/目录 /本地的/目录
```
目前来看可以解决。
