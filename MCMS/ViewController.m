//
//  ViewController.m
//  MCMS
//
//  Created by Michael Sevy on 3/17/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UITextField *creatureTextField;
@property (strong, nonatomic) IBOutlet UITextField *detailTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *creature = [[MagicalCreature alloc] initWithFullName:@"ToothFairy"];

    self.creatureArray = [NSMutableArray arrayWithObjects:creature, nil];

//    for (MagicalCreature *creature in self.creatures) {
//        NSLog(@"Creature: %@", creature.name);
//    }
}
#pragma mark - UITableView

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CreatureCell"];
    MagicalCreature *creature = [self.creatureArray objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatureArray.count;
}

#pragma mark - IBActions

// add new creature's name to array
- (IBAction)addButtonOnPressed:(UIButton *)sender {
    if ([self.creatureTextField.text length] > 0) {
        [self.creatureArray addObject:self.creatureTextField.text];
        [self.tableView reloadData];
        self.creatureTextField.text = nil;
        [self.creatureTextField resignFirstResponder];
    }
}
@end













































