//
//  celulaTableViewCell.h
//  DesafioTableView
//
//  Created by Fernando Lucheti on 27/02/15.
//  Copyright (c) 2015 Orleans Klaus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface celulaTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageAplicativo;
@property (weak, nonatomic) IBOutlet UILabel *labelNomeApp;
@property (weak, nonatomic) IBOutlet UILabel *labelCategoriaAplicativo;

@end
