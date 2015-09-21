//
//  AKMMacros.h
//  UIHomeWork
//
//  Created by Anton Kostenko on 22.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#ifndef AKMMacros_h
#define AKMMacros_h

#define AKMweakify(VAR) \
    __weak __typeof(VAR) __AKMWeak##VAR = VAR

#define AKMstrongify(VAR) \
    __strong __typeof(VAR) VAR = __AKMWeak##VAR

#endif