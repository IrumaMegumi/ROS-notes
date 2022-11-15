# 1 ROS系统的介绍和安装
## 1.1 ROS系统介绍

ROS是Robot Operating System的缩写，常常用于机器人的自动化控制、运动仿真等。虽然叫做Operating System，但是实际上是用于机器人操作的工作库集合，但是这些库具有相对完备的系统体系，目前支持C++、Python、Java、Matlab等多种语言和软件接口，但我查到的最多资料基本全部为Python接口或C++移植口。Matlab由于自带Simulink功能，因此几乎查不到使用Matlab运行ROS的资料。

ROS1系统对于操作系统的环境不是很友好，目前只支持在Linux环境下部署，但是ROS2则改进了此问题，目前ROS2支持Linux、Windows、Mac等市场上大多数操作系统，也支持RTOS嵌入式操作系统。

## 1.2 ROS系统的安装

此部分是全程在Ubuntu系统下进行安装的。如果大家有对Linux不熟悉的，可以参考1.3部分，有对相关操作的基本介绍。

下面说明具体的安装步骤。（这个是ROS2的，ROS1的教程很多，这里暂时略过，如果后续需要，我会更新）
<ol>
    <li>设置编码<br>
    <code>
    sudo apt update && sudo apt insall locales
    </code>
    <br>
    <code>
    sudo locale-gen en_US en_US.UTF-8
    </code>
    <br>
    <code>
    sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
    </code>
    <br>
    <code>
    export LANG=en_US.UTF-8
    </code>
    <br>
    上面的操作中，我们通过命令行设置了ROS安装所需要的语言支持、编码支持等。
    <li>添加源<br>
    <code>
    sudo apt update && sudo apt install curl gnupg lsb-release
    </code>
    <br>
    <br>
    <code>
    sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
    </code>
    <br>
    <br>
    <code>
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
    </code>
    <br>
    此处由于我们直接访问了ROS官网的链接，因此可能会报错<strong>“拒绝连接”</strong>或<strong>"Failed to connect"</strong>。此时我们需要修改Ubuntu系统中的文件/etc/hosts，使其可以访问。由于该文件为只读文件，因此修改时需要更改权限使其可写。这里我使用了如下方法：
    <br>
    <code>
    su root
    </code>
    进入root权限（否则会报错权限不够）。
    <br>
    <code>
    chomd 777 /etc/hosts
    </code>
    <br>
    将其权限改为可写。
    然后找到对应文件，打开后会发现上面有一排IP地址，在下面加入如下内容：
    <br>
    <code>
    185.199.108.133 raw.githubusercontent.com
    </code>
    <br>
    即可修正此问题。
    <br>
    <li>安装ROS2
    <br>
    目前经过我安装的测试，Ubuntu 22.04好像只能安装ROS2，不知道为什么。所以这里就用ROS2演示了。（ROS1在这一步是没有区别的）
    <br>
    <code>
    sudo ap update
    </code>
    <br>
    <code>
    sudo apt upgrade
    </code>
    <br>
    <code>
    sudo apt install ros-humble-desktop
    </code>
    <br>
    等待大约10分钟后，即可完成ROS的安装。
    <br>
    <li>设置环境变量
    <br>
    <code>
    source /opt/ros/humble/setup.bash
    </code>
    <br>
    <code>
    echo " source /opt/ros/humble/setup.bash" >> ~/.bashrc
    </code>
    <br>
    此时ROS的安装就彻底完成啦。
    <br>
    <li>ROS2的测试——第一个小乌龟例程
    <br>
    使用<code>ctrl+ALT+T</code>打开终端，输入如下内容：
    <br>
    <code>
    ros2 run turtlesim turtlesim_node
    </code>
    <br>
    此时你的屏幕会出现一个蓝色的对话框，里面是一只小海龟。不要关掉此终端，再次打开一个终端，输入命令：
    <br>
    <code>
    ros2 run turtlesim turtle_teleop_key
    </code>
    <br>
    你就可以控制你的小海龟移动了。但是注意，此时你的界面和鼠标选中的终端应为第二个终端，否则键盘会失灵。
</ol>

## 1.3 关于ROS1和ROS2及其安装的注意事项

ROS系统有很多的种类，但是不同于其他软件的是，一套ROS系统只能适配一个版本的Ubuntu。下面表格展示了其适配情况:

| Ubuntu版本 | 适配ROS|  ROS1还是ROS2
| --- | ----------- |--------|
| 16.04 | kinetic |ROS1|
| 18.04 | Melodic |ROS1|
|20.04|Noetic|ROS1|
|20.04|foxy|ROS2|
|22.04|humble|ROS2|

因此，如果你没有按照上表下载对应版本的ROS，将会出现无法定位软件包、运行异常等问题。如果你想要两个都学，那么建议下载Ubuntu20.04。如果你想要只学ROS1，推荐使用Ubuntu16.04，如果想要只学ROS2,建议使用Ubuntu22.04。

ROS系统每2年出一个版本，和Ubuntu同步。但是其维护周期非常短，一个版本的ROS只有5年的维护期。所以，目前很多书上常用的kinetic、Melodic都马上就要寿终正寝了，但是其提供的API等都非常稳定，因此学习时可以采用下面的版本。但是从发展趋势来看，Noetic已经是ROS1的最后一个版本了，到2025年就停止更新，因此现在是ROS1和ROS2的交叉期。大多数基于ROS1的算法也在缓慢向ROS2转型，但是由于目前学习资料很少，因此很多库还没转型完成。
 
