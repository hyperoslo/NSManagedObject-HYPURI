@import CoreData;

@interface NSManagedObject (HYPURI)

- (NSString *)hyp_URI;

+ (NSManagedObject *)managedObjectWithURI:(NSString *)URI inContext:(NSManagedObjectContext *)context;

@end
