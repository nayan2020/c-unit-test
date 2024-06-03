#include "average.h"

float average(float arr[], unsigned int size){
    float total = 0;

    for(unsigned int n = 0; n < size; n++){
        
	    total += arr[n];

    }

    return total / (float)size;
}
