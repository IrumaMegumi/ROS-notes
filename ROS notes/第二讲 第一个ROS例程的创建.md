# 2 第一个ROS例程的创建
## 2.1 ROS中的相关概念

<ol>
<li>节点<br>
这里的节点和数据结构中的节点是有很大区别的。ROS中的节点可以理解为实现一个功能的整体功能块。比如，在一个机器人系统中，需要实现如下功能：行走、导航、避障。在实现时，对于这些任务，我们希望他们能够并行执行（不能说机器人在导航时就不走了，在避障时就不导航了），因此需要将3个模块分别放在3个部分来负责，以一种特殊的通信方式来告知哪个功能被触发需要执行了。我们把负责一个功能的模块称为ROS系统的一个<strong>节点</strong>。你可以近似地把节点理解成C++文件中的一个个单独实现功能的.h和.cpp的结构，keil中的每个.cpp和.h。

ROS的每一个节点在功能实现方面是相互独立的，互相不会影响。因此，开发者可以分模块开发，有利于提高效率。

<li>功能包

功能包是存储若干节点的集合，这些节点协同合作可以实现一个功能。相当于keil中你新建工程文件时下属的user、hardware那些文件夹。

<li>通信<br>
ROS系统之间各个节点的联系称为节点之间的通信。机器人就是根据整体的通信协调完成各个功能。ROS2为我们提供了4种通信方式，分别是话题(topic)、服务(service)、动作(action)、参数(parameter)，会在后面详细介绍。

<li>发布者和订阅者<br>
我觉得吧……这个起名有点玄学了，实际上，就好比2个人打电话，主动给对方打电话的叫做发出者，被动接电话的叫做订阅者。在ROS多节点通信中，发出信号的节点是通信流程中的发出者，接受信号的节点是通信流程中的订阅者。

<li>GUI和CLI<br>
GUI是图形化界面的缩写，CLI是命令行界面的缩写，比如，我们在第一讲中启动小乌龟例程时，出现的乌龟画面就属于GUI界面，使用命令
<code>
ros2 run xxxx
</code>
启动小乌龟，就是在命令行使用。

下面介绍一些常用命令：
<ul>
<li>启动节点的命令<br>
<code>
ros2 run 包名 可执行文件名
</code>

<li>查看节点的信息<br>
<code>
ros2 node list<br>
ros2 node info 节点名
</code>
<ul>
</ol>

## 2.2 ROS工程的架构
### 2.2.1 工作空间和功能包

ROS的工程和Visual Studio十分类似，是要以工程的形式打开的，而不是以一个个独立的代码形式运行。把ROS工程存储的整体叫做ROS的工作空间（workspace），你可以把工作空间理解为Visual Studio的一个项目文件(.sln)或keil中的.vcproj。工作空间包括：你所有实现功能的代码、编译产生的文件、编译后可以运行的可执行文件、安装文件等。在工作空间中，我们把实现一套代码的若干节点组成<strong>功能包</strong>。各个节点都在功能包当中。因此，三者的包含关系为：

<center>
工作空间>功能包>节点
</center>

ROS的工作空间主要由如下部分组成：
<ul>
<li>src:此部分主要存放你的ROS工程所有源代码和功能包，也就是你写的代码部分。
<li>build:编译空间，存放在编译过程中产生的中间文件。
<li>dev:存放编译完成后的可执行文件，环境变量配置脚本等。(仅限于ROS1)
<li>install:可以安装的可执行文件存储于此文件夹。
<li>log:编译时记录的编译信息和错误信息。(仅限于ROS2)
</ul>

### 2.2.2 创建并编译一个工作空间（基于ROS2）

下面来说明自己创建工作空间的方法：
<ol>
<li>
创建工作空间的目录。

在2.2.1中，我们已经大致介绍了ROS的文件结构，但是ROS2具有发达的编译系统，因此除了src，后面的3个文件都可以通过使用内部自带的colcon编译器自己产生，因此我们只需要建立文件src即可。

首先使用<code>ctrl+Alt+T</code>在你想要建立终端的文件夹内部打开终端，然后建立文件夹：

