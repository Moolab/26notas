//
//  TNInicialViewController.m
//  Tabelionato de Notas de São Paulo
//
//  Created by Henrique Morbin on 28/05/13.
//  Copyright (c) 2013 Henrique Morbin. All rights reserved.
//

#import "TNInicialViewController.h"

@interface TNInicialViewController ()

@end

@implementation TNInicialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //Definindo título da aplicação
    self.title = @"26º Tabelionato de Notas SP";
    self.navigationItem.title = self.title;
    
    //Ajustando tamanho da tabela
    [self.tabela setFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    //Ajustando botões
    [self.btnCalcular setType:BButtonTypePrimary];
    [self.btnLimpar setType:BButtonTypeDefault];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 12)];
    [self.tabela setTableHeaderView:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTabela:nil];
    [self setCellCalculoBase:nil];
    [self setCellTipoOperacao:nil];
    [self setBtnCalcular:nil];
    [self setCellOpcoes:nil];
    [self setBtnCalcular:nil];
    [self setBtnLimpar:nil];
    [super viewDidUnload];
}

#pragma mark - UITableViewDelegate and UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return self.cellCalculoBase;
    }else if (indexPath.section == 1){
        return self.cellTipoOperacao;
    }else if (indexPath.section == 2){
        return self.cellOpcoes;
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 1) {
        return 64.0f;
    }
    return 54.0f;
}
@end
