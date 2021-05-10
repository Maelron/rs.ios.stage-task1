#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray *resultsArray = [[NSMutableArray alloc] init];
    
    if ([rankedArray isEqualToArray:@[]]) {
        for (int i = 0; i < playerArray.count; i++) {
            [resultsArray addObject:@1];
        }
        return resultsArray;
    }
    
    if ([playerArray isEqualToArray:@[]]) {
        return @[];
    }
    
    NSMutableArray *uniqueArr = [[NSMutableArray alloc] initWithArray:rankedArray];
    for (NSUInteger i = rankedArray.count - 1; i > 0; i--) {
        if ([rankedArray[i] isEqual: rankedArray[i-1]]) {
            [uniqueArr removeObjectAtIndex: i];
        }
    }
    
    for (int i = 0; i < playerArray.count; i++) {
        NSInteger placeResult = 1;
        
        for (int j = 0; j < uniqueArr.count; j++) {
            if (playerArray[i].integerValue >= [uniqueArr[j] integerValue]) {
                placeResult += 0;
            }
            
            if (playerArray[i].integerValue < [uniqueArr[j] integerValue]) {
                placeResult += 1;
                
            }
        }
        [resultsArray addObject:[NSNumber numberWithInteger:placeResult]];
        placeResult += 1;
        
    }
    return resultsArray;
    
}

@end
