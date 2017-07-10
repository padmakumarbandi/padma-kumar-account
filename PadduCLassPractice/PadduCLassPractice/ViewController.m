

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.listofnames = @[@"pk",@"lka",@"chi", @"pul", @"eri", @"jord",@"rk", @"kum",@"ram", @"giv",@"revent",@"lf"];

    UINib *cellNib =[UINib nibWithNibName:@"MYCUSTOMCELL" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:@"MYCUSTOMCELL"]
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


    // Dispose of any resources that can be recreated.

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.listofnames count];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
//    NSString*simpleIdentifier = @"resuseIden";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentifier];
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIden"];
    if (cell == nil){
        cell =[[UITableViewCell alloc]initWithStyle: UITableViewCellStyleValue1  reuseIdentifier:@"reuseIden"/*simpleIdentifier*/];
    }
//    if (indexPath.section==1){
////        cell = [self.tableView dequeueReusableCellWithIdentifier:@"reuseiden2"];
//        cell = [self.tableview dequeueReusableCellWithIdentifier:@"reuseiden2"];
//        
//    }
 MYCUSTOMCELL *cell =    [self.tableView dequeueReusableCellWithIdentifier:@"MYCUSTOMCELL"];
    cell.PlacenameLabel.text =@"kent";
    cell.TempLabel.text =@"34˚c";
    cell.PLabel.text =@"kent";
    return cell;
    
            UIImage * newimage = [UIImage imageNamed:@"a.jpg"];
            
            cell.imageView.image = newimage;
            
            if(indexPath.row <4){
                cell.detailTextLabel.text =@"first 3";
                
            }else{
                cell.detailTextLabel.text=@"remaining 3";
                
            }
            
            
            cell.textLabel.text =self.listofnames[indexPath.row];
            return cell;
            
            
}


-(NSInteger) tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row <2){
        return 0;
        
    }else {
        return 1;
    }
    
}
-(NSIndexPath *) tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{ if (indexPath. row== 0){
    return nil;
}else {
    return indexPath;
}
   /* -(void)tableView:](UITableView *) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *  rowValue = self.listofnames [indexPath.row];
     NSString * message = [[NSString alloc] iniyWithFormat:@"selected the row value %@!", rowValue];
    UIAlertView * alert = [[UIAlertView alloc] initWIthTitle: @"Row Selected!" message: message delegate: nil cancelButtonTitle: @"hi its done" otherButtonTittles:nil, nil];
    
    [alert show];
    [tableView deselectRowAtIndexPath: indexPath animated:YES];
}*/
   /* -[(CGFloat)theightForRowAtIndexPath:(NSIndexPath *)indexPath;
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
- (CGFloat)tableView:(ableView:(UITableView*) tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath{
        return 70;*/
    
        
    }
      
@end
