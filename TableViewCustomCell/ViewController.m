//
//  ViewController.m
//  TableViewCustomCell
//
//  Created by Lee HyunYoung on 2014. 1. 7..
//  Copyright (c) 2014년 Lee HyunYoung. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
#import "ProductCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate> {
	NSArray *data;
}

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [data count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL"];
	
	Product *item = data[indexPath.row];
	[cell setProductInfo:item];
	
	return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	data = @[[Product product:@"baseball" price:@"100" image:@"baseball.png"],
             [Product product:@"basketball" price:@"200" image:@"basketball.png"],
			 [Product product:@"football" price:@"300" image:@"football.png"],
             [Product product:@"volleyball" price:@"400" image:@"volleyball.png"]
			 ];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