<code>
mkdir -p test_ws/src   #在你的目录下创建文件夹test_ws作为你的工作空间，下面有src文件夹
<br>
cd test_ws/src #转到src文件夹
</code>

此时你就完成了文件夹的创建。

<li>创建功能包

功能包是ROS系统中的重要单元，我们既可以从官网上安装现成的模板，也可以自己手动创建功能包。

<ul>
<li>从官网安(bai)装(piao)功能包

使用如下命令：

<code>
sudo apt install ros-humble-功能包名称 
</code>

前面的sudo apt install我已经在第一讲中提到过，是安装包的指令，后面的参数是你的包名称。第一个是ros，第二个是你的ros版本的名称，我的是humble版本就写humble，如果你的是foxy版本就写ros-foxy，第三个是你对应的功能包名称。比如，我想要安装小乌龟的包，就使用下面的命令：

<code>
sudo apt install ros-humble-turtlesim
</code>

那么安装好的包会去哪里？当然是去ROS系统默认的目录里面啦。ROS系统默认的目录在如下地址：/opt/ros/humble/include中，还有部分文件在/opt/ros/humble/lib当中。大家在后续安装其他包时可以到对应位置找到。

<li>自己手动通过编译创建功能包

声明：这里面只展示具体步骤，如果有指令看不懂，请到下面2.3 功能包的相关指令中查阅。
</ul>
</ol>

## 2.3 ROS中功能包的指令

在ROS2中，对于功能包的相关操作命令，统一以<code>ros2 pkg</code>打头。下面说明一些常用指令。

<ol>
<li>创建功能包

使用如下指令：

<code>
ros2 pkg create 包名称 --build-type 编译类型 --dependencies 依赖名称
</code>

第一个参数包名称就是你创建的功能包名称，编译类型是你所写的功能包依据什么进行编译，有3种方式，分别是：cmake、ament_python、ament_cmake，第一个和第三个是编译C++的，第二个是编译Python程序用的。最后一项<code>--dependencies 依赖名</code>  可有可无，有的话，表示你的功能包需要依赖什么包进行工作。

<li>列出可执行文件

使用如下指令：

<code>
ros2 pkg executables 包名
</code>

后面的包名可有可无，有的话，列出该功能包下的可执行文件和下属所有功能包，没有的话，列出该工作空间下的所有可执行文件和功能包。注意：这条命令即使你不启动功能包节点，也会照常执行，把所有的包数出来。

<li>列出所有的包

使用如下指令进行：

<code>
ros2 pkg list
</code>

可以直接列出所有的包，注意，是你系统中所有安装的包，而且貌似不能输出指定工作空间下的包，具体还要实验验证。

<li>列出功能包的清单描述文件

使用下面指令：

<code>
ros2 pkg xml 功能包名称
</code>

可以把其下属的xml文件内容显示出来。
</ol>

## 2.4 自己通过下载现成代码编译一个工作空间(基于ROS2和colcon)

### 2.4.1 关于colcon编译的具体步骤

colcon是功能包的构建工具，可以理解为一个编译器，用于编译代码生成可执行文件。其作用和ROS1中的catkin相同，但是和ROS1不同的是，ROS1在安装时自带catkin，但是ROS2在安装时不会自带编译工具colcon，需要自己手动安装，尴尬！

安装方法如下所示：
<code>

sudo apt-get install python3-colcon-common-extensions 
</code>

即可在终端安装。注意，在使用前，要查一下你的电脑带的python系统是python2还是python3，一般Ubuntu 22.04默认为Python3.10.3，即Python3，如果你的电脑出了意外，默认是Python2，那么千米的命令中，python3应改为python，否则系统会无法定位软件包。

下面展示使用colcon编译官网例程的一种方法。

首先我们使用上面的方法安装colcon。

安装结束后，需要给系统建立一个工作空间，结合前面所说，建立工作空间时，我们只需要建立工作空间文件夹和内部的src文件即可。使用如下命令：

<code>
mkdir test_colcon/src
</code>

完成文件夹的建立。之后转到src文件夹下，准备从github上面下载对应的代码到src中。下载时需要使用git工具，使用如下命令：

