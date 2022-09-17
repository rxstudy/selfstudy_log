#include "RunTimer.h"

#include<chrono>
#include<ctime>
#include<string>
#include<iostream>

void RunTimer::start() {
	check_readonly();
	start_time = std::chrono::system_clock::now();
}

void RunTimer::finish() {
	check_readonly();
	readonly = true;
	stop_time = std::chrono::system_clock::now();
}

void RunTimer::summary() {
	std::wcout << L"耗时" << get_time_elapsed() << L"ms." << std::endl;
}

void RunTimer::compare(RunTimer& compare) {
	double mine = get_time_elapsed();
	double theirs = compare.get_time_elapsed();
	double rate = 100 * (theirs - mine) / mine;
	std::wcout << L"甲:";
	summary();
	std::wcout << L"乙:";
	compare.summary();
	std::wcout << L"甲比乙" << (rate > 0 ? L"快" : L"慢") << rate << L"%" << std::endl;
}

double RunTimer::get_time_elapsed() {
	if (!readonly) finish();
	auto duration = stop_time - start_time;
	return std::chrono::duration_cast<std::chrono::milliseconds>(duration).count();
}

void RunTimer::reset() {

}

void RunTimer::check_readonly() {
	if (readonly) throw "Timer can only be used once.";
}