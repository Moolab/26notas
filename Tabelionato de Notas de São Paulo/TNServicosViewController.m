//
//  TNServicosViewController.m
//  Tabelionato de Notas de São Paulo
//
//  Created by Henrique Morbin on 14/06/13.
//  Copyright (c) 2013 Henrique Morbin. All rights reserved.
//

#import "TNServicosViewController.h"

@interface TNServicosViewController ()

@end

@implementation TNServicosViewController

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
    self.title = @"Serviços";
    self.navigationItem.title     = @"Serviços";//@"26º Tabelionato de Notas SP";
    self.navigationItem.titleView = [TNLibrary getViewWithTitle:@"26º Tabelionato de Notas SP" withSize:20.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