<code>
git clone https://github.com/ros2/examples src/examples -b humble
</code>

这里需要声明几点，后面那个网址是ROS2官网和说明书给出的例程。之后的src/examples是我要把这个例程的代码下载到当前路径下src文件夹下的examples文件夹里面。如果你此时已经在src中，则此处应该为examples，否则会重复创建文件夹。

后面的-b humble是指定分支，使用过github的应该都知道分支的概念，在ROS2中，开发者针对不同的系统也将对应的代码存储到了相应的分支，每个分支以其适配的系统命名。我的是humble版本，所以后面就写了-b humble，如果你的是其他版本，记得把humble位置改为你的系统名。

下载结束后，使用下面命令进行编译：

<code>
colcon build
</code>

即可完成编译。不过我在编译时遇到了怪奇现象，即启动colcon build后，所有正在启动和运行的网站全部断网，不知道大家会不会遇到这个问题。但是整体影响不大。

编译速度慢得感人至极，我的电脑是22个文件，编译了44秒。所以大家如果等待时间比较长也不要慌张。

编译完成后，系统会在原来src的基础上再产生build、install、log文件夹，文件夹中的存储内容见2.2部分的结构介绍。

接下来我们就可以手动运行一个节点了。

首先把终端路径转移到我们刚刚新建节点的工作空间。注意：此处不需要进入到下面4个文件夹中，直接运行如下指令：

<code>
source install/setup.bash
</code>

这个是编译后自己产生的可执行文件。我们首先需要使用上述命令加载对应资源。

之后使用<code>ros2 run</code>指令即可运行对应节点的内容。这里我使用刚刚从官网下载的文件来一遍。

打开第一个终端，并运行下面2行指令：

<code>
source install/setup.bash

ros2 run examples_rclcpp_minimal_subscriber subscriber_member_function
</code>

再打开第二个终端，运行下面指令：

<code>
source install/setup.bash

ros2 run examples_rclcpp_minimal_publisher publisher_member_function
</code>

即可实现一个你说，我听的经典例程。

通过上面的讲解和一个例程的编译，我们基本可以大致了解编译一个工作空间的基本步骤了。大致如下：

首先写完你的代码以后，使用<code>colcon build</code>编译整个代码部分，生成可执行文件(.bash，也许后面会有更多，随着我以后的学习会继续更新)，然后使用source install 在对应路径下加载资源，使用ros2 run运行相应节点即可。

### 2.4.2 colcon的相关指令

<ol>
<li>只编译其中一个功能包

指令：

<code>
colcon build --package-select 你的包名
</code>

使用上面的指令，把对应的包名添入，你就可以编译单独的一个包了。

<li>运行编译包并测试

指令：

<code>
colcon test
</code>

<li>允许通过更改src下的部分文件来更改install

先说以下这个是什么意思，读起来大家也许会感觉有点怪怪的。在前面已经讲过，自己下载/手写完节点和功能包以后，使用colcon build进行编译的过程，编译后会产生一个叫做install的文件夹。但是此时，你的install文件夹里面可执行文件的内容将会不再与src中的代码有联系。换句话说，你在有src和install文件夹(之前编译过)的情况下，修改了src的代码并使用colcon build，编译完成后，你再去执行install文件夹中的可执行文件，它不会给你自动修改，你执行的内容还是原来的内容，🍀。

需要使用如下指令：
<code>
colcon build --symlink-install
</code>
</ol>
关于colcon的更多指令，可以参考ROS2的官方文档(not 官网)。具体地址如下：https://colcon.readthedocs.io/en/released/user/installation.html。

至此，我们似乎还少了一样东西，自己手写一个节点并且编译。不过，可恶的官网好像只说了下载例程并且自己在例程基础上改。作为一个非常独立的作者，必须要拐棍那就很难受了。所以，下面会讲如何自己手写一个节点并且编译。

## 2.5 自己手写一个节点(基于ROS2)

### 2.5.1 手写节点(使用Python)

结合前面我所讲述的ROS工作空间的结构，我们在手写节点时，首先要建立工作空间，及我们要写的节点所属的功能包。首先我们建立工作空间。

