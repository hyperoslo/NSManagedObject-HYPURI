#import "NSManagedObject+HYPURI.h"

@implementation NSManagedObject (HYPURI)

- (NSString *)hyp_URI
{
    return [[self.objectID URIRepresentation] absoluteString];
}

@end
