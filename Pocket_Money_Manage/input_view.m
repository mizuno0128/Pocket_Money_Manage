//
//  input_view.m
//  Pocket_Money_Manage
//
//  Created by libertyfish on 2016/07/08.
//  Copyright (c) 2016年 libertyfish. All rights reserved.
//

#import "input_view.h"
#import <CoreData/CoreData.h>
#import "AppDelegate.h"
#import "MoneyData.h"

@interface input_view (){
    IBOutlet UILabel *lbl_now;
    IBOutlet UITableView *tbl;

}
@property (strong, nonatomic) NSManagedObjectContext *conext;
@end

@implementation input_view
@synthesize year;
@synthesize month;
@synthesize day;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.conext = [(AppDelegate *)[[UIApplication sharedApplication]delegate] managedObjectContext];
    //年月日をラベルに適用する
    NSString *ymd;
    ymd = [NSString stringWithFormat:@"%@年%@月%@日", year, month, day];
    [lbl_now setText:ymd];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)insert:(id)sender{
    // 保存されたデータの取得
    // 収入額の取得
    NSNumber *in_money = 0;//[[NSNumber alloc] initWithInt:[self.MyLabel_in.text intValue] ];
    // 支出額の取得
    NSNumber *out_money = 0;//[[NSNumber alloc] initWithInt:[self.MyLabel_out.text intValue] ];
    
    // 保存する現在の時刻を取得
    //NSDate *date = [NSDate new];
    
    // CoreDataへのインサート用オブジェクトを作成
    MoneyData *sample = [NSEntityDescription insertNewObjectForEntityForName:@"MoneyData" inManagedObjectContext:self.conext];
    
    // CoreDataのインサート用オブジェクトにデータをセット
    //年
    [sample setYear:[[NSNumber alloc] initWithInt:[year intValue]]];
    //月
    [sample setMonth:[[NSNumber alloc] initWithInt:[month intValue]]];
    //日
    [sample setDay:[[NSNumber alloc] initWithInt:[day intValue]]];
    //ジャンル
    [sample setGenre:self.genre.text];
    //支出
    [sample setIn_money:in_money ];
    //収入
    [sample setOut_money:out_money ];
    
    // CoreDataへデータを保存
    NSError *error;
    if (![self.conext save:&error]) {
        NSLog(@"error = %@", error);
    } else {
        NSLog(@"成功");
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Table Viewの行数を返す
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *tvcell = [tableView dequeueReusableCellWithIdentifier: @"cid"];
    if (tvcell == nil) {
        tvcell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                        reuseIdentifier: @"cid"];
    }
    // Table Viewの各行の情報を、UITableViewCellのオブジェクトとして返す
    tvcell.textLabel.text = [[NSString alloc] initWithFormat:@"%d行目のセル", 1 + 1];//indexPath.row
    return tvcell;
}

@end