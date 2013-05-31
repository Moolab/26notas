//
//  TNLibrary.m
//  Tabelionato de Notas de São Paulo
//
//  Created by Henrique Morbin on 28/05/13.
//  Copyright (c) 2013 Henrique Morbin. All rights reserved.
//

#import "TNLibrary.h"

@implementation TNLibrary


// ================================================================================
// Método para customizar a aparência da aplicação
// ================================================================================
+ (void)appearanceCustom
{
    UIColor *navigationColor = [UIColor colorWithRed:0.0f green:153.0f/255.0f blue:204.0f/255.0f alpha:1.0f];
    
    [[UINavigationBar appearance] setTintColor:navigationColor];
    [[UIBarButtonItem appearance] setTintColor:navigationColor];
}

// ================================================================================
// Método para facilitar a formatação de datas
// ================================================================================
+ (NSString*)date:(NSDate*)date toFormat:(NSString*)_format
{
    NSDateFormatter * format = [[NSDateFormatter alloc] init];
    [format setDateFormat:_format];
    NSString * result = [format stringFromDate:date];
    return result;
}

// ================================================================================
// Método para ordenar vetores por um atributo do objeto
// ================================================================================
+ (void)sortMutableArray:(NSMutableArray * __strong *)array withAttribute:(NSString*)attr andAscending:(BOOL)ascending
{
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:attr ascending:ascending];
    [*array sortUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
}

@end
