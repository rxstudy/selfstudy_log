#include "MemManDemo.h"

#include <iostream>
#include <Windows.h>
#include <stdlib.h>
#include <vector>
#include "RunTimer.h"

// Perform 100000 read and write
int MemManDemo::run() {
    const int OP_COUNT = 1000000;
    struct Position {
        int x;
        int y;
    };
    const int size_of_pos = sizeof(Position);

    std::vector<int> access_index = std::vector<int>();
    for (int i = 0; i < OP_COUNT; ++i) {
        access_index.push_back(rand() % OP_COUNT); 
    }

    RunTimer rt1 = RunTimer();
    rt1.start();
    Position* mem = (Position*) calloc(OP_COUNT, sizeof(Position));
    if (mem == NULL) {
        throw L"内存不足";
    }

    Position* ptr = mem;
    for (int i = 0; i < OP_COUNT; ++i) {
        *ptr = Position{ i, i };
        ptr += 1; // Since ptr is of type Position, +1 will make it advance by sizeof(Position);
    }

    rt1.finish();

    RunTimer rt1_access = RunTimer();
    rt1_access.start();
    Position* start = mem;
    for (auto it = access_index.begin(); it != access_index.end(); ++it) {
        Position* cur = start + (*it);
        cur->x *= cur->y;
    }
    rt1_access.finish();

    free(mem);

    RunTimer rt2 = RunTimer();
    rt2.start();
    Position** positions = new Position*[OP_COUNT];
    for (int i = 0; i < OP_COUNT; i++) {
        positions[i] = new Position{ i, i };
    }
    rt2.finish();

    RunTimer rt2_access = RunTimer();
    rt2_access.start();
    for (auto it = access_index.begin(); it != access_index.end(); ++it) {
        Position* cur = positions[*it];
        cur->x *= cur->y;
    }
    rt2_access.finish();


    std::wcout << L"写入对比:" << std::endl;
    rt1.compare(rt2);

    std::wcout << L"读取对比:" << std::endl;
    rt1_access.compare(rt2_access);

    return 0;
}

std::wstring MemManDemo::title() {
    return L"Manual memory management demo（手动内存管理演示）";
}