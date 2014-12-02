#import "NSManagedObject+HYPURI.h"

@implementation NSManagedObject (HYPURI)

- (NSString *)hyp_URI
{
    return [[self.objectID URIRepresentation] absoluteString];
}

+ (NSManagedObject *)managedObjectWithURI:(NSString *)URI inContext:(NSManagedObjectContext *)context
{
    NSManagedObjectID *objectID = [context.persistentStoreCoordinator managedObjectIDForURIRepresentation:[NSURL URLWithString:URI]];
    if (!objectID) return nil;

    NSError *error = nil;
    NSManagedObject *object = [context existingObjectWithID:objectID error:&error];
    if (error) NSLog(@"ERROR getting object with URI %@ from MOC:\n%@", URI, [error localizedDescription]);

    return object;
}

@end
