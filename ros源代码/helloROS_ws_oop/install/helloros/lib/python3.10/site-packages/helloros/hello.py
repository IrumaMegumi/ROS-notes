#------Step 1:导入库------
import rclpy #ros client library的缩写
from rclpy.node import Node

#从Node继承过来的类
class WriterNode(Node):
    def __init__(self,name):
        super().__init__(name)
        self.get_logger().info("Hello,ROS!")

#主函数部分
def main(args=None):
    rclpy.init(args=args)
    HelloROS=WriterNode("Helloros")
    rclpy.spin(HelloROS)
    rclpy.shutdown()
