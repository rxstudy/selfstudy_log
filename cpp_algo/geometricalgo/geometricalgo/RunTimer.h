#pragma once

#include<chrono>

class RunTimer
{
public:
	void start();
	void finish();
	void summary();
	void compare(RunTimer& compare);
	void reset();
	double get_time_elapsed();
private:
	bool readonly = false;
	std::chrono::time_point<std::chrono::system_clock> start_time;
	std::chrono::time_point<std::chrono::system_clock> stop_time;

	inline void check_readonly();
};

