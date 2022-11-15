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
