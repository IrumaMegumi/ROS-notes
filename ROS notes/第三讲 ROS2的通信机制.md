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

### 3.ros2和话题topic相关的指令介绍

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

本部分的程序在ROS源代码的TPC文件夹中，内容是复现迪伽奥特曼第一集的剧情。下面有GUTS和Iruma2个节点，其中，GUTS作为发布者发布话题怪兽哥尔赞和美尔巴复活，Iruma接收话题并作出相应指令给胜利队队员下达任务，大古变成光把2个怪兽消灭并报告给TPC总部。

写一个话题的步骤为：

<ol>
<li>新建和生命话题类型
<li>载入和设置话题的发布者
<li>设置话题的发布逻辑
</ol>

### 4-1 话题发布者的设置

首先，我们需要建立话题的发布者。对于上面的情景，话题发布者为TPC总部。这里我们采用第二讲OOP编程的方法实现。其实在ROS里面，面向对象是一个非常香的事情。笔者认为，建立话题发布者的几个要素：发布者初始化，设置发布方式，设置发布内容。

由于我们本次执行任务的是胜利队，胜利队是TPC下属的部门，因此我们的发布者节点功能包命名为GUTS。手写一个GUTS节点的代码如下所示：

    import rclpy
    from rclpy.node import Node
    
    class GUTSNode(Node):
        def __init__(self,name):
            super().__init__(name)
            self.get_logger().info("This is GUTS, a task is sending to you")

    def main(args=None):
        rclpy.init(args=args)
        GUTS_head=GUTSNode("GUTS")
        rclpy.spin(GUTS_head)
        rclpy.shutdown()

接下来我们开始让普通的节点功能包GUTS成为发布者。首先我们需要引入消息类型。

在开头导入包的时候把对应的消息类型导入即可，在import部分加入如下语句：

    from std_msgs.msg import String

由于这里面我只需要发布字符类型的消息，因此我只导入了String包,其他的信息类型还有针对数据的UInt16、UInt32、UInt64等。

接下来是设置话题发布者的情况。

设置话题的发布者需要首先将对应节点初始化为一个发布者并设置相关参数，比如，我可以发送什么样子的话题数据，我多久发送一次等等。之后是话题发布的内容。

与话题相关的库函数在Node节电下面的pub_order和千米所包含的msg包下面。

这里我们需要设置GUTS为发布者，队长居间惠Iruma为接受者。所以我们修改GUTS节点。具体代码如下所示：

    class TPCNode(Node):
        def __init__(self,name):
            super().__init__(name)
            self.get_logger().info("This is TPC, a task is sending to you")
            self.pub_order=self.create_publisher(String,"order_to_GUTS",50) #声明并创建发布者
            #self.pub_order.publish() 使用这个可发布数据
            #对于定时发布的话题，需要创建定时器发布
            self.timer_period=5 #每隔5秒发布一次
            self.count=0
            self.timer=self.create_timer(self.timer_period,self.timer_callback)#每5秒钟调用一次callback函数

        def timer_callback(self):#
            msg=String()
            msg.data= "Golza and Melba are alive %d times, please kill the two monsters !" % (self.count)
            self.pub_order.publish(msg)#发布者发布这个消息
            self.get_logger().info("TPC向GUTS发布了一条消灭怪兽哥尔赞和美尔巴的指令，内容是%s" % msg.data)
            self.count+=1


    def main(args=None):
        rclpy.init(args=args)
        GUTS_head=GUTSNode("TPC")
        rclpy.spin(GUTS_head)
        rclpy.shutdown()

设置节点为发布者节点需要在__init__()中进行，使用函数create_publisher(),里面的第一个参数是你的节点数据类型，一旦规定，它就只能发布一个类型的数据，这里我规定的是String，后面是话题发布者名称和最大长度。

接下来是设置话题的发布方式，这里设置的是每隔5秒发布一次，因此也可以看到后面建立了定时器发布。定时器的函数是create_timer，参数分别是隔的时间，到了以后调用哪个回调函数。关于回调函数，可以这么理解：在前面的程序中创建定时器以后，每隔5秒钟，就会有一个响应的动作，它会随着时间一直循环进行，只要达到触发条件即可触发。上面程序中的回调函数是timer_callback。回调函数中的内容为发布者发布信息的函数，也就是

    self.pub_order.publish(msg)

所在的那一行，msg是前面定义的杀死哥尔赞和美尔巴两头怪兽的指令。

接下来就是编译和运行了，注意事项可以看我写的第二讲中的避坑指南部分。运行指令的顺序大致如下：

    colcon build --packages-select 你的包名
    source install/setup.bash
    ros2 run 你的包名 下属节点名称

