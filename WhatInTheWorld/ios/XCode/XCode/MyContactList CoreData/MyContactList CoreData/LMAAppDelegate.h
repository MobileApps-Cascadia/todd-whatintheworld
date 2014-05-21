//
//  LMAAppDelegate.h
//  MyContactList CoreData
//
//  Created by Jung, Terry on 5/14/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LMAAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
