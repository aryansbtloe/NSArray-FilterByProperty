//
//  NSArray+FilterByProperty.m
//  CCInvaders
//
//  Created by Stephen on 2012-08-11.
//
//

#import "NSArray+FilterByProperty.h"

@implementation NSArray (FilterByProperty)

- (NSArray*) filterByProperty:(NSString *) p
{
    NSMutableArray *finalArray = [NSMutableArray array];
    NSMutableSet *lookup = [[NSMutableSet alloc]init];
    for (id item in self)
    {
        if (![lookup containsObject:[item valueForKey:p]])
        {
            [lookup addObject:[item valueForKey:p]];
            [finalArray addObject:item];
        }
    }
    [lookup release];
    
    return finalArray;
}

@end