<code>
mkdir -p ./helloROS_ws/src

cd helloROS_ws/src
</code>

我们就完成了建立节点并且转到src文件夹下的任务，src下面就存储我们的所有功能包。注意：功能包不是文件夹，在ROS中有自己的创建方法！！！对于初学者，在手写节点的时候，非常容易把工作空间和功能包搞混，认为他们都是文件夹！！！！！

下面我们在src文件夹下创建功能包。使用如下命令：

<code>
ros2 pkg create helloros --build-type ament_python --dependencies rclpy
</code>

说明：在创建Python节点时，编译器要选择ament_python，依赖项一定要有，对于Python节点，要依赖rclpy的库，rclpy是ROS的Python库客户端接口，不写--build-type选项默认为ament_cmake，你也可以在VScode终端下打开上面文件夹运行上面的create指令。

创建完毕后，系统会在src下面生成一个helloros的文件夹，文件夹下面有如下内容：(目前我还不会Ubuntu截屏，截屏后会更新此处)

<ul>
<li>一个文件夹：名字和你的功能包命名相同，里面有一个__init__.py文件。这个文件夹也是你写节点的地方。
<li>一个xml：里面存储了该功能包的所有配置信息。
<li>一个.py文件：命名是setup.py，是配置信息的，不用管他。
<li>一些空文件和文件夹，里面也放了一些文件，但是都是空的。
</ul>

熟悉了功能包文件的结构以后，我们就可以往里添加节点了。节点要添加在我前面说的那个位置，也就是在功能包下，有一个和功能包同名的文件下下面，节点的.py文件要与__init__.py放在一起。

然后我们就可以在创建的节点文件里面写代码了。编写节点的代码步骤如下：

<ol>
<li>导入对应的package
<li>初始化客户端库
<li>新建节点
<li>循环节点
<li>关闭客户端
</ol>

具体实现的代码如下所示：


    #------Step 1:导入库------
    import rclpy #ros client library的缩写
    from rclpy.node import Node

    def main(args=None):
        #------Step2:初始化客户端库------
        rclpy.init(args=args)
        #------Step 3:从Node类新建节点------
        node=Node("helloROS")
        node.get_logger().info("Hello,ROS")
        #------Step 4:循环节点------
        rclpy.spin(node)
        #------Step 5:关闭节点------
        rclpy.shutdown()

每一步的做法已经在上面标出。下面作一些说明：
<ul>
<li>第一步中导入库，这里导入了rclpy(ros client library for Python)以及Python节点专用类Node，后面创建节点时就通过Node创建。
<li>第二部中初始化使用rclpy中的init()函数初始化。注意：在linux中，需要给定main函数一个入口参数args，如果你不想输入任何值，令其为None即可，这个好像是linux风格规范，我也不清楚是为啥。
<li>建立节点并让其打印输出信息。直接从Node类建立，括号里面是节点的名称，叫做"helloROS"。

剩下的暂时想不到注意要点，后面会根据反馈补充。
</ul>

写完以后，我们还需要在功能包中配置节点信息，在setup.py中的最后一项<code>'console_scripts'</code>后面的中括号里面输入如下内容：

<code>
'node=helloros.hello:main'
</code>

第一个是你通过Node对象创建的节点变量node，后面的=号时赋值符号，就是我要把节点所在函数位置的信息给到node上，系统在调用node时就去后面的地址找。后面给出的是地址信息，也就是在helloROS文件夹中的hello.py文件里面，:表示在文件中的哪一个函数，是main()函数，直接写函数名就好。

写完以后保存，开始进入编译阶段：

在终端输入命令：<code>colcon build</code>编译节点，完成后，使用如下命令生成可执行文件：<code>source install/setup.bash</code>，然后使用<code>ros2 run helloros node</code>即可运行，看到它输出了hello，ROS。

不过使用的时候要注意，关闭终端后，每次都需要使用<code>source install/setup.bash</code>加载节点才可以运行。

至此，使用Python手写helloROS节点就完成啦。

### 2.5.1 手写节点(使用C++)