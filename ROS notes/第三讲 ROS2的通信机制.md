# 3 ROS2的通信机制

## 3.1 话题

### 1.定义
话题(Topic)时ROS中常用的多个节点通信的方式之一，整体的模型构造思想是发布-订阅模型。比方说，我关注了GUTS胜利队的微信公众号，那么GUTS发布的每一条打怪兽的通知，我就都可以接收到。我们称发布信息的对象节点叫做<strong>发布者(Pubilsher)</strong>，发出的内容叫做<strong>话题或消息(Topic)</strong>，接受消息的对象节点称为<strong>订阅者(Subscriber)</strong>。

根据发布者和订阅者的数量，可以把ROS的通信分为：一对一、一对多、多对一、多对多4类关系。

### 2.注意事项

<ol>
<li>发布者的订阅者不要求数量相同，但是要求二者的接口相同，即：发布者发布的如果是字符型数据，订阅者接受内容的接口类型也要为字符型。
<li>同一个订阅者可以订阅多个话题，同一个话题可以有多个发布者。
</ol>

### 3.rqt工具介绍

（1）使用rqt_graph查看各个节点之间的关系

ROS2的2个基础例程，一个是“你说，我听”，一个是小乌龟。这里我们使用“你说，我听”的例程。

使用下面代码打开你说我听的例程：

    ros2 run demo_nodes_py listener
    ros2 run demo_nodes_cpp talker
    rqt_graph

注意：三个命令要在3个终端执行你才可以看到效果哦。

运行后可以看到下面的图：
<center>
<img src=./fig/3-1.png width=60%>
</center>

迪迦奥特曼那个节点可以忽略，上次的节点忘关了呜呜呜呜。可以看到整体的信息流图。talker节点把话题chatter发送给listener，奥特曼靠边站。这种方法调试的时候非常常用。

(2)ROS2话题相关的命令行工具

首先说明一下，和功能包一样，ROS2的话题命令开头固定，均为<code>ros2 topic</code>打头。

<code>
ros2 topic list
</code>

使用上面的指令可以看到当前ROS系统所有活跃的话题名称。其中有一个/parameter_events和/rosout，这两个是必须有的，否则就说明你的ROS安装maybe出bug了。

如果你想要查看话题的类型，需要在上面的指令后面再加点内容：

<code>
ros2 topic list -t 
</code>

此时你不光可以看到系统内的所有话题，你还可以查看到其传输数据的变量类型，如果你发现有不符合的可以据此进行程序修改。

如果你想查看话题的实时内容，需要使用下面指令：

<code>
ros2 topic echo 话题名称
</code>

比如刚才的你说我听的例子中，话题名称在图中显示为/chatter，我们就可以使用上述指令查看话题内容：

<code>
ros2 topic echo /chatter
</code>

你就可以看到实时信息了。

如果你想要查看话题的主题信息，使用下面指令：

<code>
ros2 topic info 话题名称
</code>

你会看到话题类型，发布者，订阅者的数量信息。

如果你向查看消息接口类型，使用下方指令：

<code>
ros2 interface show 话题类型
</code>

有点晕晕，后面更新这个内容哈。

我们还可以手动通过命令行发布话题。

<code>
ros2 topic pub 话题名称 消息类型 发布的数据内容
</code>

eg:<code>ros2 topic pub /chatter std_msgs/msg/String "{data:xxxx}"</code>

你就可以手动发布话题调试啦。

关于话题的命令，大家可以参考下方官方文档链接：
http://docs.ros.org/en/humble/Tutorials/Beginner-CLI-Tools/Understanding-ROS2-Topics/Understanding-ROS2-Topics.html

### 4.手动编写2个节点使用话题通信

本部分的程序在ROS源代码的TPC文件夹中。下面有GUTS和Iruma2个节点，其中，GUTS作为发布者发布话题，Iruma接收话题并作出相应指令给胜利队队员下达任务。


## 3.2 服务

## 3.3 参数

## 3.4 动作