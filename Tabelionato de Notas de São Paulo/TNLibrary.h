//
//  TNLibrary.h
//  Tabelionato de Notas de São Paulo
//
//  Created by Henrique Morbin on 28/05/13.
//  Copyright (c) 2013 Henrique Morbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNLibrary : NSObject

+ (void)appearanceCustom;
+ (NSString*)date:(NSDate*)date toFormat:(NSString*)_format;
+ (void)sortMutableArray:(NSMutableArray * __strong *)array withAttribute:(NSString*)attr andAscending:(BOOL)ascending;
@end
