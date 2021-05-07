#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    
    NSCharacterSet *letters = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    NSRange letterRange = [self rangeOfCharacterFromSet:letters];
    
    return letterRange.location == NSNotFound && self.length > 0;
}

@end
