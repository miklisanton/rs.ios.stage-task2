#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if ([numbersArray count] == 0 || [numbersArray count] > 4) {
        return @"";
    }
    for (NSNumber *num in numbersArray) {
        if([num intValue] < 0){
            return @"Negative numbers are not valid for input.";
        }
        if ([num intValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
    }
    NSMutableArray *numbersArrayMutable = [numbersArray mutableCopy];
    while ([numbersArrayMutable count] < 4) {
        [numbersArrayMutable addObject:[NSNumber numberWithInt:0]];
    }
    return [numbersArrayMutable componentsJoinedByString:@"."];
}

@end
