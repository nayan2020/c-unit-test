#include "CppUTest/TestHarness.h"

extern "C" {
    #include "average.h"
}

// Create test groups
TEST_GROUP(average_test_group){

    void setup(){
        // initial before test group

    }

    void teardown(){
        // Deinitialize after each test case
    }
};

// Test the average test funtion 
TEST(average_test_group, simple_test){
    float arr[] = { 1.0, 2.0, 3.0, 4.0, 5.0};
    float avg = average(arr, 5);
    CHECK_EQUAL(avg, 3.00);
}

TEST(average_test_group, null_test){
    float arr[1];
    float avg = average(arr, 0);
    CHECK_EQUAL(avg, 0.00);
}