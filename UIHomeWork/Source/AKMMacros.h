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

#define AKMstrongifyAndReturnNilIfNil(VAR) \
__strong __typeof(VAR) VAR = __AKMWeak##VAR; \
    if(VAR == nil) { \
        return nil; \
}

#define AKMstrongifyAndReturnIfNil(VAR) \
__strong __typeof(VAR) VAR = __AKMWeak##VAR; \
if(VAR == nil) { \
return; \
}

#define AKMDefineMainViewProperty(propertyName, viewClass) \
@property (nonatomic, readonly) viewClass   *propertyName;

#define AKMViewGetterSynthesize(selector, viewClass) \
- (viewClass *)selector { \
if ([self isViewLoaded] && [self.view isKindOfClass:[viewClass class]]) { \
return (viewClass *)self.view; \
} \
\
return nil; \
}

#define AKMViewControllerMainViewProperty(viewControllerClass, propertyName, viewClass) \
@interface viewControllerClass (__##viewClass_##propertyName) \
AKMDefineMainViewProperty(propertyName, viewClass) \
\
@end \
\
@implementation viewControllerClass (__##viewClass_##propertyName) \
\
@dynamic propertyName; \
\
AKMViewGetterSynthesize(propertyName, viewClass) \
\
@end

#endif