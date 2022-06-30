import UIKit


protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)
    
    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]
    
    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]
    
    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]
    
    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}

struct Homework: HomeworkService {
    
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        return (x / y, x % y)
    }
    
    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int] {
        var fibArray =  [Int]()
        fibArray[0] = 0
        fibArray[1] = 1
        for i in 2...n {
            fibArray.append(fibArray[i-1] + fibArray[i-2])
        }
        return fibArray
    }
    
    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int] {
        var result = rawArray
        for _ in 0...result.count {
            for i in 0...result.count {
            if (result[i] > result[i + 1]){
                result.swapAt(i, i+1)}
        }
            
    }
        return result
    }
    
    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character] {
        var letterArray = [Character]()
        for i in 0...strings.count {
            if strings[i].count > 0{
                letterArray[i] = strings[i].first!
            }
        }
        return letterArray
    }
    
    
    
    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
        var result = [Int]()
        
        for elem in array{
            if condition(elem){
                result.append(elem)
            }
        }
        return result
    }
}


var homework = Homework()

func condition(n: Int) -> Bool{
    if n < 0 {
        return false
    }
    else{
        return true
    }
}

print(homework.filter(array: [-1, 2, 0, 3, -5], condition: condition))