ROS1和ROS2虽然都是机器人操作系统，但是二者也有很多的区别。比如，在工作空间的编译方面，ROS1采用的是catkin编译，而ROS2采用的是colcon编译，创建的方法也不同，而且二者好像无法互通。在设计概念上，ROS1和ROS2也采用的是2种不同的架构进行设计。比如，ROS2除了主节点的概念，通信采用DDS作为核心，支持多机器人通信等。

关于学习的路线，笔者建议，初学者首先借助虚拟机/Docker学习ROS1相关知识，有了基础以后再学习ROS2。目前ROS2的资料除了官网，几乎没有。因此我也在尽力进行相关摸索和整理。

## 1.4 Linux相关的基本操作

考虑到ROS是在Linux系统下运行的，因此我增设了这一部分介绍一些Linux的基本操作。

### 1.4.1 Linux的文件结构和权限
### 1.4.2 对文件的操作命令和终端相关的知识
Linux的图形化界面做得不是很好，因此往往需要使用命令行来进行文件操作。

<ol>
<li>新建文件夹

使用如下命令：

<code>
mkdir 文件夹名
</code>

即可在你指定的路径下创建一个文件夹。

<li>转到指定路径

使用如下命令：

<code>
cd 路径名称
</code>

类似地，还有，退出当前路径回到上一级：

<code>
cd ./
</code>

<li>修改权限

大家在学习ROS时，往往会需要改动一些系统配置，这就需要我们修改相应的文件权限。

首先我们修改权限要在电脑的最高视角root上，因此我们需要首先进入root中，使用如下命令：

<code>
su root
</code>

输入root密码后即可进入。

文件的权限一般包括读权限、写权限、用户执行权限，分别用r、w、x表示。对于文件所有者，用户组，访客，可以分别定义三者权限。修改权限只有用户可以进行。在root下使用下面的命令：

<code>
chmod 777 文件名
</code>

即可把文件修改成所有人可读、可写、可执行的文件。如果你指向让自己可以，别人不能操作，那么你的chmod 指令后数字应为 700。
</ol>

### 1.4.3 使用Linux安装软件和相关命令

Linux系统的大部分软件可以通过官网或其他github渠道获取，对于一台联网的Linux系统，可以通过命令行从官网安装官网自带的包。常用的有如下方式：

<ul>
<li>使用apt安装包

使用如下命令：

<code>
sudo apt install 包名

或者 sudo apt-get install 包名
</code>

可以直接下载对应的包或命令，比如vim等。但是这种做法有时候可能会出现“无法定位软件包”的情况，那时因为你输入的包在官网上找不到匹配的版本(比如你在Ubuntu 22.04上下载kinetic版本的ROS就会出现这一情况，虽然官网上确实有kinetic的安装包，但是因为它只匹配Ubuntu 16.04的版本，因此就会给你报无法定位软件包)或者网络不好。

<li>使用dpkg安装包

我们需要从软件的官网下载相应软件的包到指定电脑上(注意：要下载.deb格式的)。回到电脑后，可以使用如下命令手动安装：

<code>
sudo dpkg -i 包名
</code>

非常好用。

开启root权限后，使用<code>dpkg -l</code>可以查看电脑中通过dpkg安装的全部包。如果你只想要查看某一个包，使用<code>dpkg -l |grep 包名</code>进行查看。如果你忘记了包全名，但是记得前几个字母，你也可以直接在grep后面输入那几个你记得的字母，系统也能给你查处来。
</ul>

## 1.5 ROS的学习框架

### 1.5.1 ROS学习路线

### 1.5.2 ROS学习前准备

<ol>
<li>git 的安装

在使用ros2的时候，经常要去github(某国外存放代码的网站)下载例程。在使用命令下载时，需要使用到git工具。因此我们必须要准备一下。

使用如下命令安装git:

<code>
sudo apt install git
</code>

一般不会出现无法定位软件包的问题。不过，安装完还不够，因为git是国外网站，往往你会上不了网，或者直接在下载时给你卡一个timeout错误。因此这里我也给出了一个解决方案：

<code>
nslookup github.global.ssl.fastly.net

nslookup github.com
</code>

上面的操作是查询github官网的ip地址。我这里出来的信息如下：(以github.com为例)

<code>
Server:		127.0.0.53

Address:	127.0.0.53#53

Name:	github.com

Address: 140.82.113.3
</code>

可以看到，github.com的ip地址为140.82.113.3。

使用此方法再把上方<code>github.global.ssl.fastly.net</code>的地址也查处来，我的是199.232.69.194。

然后直接使用如下命令打开并且编辑下面文件：

<code>
sudo gedit或vim /etc/hosts
</code>

在开头两行加入如下的内容：

<code>
140.82.113.3 github.com

199.232.69.194 github.global.ssl.fastly.net
</code>

注意，前面的IP地址要以你查到的为准，因为github会不定时更新IP。

然后重启你电脑的网络即可完成。具体指令如下：

<code>
sudo /etc/init.d/networking restart
</code>

<li>设置你的root权限

对于第一次使用linux的用户，设置权限要经历一个小过程。首先，需要激活权限，使用如下命令：

<code>
sudo passwd root
</code>

开启后输入你想要设置的密码2次，就成功激活root权限了。之后你每次打开电脑，想要进入root权限，只需要写<code>su root</code>就可以了。退出root权限操作，需要使用<code>exit</code>指令。
</ol>
