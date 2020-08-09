//
// Created by jin on 4/2/20.
//
#include <iostream>
#include <cstdint>

int main(){
    float f = 1.0;
    unsigned int i;
    uint32_t a;

    while(1){
        std::cin >> a;
        f = *(float*)&a;
        i = (int)f;
        std::cout << i << std::endl;
    }

    return 0;
}
