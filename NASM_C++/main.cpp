
#include <iostream>
extern "C" int add_two(int a, int b);

int main(){
    
    std::cout << "Sum: " << add_two(2,3) << "\n";

    return 0;
}