#pragma once
#include <string>

class DemoBase {
public: 
	virtual int run() = 0;
	virtual std::wstring title() = 0;
};