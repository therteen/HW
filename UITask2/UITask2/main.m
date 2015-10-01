//
//  main.m
//  UITask2
//
//  Created by Anton Kostenko on 21.09.15.
//  Copyright (c) 2015 Anton Kostenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AKMAppDelegate.h"

//Задание 2.
//Написать UI приложение в один вид:
//1. Данные - рандомные данные строковые (сгенерированные в процессе первого старта приложения) + изображение (одно на все ячейки, считываемое из файловой системы);
//2. Представление для данных - таблица;
//3. В таблице должна присутствовать возможность пересортировывать строки, добавлять новые, заполненные рандомом и удалять старые;
//4. Необходимо написать модель и модель массива, модель массива должна быть наблюдаемой и должна удовлетворять следующим требованиям:
//- доступ по индексам;
//- доступ по литералу индекса;
//- работа как с моделями, так и с индексами моделей;
//- возможность получить количество;
//5. Необходимо создать конвенции по использованию методов и сами методы в определенных иерархиях классов с помощью категорий и общих абстрактных родителей для переиспользования в этом и других проектах, которые бы обеспечивали следующее:
//- получение объекта с конкретным типом из ниба используя UINib;
//- получение объекта с конкретным типом из ниба используя NSBundle;
//- получение переиспользуемой ячейки из таблицы с конкретным типом;
//- получение переиспользуемой ячейки из таблицы или создание новой в случае, когда переиспольземые ячейки недоступны с конкретным типом;
//- создание окна с размерами, равными размеру экрана;
//- создание нового вьюконтроллера с дефолтным именем ниба и нулевым бандлом;
//- reuseIdentifier ячейки, завязанный на имя класса ячейки.
//5. Требования к контроллеру:
//- должен позволять установить модель извне (в случае данного приложения модель должны быть передана из AppDelegate), при этом необходимо учесть следующие ситуации при установке модели извне:
//а. у контроллера еще не создан вид;
//б. У контроллера создан вид.
//- процесс добавления/удаления контроллера в качестве наблюдателя модели должен быть автоматизированным в пределах контроллера;
//- процесс добавления и удаления ячейки должен быть анимированным через наблюдение за состоянием массива моделей.
//6. Внешний вид всех видов, включая ячейки таблицы должен быть задан в нибах.
//



int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}