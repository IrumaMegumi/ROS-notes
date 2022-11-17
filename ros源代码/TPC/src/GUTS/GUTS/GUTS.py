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