运行后如果运行正常，你会看到如下界面（info的时间不一致属于正常现象）：

    [INFO] [1672729937.116704538] [TPC]: This is GUTS, a task is sending to you
    [INFO] [1672729942.121624381] [TPC]: TPC向GUTS发布了一条消灭怪兽哥尔赞和美尔巴的指令，内容是Golza and Melba are alive 0 times, please kill the two monsters !
    [INFO] [1672729947.131391449] [TPC]: TPC向GUTS发布了一条消灭怪兽哥尔赞和美尔巴的指令，内容是Golza and Melba are alive 1 times, please kill the two monsters !
    [INFO] [1672729952.127743676] [TPC]: TPC向GUTS发布了一条消灭怪兽哥尔赞和美尔巴的指令，内容是Golza and Melba are alive 2 times, please kill the two monsters !
    [INFO] [1672729957.126553211] [TPC]: TPC向GUTS发布了一条消灭怪兽哥尔赞和美尔巴的指令，内容是Golza and Melba are alive 3 times, please kill the two monsters !
    [INFO] [1672729962.125753019] [TPC]: TPC向GUTS发布了一条消灭怪兽哥尔赞和美尔巴的指令，内容是Golza and Melba are alive 4 times, please kill the two monsters !

可以看到发布者GUTS正在发送指令，首先第一个是初始化的info，过5秒钟后，开始发布两个怪兽复活的信息。

至此，发布者节点建立就结束啦。

### 4-2 话题订阅者的设置

<ol>

<li>关于订阅者的一些概念

订阅者可以理解为一个话题的接受者，接收发布者发布的信息，并且对信息进行回应的单位。和发布者一样，订阅者也是以节点为单位的。一个节点，可以既属于发布者，也属于订阅者。在前面迪迦奥特曼第一集复线的剧情中，TPC不仅是消灭怪兽指令的发布者，也是接受胜利队消灭结果的订阅者。我们后面的程序就会按照前面的程序进行修改。

<li>如何设置一个节点为订阅者

一个节点中，订阅者和发布者的属性是不冲突的，因此可以在一个初始化函数、一个类中设置。但是，其对应的变量成员需要不同。创建订阅者所使用的函数是create_subscription，里面设置4个参数，分别是：订阅者接受的数据类型、订阅者的话题名称、订阅者的回调函数、订阅者接受数据的队列长度。下面以一个具体的程序为例说明：

    def __init__(self,name):中
        super().__init__(name)
        self.get_logger().info("This is TPC, a task is sending to you")
        self.pub_order=self.create_publisher(String,"order_to_GUTS",50) #声明并创建发布者
        #self.pub_order.publish() 使用这个可发布数据
        #对于定时发布的话题，需要创建定时器发布
        self.timer_period=5 #每隔5秒发布一次
        self.count=0
        self.timer=self.create_timer(self.timer_period,self.timer_callback)#每5秒钟调用一次callback函数
        self.receiver=self.create_subscription(UInt32,"hear_from_GUTS_members",self.receive_reports,50)#创建订阅者

上面的代码是在前面给TPC赋予发布者的基础上进行修改所得到的，可以看到，创建发布者的create_publisher和创建接受者的create_subscription2个函数所属于的成员是不同的，一个是pub_order,一个是receiver。receiver接受32位整型数据，订阅者的话题名称为hear_from_GUTS_members，从胜利队队员那接收他们的汇报，回调函数是receive_reports。

回调函数的代码如下：

    def receive_reports(self,result_number):
            if(result_number.data ==1):
                self.get_logger().info("成功消灭怪兽")
            else:
                self.get_logger().info("怪兽没有被消灭，请求出动核弹")
    
接收的是胜利队任务结果的代码，如果为1，表示怪兽成功被消灭，否则没有被消灭。

写好后就可以colcon build运行了。

<li>查看话题的信息

由于目前我们还没有写胜利队的节点，因此对于订阅者的成分，仅通过ros2 run是无法表现出来的。因此我们需要新打开一个终端对话题运行情况进行检查。关于ros2中对于话题的指令操作，见前文讲解，这里不再赘述。

这里我们首先检查话题的情况，使用下面指令：

    ros2 topic list

正常的输出为：

    /hear_from_GUTS_members
    /order_to_GUTS
    /parameter_events
    /rosout

可以看到，我们设定的发布者和订阅者话题都在其中。

接下来，查看订阅者话题接收变量的类型，如下所示：
    
    指令：
        ros2 topic info /hear_from_GUTS_members 
    结果：
        Type: std_msgs/msg/UInt32
        Publisher count: 0
        Subscription count: 1

上面的结果含义为：话题hear_from_GUTS_members发布/接收的数据类型是UInt32，32位整数。这个话题没有发布者，只有订阅者。

最后，我们通过手动给话题发送指令测试订阅者节点的工作情况，具体如下：

    指令：
        ros2 topic pub /hear_from_GUTS_members std_msgs/msg/UInt32 "{data: 1}"
    结果：
        你会看到，当1发送的时候，在节点端口会出现已经消灭怪兽的字样。

上面的发送指令格式较为特殊，是Linux命令的格式，大家需要注意，尤其是“{data:}"，一个也不能少，否则会报奇形怪状的错误。
</ol>

## 3.2 服务

## 3.3 参数

## 3.4 动作