//
//  TNSplashViewController.m
//  Tabelionato de Notas de São Paulo
//
//  Created by Henrique Morbin on 14/06/13.
//  Copyright (c) 2013 Henrique Morbin. All rights reserved.
//

#import "TNSplashViewController.h"

@interface TNSplashViewController ()

@end

@implementation TNSplashViewController

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
    
    //Remover tela splash depois de 3 segundos
    [self performSelector:@selector(performSegueWithIdentifier:sender:) withObject:@"inicialViewController" afterDelay:3.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
