//
//  TNInicialViewController.h
//  Tabelionato de Notas de São Paulo
//
//  Created by Henrique Morbin on 28/05/13.
//  Copyright (c) 2013 Henrique Morbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BButton.h"

@interface TNInicialViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableViewCell *cellCalculoBase;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellTipoOperacao;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellOpcoes;
@property (strong, nonatomic) IBOutlet UITableView *tabela;

@property (strong, nonatomic) IBOutlet BButton *btnCalcular;
@property (strong, nonatomic) IBOutlet BButton *btnLimpar;
@end
