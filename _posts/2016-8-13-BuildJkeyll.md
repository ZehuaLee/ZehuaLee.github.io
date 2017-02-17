---

title: '在Mac上部署jekyll'

---


### 下载安装jekyll

* 从这个网站http://jekyllcn.com/获取安装，安装步骤仅仅三步。
* 完美支持Linux,Mac，对于windows也可使用，但较繁琐，本文不涉及。
* 方便在github上部署自己的blog，不需要构建自己的服务器域名等。

### 步骤
* 建立一个文件夹存放博客，对这个文件夹进行git初始化
```git init
```
* 寻找合适的blog主题，直接百度搜索  ```Jekyll Theme``` 传送门：http://jekyllthemes.org/
* git 一套，在已经git init后的文件夹里
```git clone XXX
```
(XXX 就是你喜欢的那个主题)

* 传送门：http://jekyllcn.com/ 中文版教程让你速成Jekyll，包括本地部署jekyll服务来测试以及jekyll网站的结构。
* 在 "_posts" 中记录博文的markdown格式的博客。命名方法遵守YY－MM－DD－XXXX的格式。

* 通过git同步到github远程库，https://github.com/username/username.github.io 。

等几分钟，github会自动渲染，几分钟后直接访问https://username.github.io 即可。
