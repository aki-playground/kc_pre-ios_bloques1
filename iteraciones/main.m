//
//  main.m
//  iteraciones
//
//  Created by Akixe on 22/2/16.
//  Copyright © 2016 AOA. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *lista = @[@1, @2, @3];
        
        //Iteración normal
        for (int i = 0; i < [lista count]; i++){
            NSLog(@"Elemento %d es %@", i, [lista objectAtIndex:i]);
        }
        
        
        //Fast iteration
        for (id element in lista) {
            NSLog(@"El elemento es %@", element);
        }
        
        //Con Bloques
        [lista enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
            NSLog(@"El elemento  %lu vale %@", (unsigned long)idx, obj);
        }];
        
        
        NSDictionary  *dict = @{@"uno" : @1, @"dos" : @2};
        
        [dict enumerateKeysAndObjectsUsingBlock:^(id key, id  obj, BOOL * stop) {
            NSLog(@"la clave es %@ y el valor es %@", key, obj);
        }]
    }
    return 0;
}
