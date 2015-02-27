//
//  AplicativoTableViewController.m
//  DesafioTableView
//
//  Created by Orleans Klaus on 2/25/15.
//  Copyright (c) 2015 Orleans Klaus. All rights reserved.
//

#import "AplicativoTableViewController.h"


@interface AplicativoTableViewController ()

@end

@implementation AplicativoTableViewController
@synthesize dicionarioMutavelAplicativo;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dicionarioMutavelAplicativo = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"Facebook", @"NomeApp", @"Estilo de vida", @"Categoria", nil];
    NSLog(@"%@", dicionarioMutavelAplicativo);
    
    [dicionarioMutavelAplicativo setValue:@"Banco Itaú" forKey:@"NomeApp"];
    [dicionarioMutavelAplicativo setValue:@"Finanças" forKey:@"Categoria"];
    
    [dicionarioMutavelAplicativo setValue:@"Duolingo"  forKey:@"NomeApp"];
    [dicionarioMutavelAplicativo setValue:@"Educação" forKey:@"Categoria"];
    
    [dicionarioMutavelAplicativo setValue:@"Saude" forKey:@"NomeApp"];
    [dicionarioMutavelAplicativo setValue:@"Esportes" forKey:@"Categoria"];

    NSLog(@"%@", dicionarioMutavelAplicativo);
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    return dicionarioMutavelAplicativo.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    // Configure the cell...
       cell.textLabel.text = dicionarioMutavelAplicativo.allValues[indexPath.row];
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


//// Override to support editing the table view.
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        // Delete the row from the data source
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//    }   
//}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    celulaTableViewCell * segundaTela = (celulaTableViewCell*)segue.destinationViewController;
    
    NSIndexPath* myIndexPath = [self.tableView indexPathForSelectedRow];
    long row = [myIndexPath row];
    
    segundaTela.labelNomeApp = dicionarioMutavelAplicativo.allValues[row];
    segundaTela.labelCategoriaAplicativo = dicionarioMutavelAplicativo.allKeys[row];
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}



//- (IBAction)buttonDeletar:(UIButton *)sender {
//    NSLog(@"%@", dicionarioMutavelAplicativo);
//    
//    [dicionarioMutavelAplicativo removeObjectForKey:@"categoria"];
//    
//    NSLog(@"%@", dicionarioMutavelAplicativo);
//    
////    [dicionarioMutavelAplicativo removeAllObjects];
////    NSLog(@"%@", dicionarioMutavelAplicativo);
//    
//}
//- (IBAction)buttonAlterar:(UIButton *)sender {
//    NSLog(@"%@", dicionarioMutavelAplicativo);
//    
//    [dicionarioMutavelAplicativo willChangeValueForKey:@"categoria"];
//    
//}
@end
