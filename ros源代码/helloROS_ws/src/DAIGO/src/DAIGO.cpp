#include <rclcpp/rclcpp.hpp>
using namespace rclcpp;

class UltramanNode:public Node{
public:
    UltramanNode(std::string name):Node(name)
{
    RCLCPP_INFO(this->get_logger(),"I am ultraman %s",name.c_str());
}
};

int main(int argc,char **argv)
{
    init(argc,argv);
    auto node=std::make_shared<UltramanNode>("Tiga");
    spin(node);
    shutdown();
}