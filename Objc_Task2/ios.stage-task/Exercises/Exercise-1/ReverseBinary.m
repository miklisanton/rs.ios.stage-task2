#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    NSMutableArray *binArr = [NSMutableArray new];
    for (int i = 0; i < 8; i++) {
        [binArr addObject:[NSNumber numberWithInt:0]];
    }
    int i = 0;
    while (n) {
        binArr[i] = [NSNumber numberWithInt:n % 2];
        n /= 2;
        i++;
    }
    int reversed = 0;
    for (int i = 7; i >= 0; i--) {
        reversed += [binArr[i] intValue] * pow(2, 7 - i);
    }
    NSLog(@"%d", reversed);
    return reversed;
}
