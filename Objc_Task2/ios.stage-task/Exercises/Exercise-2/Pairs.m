#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int i = 0;
    for (NSNumber *num in array) {
        int numToFind = [num intValue] + [number intValue];
        if([array containsObject:[NSNumber numberWithInt:numToFind]]){
            i++;
        }
    }
    return i;
}

@end
