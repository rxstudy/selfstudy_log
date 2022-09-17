// geometricalgo.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#pragma execution_character_set("utf-8")

#include <iostream>
#include <Windows.h>
#include <io.h>
#include <fcntl.h>
#include <vector>
#include <iomanip>


#include "DemoBase.h"
#include "MemManDemo.h"

int wmain()
{
    char* a = setlocale(LC_ALL, "chinese");
    SetConsoleOutputCP(CP_UTF8);

    auto demos = std::vector<DemoBase*>();
    demos.push_back((DemoBase*) new MemManDemo());

    int selected_demo;
    while (true) {
        std::wcout << L"Demos 列表: " << std::endl;
        for (int i = 0; i < demos.size(); i++) {
            std::cout << std::setfill('0') << std::setw(2) << i;
            std::wcout << ". " << demos[i]->title() << std::endl;
        }
        do {
            std::wcout << L"请输入将执行demo的号码: ";
            std::cin >> selected_demo;
        } while (selected_demo > demos.size());
        std::cout << std::endl;
        std::wcout << L"=================" << std::endl;
        std::wcout << L"执行开始！" << std::endl;
        std::wcout << L"=================" << std::endl;
        demos[selected_demo]->run();
        std::wcout << L"=================" << std::endl;
        std::wcout << L"执行完毕！" << std::endl;
        std::wcout << L"=================" << std::endl;
        std::cout << std::endl;
    }
}