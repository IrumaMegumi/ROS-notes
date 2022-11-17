#include <rclcpp/rclcpp.hpp>

int main(int argc,char **argv)
{
    rclcpp::init(argc,argv);
    auto node=std::make_shared<rclcpp::Node>("Iruma");//定义节点node
    RCLCPP_INFO(node->get_logger(),"I am GUTS.Iruma");//打印输出
    rclcpp::spin(node);
    rclcpp::shutdown();
}