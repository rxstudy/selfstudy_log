#include "MemManDemo.h"

#include <iostream>
#include <Windows.h>
#include "RunTimer.h"

int MemManDemo::run() {
    struct Position {
        float x;
        float y;
    };
    Position pox = Position{ 1.0, 2.0 };
    RunTimer rt1 = RunTimer();
    rt1.start();
    void* mem = calloc(10, sizeof(int));
    if (mem == NULL) {
        throw L"内存不足";
    }
    const int int_size = sizeof(int);
    int* storage = (int*)mem;
    *storage = 99;
    storage += int_size;
    *storage = 100;

    std::wcout << L"整数储存初始地址:" << mem << std::endl;
    int* reader = (int*)mem;
    for (int i = 0; i < 2; i++) {
        std::wcout << L"第 " << i << L"个整数" << *reader << L"位于地址<" << reader << ">" << std::endl;
        reader += int_size;
    }

    std::wcout << L"清除内存" << std::endl;
    free(mem);
    rt1.finish();
    rt1.summary();
}

std::wstring MemManDemo::title() {
    return L"Manual memory management demo（手动内存管理演示）";
}