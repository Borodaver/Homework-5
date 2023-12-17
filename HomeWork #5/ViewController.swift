//
//  ViewController.swift
//  HomeWork #5
//
//  Created by Александр Михалев on 1.12.23.
//

import UIKit


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Изменение
        
//        func test
//        bla bla bla
//        test
        
        
        //1.Написать функцию, которая принимает опциональное число и, если оно есть, умножает его на 2
        
        func optionNumber (number a: Int? ) {
            var num = a
            if num != nil {
                num = num! * 2
                print(num) /*  или  print(num!) чтобы получить Int */
            } else {
                print("Здесь nil")
            }
            
        }
        
        optionNumber(number: nil)
        
        
        //    Вопрос: почему не получается прировнять опциональное значение Int? к Int через введение новой переменной, которая по умолчанию должна являться Int в функции. В этом и суть Optional Binding.
        
        func optionNumber1 (number a: Int? ) {
            let num = a
            var num2: Int
            if num != nil {
                num2 = num! * 2
                print(num2)
            } else {
                print("Здесь nil")
            }
        }
        
        optionNumber1 (number: 10)
        
        
        
        //2.Использовать force unwrap для извлечения значения из опциональной переменной. Затем добавьте условие, чтобы обработать случай, если значение равно nil.
        
        func numbFromOptional (numb a: Int?) {
            if a == nil {
                print ("Don't use force unwrap!")
            } else {
                var b = a!
                print(b)
            }
        }
        
        numbFromOptional(numb: 123)
        
//        Вопрос: Задание 1 и 2 получаются по сути лдинаковыми по сути исполнения или я что-то не вкерно понимаю?
        
        
        //3.Написать функцию, использующую оператор guard для проверки опционального значения. Если значение равно nil, выведите сообщение об ошибке, в противном случае выполните операцию с извлеченным значением. 3-4 примера
        
        
//        Пример 1
        
        
        func exampleOne() {
            let string: String? = "Some string value"
            guard let x = string else {return}
            print(x)
        }
        
//        Пример 2
        
        exampleTwo(21)
        
        func exampleTwo (_ a: Int?) {
            guard let b = a else {
                print("Here is some code for nil")
                return
            }
            print (b)
        }
        
        
//        Пример 3
        
        exampleThree(23.23)
        
        func exampleThree (_ a: Double?) {
            guard a == nil else {
                print("Here is one more code")
                return
            }
            print ("Function \(a!) is nil")
        }
        
        
        
        //4.Напишите функцию, которая принимает строку и пытается преобразовать ее в целое число. Если преобразование возможно, верните число, если нет - nil
        
        
        func stringToInt(name a: String) -> Int? {
            guard let myInt = Int(a) else {
                return nil
            }
            return Int(a)
        }
        
        let x = stringToInt(name: "")
        print(x) /* или написать на вывод */
        
        
        
        
        //5.Создать перечисление Book. Напишите функцию, которая принимает Book и выводит описание книги
        
//        Вприант 1 - Простое решение с олной книгой
        
        enum Book {
            static let booksTitle = "Book's name"
            static let genre = "Adventure"
            static let content = "Some introduction text"
        }

        
        func someBook(a: Book) {
            var a = Book.content
            print(a)
        }
        
        var b = someBook(a:)
        print(b)
        /* почему без 148-149 строк не печатает в консоль print(a) ??? */
        
//        Вариант 2 - Решение на основе кода про айфоны/андроиды
        
        var content1 = Books.DonKiHot.content
        var content2 = Books.Kurpatov.content
        var book1 = Books.DonKiHot1(about: content1)
        var book2 = Books.Kurpatov1(about: content2)
        print(book1.aboutBook())
        
        
        enum Books {
            enum DonKiHot {
                case content
                case bookTitle
                case genre
            }
            enum Kurpatov {
                case content /*(String = "Some introduction text 2") - почему нельзя вместить сюда данные */
                case bookTitle(String)
                case genre(String)
            }
            
            case DonKiHot1(about: DonKiHot)
            case Kurpatov1(about: Kurpatov)
            
            
            func aboutBook() -> String {
                switch self {
                case let .DonKiHot1(about):
                    return "Content of book 1 is \(about)"
                case let .Kurpatov1(about):
                    return "Contetnt of book 2 is \(about)"
                }
            }
        }
       
        //6.Создайте перечисление Clothes. Напишите функцию, которая принимает Clothes в качестве параметра и выводит сообщение о выбранной одежде.
        
        
        
        
        
    }
}
