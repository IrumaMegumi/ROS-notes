# 1 ROS系统的介绍和安装
## 1.1 ROS系统介绍

ROS是Robot Operating System的缩写，常常用于机器人的自动化控制、运动仿真等。目前支持C++、Python、Java、Matlab等多种语言和软件接口，但我查到的最多资料基本全部为Python接口或C++移植口。Matlab由于自带Simulink功能，因此几乎查不到使用Matlab运行ROS的资料。

ROS系统对于操作系统的环境不是很友好，目前只支持在Linux环境下部署。本教程讲使用Ubuntu 22.04平台进行相关环境的部署和操作演示。
## 1.2 ROS系统的安装

此部分是全程在Ubuntu系统下进行安装的。如果大家有对Linux不熟悉的，可以参考1.3部分，有对相关操作的基本介绍。

下面说明具体的安装步骤。

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
## 1.3 Linux相关的基本操作（以后看情况决定是否更新）

## 1.4 ROS的学习框架
