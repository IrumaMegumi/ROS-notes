#include <rclcpp/rclcpp.hpp>
using namespace rclcpp;
using namespace std;

class Members:public Node{
public:
    Members(string name):Node(name)
    {
        RCLCPP_INFO(this->get_logger(),"%s received.GUTS,set out!",name.c_str());//没想起来
    }
};
int main(int args,char **argv)
{
    init(args,argv);
    auto node=make_shared<Members>("Iruma");
    spin(node);
    shutdown();
}