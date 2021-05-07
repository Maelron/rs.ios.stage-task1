#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (!number) {
        return @[];
    }
    
    NSString *stringFromNumber = [number stringValue];
    stringFromNumber = [stringFromNumber stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"-"]];
    
    NSMutableArray *arrayOfChars = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [stringFromNumber length]; i++) {
        [arrayOfChars addObject:[NSString stringWithFormat:@"%C", [stringFromNumber characterAtIndex:i]]];
    }
    
    NSEnumerator *enumer = [arrayOfChars reverseObjectEnumerator];
    
    NSArray *enumeratedArray = [enumer allObjects];
    
    return enumeratedArray;}

@end
