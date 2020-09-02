//
// Created by jin on 4/2/20.
//
#include <iostream>

int main(){
    float f = 1.0;
    unsigned int a, b, i;

    while(1){
        std::cin >> a;
        std::cin >> b;
        f = *(float*)&a + *(float*)&b;
        i = *(int*)&f;
        std::cout << i << std::endl;
    }

    return 0;
}

