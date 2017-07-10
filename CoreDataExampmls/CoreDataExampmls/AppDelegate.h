//
//  AppDelegate.h
//  CoreDataExampmls
//
//  Created by Prahlad on 7/5/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (readonly, strong)  NSManagedObjectContext *managedObjectContext;
@property (readonly, strong)  NSManagedObjectModel *managedObjectModel;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

