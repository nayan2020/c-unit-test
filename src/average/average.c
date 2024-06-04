#include "average.h"

float average(float arr[], unsigned int size){
    if(size == 0){
        return 0.0;
    }

    float total = 0;

    for(unsigned int n = 0; n < size; n++){
        
	    total += arr[n];

    }

    return total / (float)size;
}
