import rclpy
from rclpy.node import Node
from std_msgs.msg import String,UInt32  #载入对应的话题消息类型

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
        self.receiver=self.create_subscription(UInt32,"hear_from_GUTS_members",self.receive_reports,50)

    def timer_callback(self):
        pass
        msg=String()
        msg.data= "Golza and Melba are alive %d times, please kill the two monsters !" % (self.count)
        self.pub_order.publish(msg)#发布者发布这个消息
        self.get_logger().info("TPC向GUTS发布了一条消灭怪兽哥尔赞和美尔巴的指令，内容是%s" % msg.data)
        self.count+=1

    def receive_reports(self,result_number):
        if(result_number.data ==1):
            self.get_logger().info("成功消灭怪兽")
        else:
            self.get_logger().info("怪兽没有被消灭，请求出动核弹")


def main(args=None):
    rclpy.init(args=args)
    GUTS_head=TPCNode("TPC")
    rclpy.spin(GUTS_head)
    rclpy.shutdown()
