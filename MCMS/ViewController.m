//
//  ViewController.m
//  MCMS
//
//  Created by Michael Sevy on 3/17/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *creature = [[MagicalCreature alloc] initWithFullName:@"ToothFairy"];

    self.creatures = [NSMutableArray arrayWithObjects:creature, nil];

    for (MagicalCreature *creature in self.creatures) {
        NSLog(@"Creature: %@", creature.name);
    }
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CreatureCell"];
        cell.textLabel.text = [[self.creatures objectAtIndex:indexPath.row] name];

        return cell;
    }

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatures.count;
}

@end
