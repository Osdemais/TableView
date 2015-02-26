//
//  AplicativoTableViewController.h
//  DesafioTableView
//
//  Created by Orleans Klaus on 2/25/15.
//  Copyright (c) 2015 Orleans Klaus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AplicativoTableViewController : UITableViewController

@property (strong, nonatomic) NSMutableDictionary *dicionarioMutavelAplicativo;

@property (weak, nonatomic) IBOutlet UILabel *labelNomeAplicativo;
@property (weak, nonatomic) IBOutlet UILabel *labelCategoriaAplicativo;
@property (weak, nonatomic) IBOutlet UIImageView *imageAplicativo;

- (IBAction)buttonDeletar:(UIButton *)sender;
- (IBAction)buttonAlterar:(UIButton *)sender;

@end
