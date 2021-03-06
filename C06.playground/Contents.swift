import UIKit


let first: Int = 5
var second: Int = 7

if first > second {
    print("first > second")
} else if first < second {
    print("first < second")
} else {
    print("first == second")
}

second = 5

if first > second {
    print(first)
} else if first == second {
    print(first)
} else if first < second {
    print(second)
} else if first == 5 {
    print(100)
}

if (first > second) {
    print(first)
} else if (first == second) {
    print(first)
} else if (first < second) {
    print(second)
}


let value: Int = 5
switch value {
case 0:
    print(5)
case 1...10:
    print("1~10")
    fallthrough
case Int.min..<0, 101..<Int.max:
    print("value < 0 or value > 100")
    break
default:
    print("10 < value <= 100")
}

let doubleValue: Double = 3.0
switch doubleValue {
case 0:
    print(0)
case 1.5...10.5:
    print("1.5 ~ 10.5")
default:
    print("value == \(doubleValue)")
}

//let stringValue: String = "Liam Neeson"
let stringValue: String = "Nova"
switch stringValue {
case "yagom":
    print("yagom")
case "Jay":
    print("Jay")
case "Jenny", "Joker", "Nova":
    print(stringValue)
default:
    print("\(stringValue) said 'I don't know who you are'")
}

typealias NameAge = (name: String, age: Int)
var tupleValue: NameAge = ("nadarm", 100)
switch tupleValue {
case ("nadarm", 100):
    print("정확히 맞췄습니다")
default:
    print("누굴 찾나요?")
}

tupleValue = ("nadarm", 10)
switch tupleValue {
case ("nadarm", 100):
    print("정확히 맞췄습니다")
case ("nadarm", _):
    print("이름만 맞췄습니다. 나이는 \(tupleValue.age) 입니다")
case (_, 100):
    print("나이만 맞췄습니다. 이름은 \(tupleValue.name) 입니다")
default:
    print("누굴 찾나요?")
}

switch tupleValue {
case ("nadarm", 100):
    print("ok")
case ("nadarm", let age):
    print("나이는 \(age)")
case (let name, 100):
    print("이름은 \(name)")
default:
    print("x")
}


let 직급: String = "사원"
let 연차: Int = 1
let 인턴인가: Bool = false

switch 직급 {
case "사원" where 인턴인가:
    print("인턴입니다.")
case "사원" where 연차 < 2 && !인턴인가:
    print("신입사원입니다.")
case "사원" where 연차 > 5:
    print("연식 좀 된 사원입니다.")
default:
    print("사장입니다.")
}



enum School {
    case primary, elementary, middle
}
let last: School = .middle
switch last {
case .primary:
    print("primary")
case .elementary:
    print("elementary")
case .middle:
    print("middle")
}


enum Menu {
    case chicken, pizza
}
let lunch: Menu = .chicken
switch lunch {
case .chicken:
    print("chicken")
case .pizza:
    print("pizza")
case _:  // default랑 같음
    print("오늘 메뉴가 뭐죠?")
}

enum Menu2 {
    case chicken, pizza, hamburger
}
let dinner: Menu2 = .hamburger
switch dinner {
case .chicken:
    print("chicken")
case .pizza:
    print("pizza")
@unknown case _:
    print("오늘 메뉴가 뭐죠?")
}




for i in 0...2 {
    print(i)
}

for i in 0...5 {
    if i.isMultiple(of: 2) {
        print(i)
        continue
    }
    
    print("홀수")
}

let helloSwift: String = "Hello Swift!"
for char in helloSwift {
    print(char)
}

var result: Int = 1
for _ in 1...3 {
    result *= 10
}
print(result)


let friends: [String: Int] = ["jay": 10, "joe": 11, "jenny": 12]
for tuple in friends {
    print(tuple)
}

let 주소: [String: String] = ["도": "충청도", "시군구": "청주시 청원구", "동읍면": "율량동"]
for (키, 값) in 주소 {
    print("\(키) : \(값)")
}

let 지역번호: Set<String> = ["02", "031", "032"]
for 번호 in 지역번호 {
    print(번호)
}



var names: [String] = ["joker", "jenny", "nova"]

while !names.isEmpty {
    print("Good bye \(names.removeFirst())")
}

names = ["joker", "jenny", "nova"]
repeat {
    print("good bye \(names.removeFirst())")
} while !names.isEmpty


var numbers: [Int] = [3, 2345, 3, 42, 6]
numbersLoop: for num in numbers {
    if num > 5 || num < 1 {
        continue numbersLoop
    }
    
    var count: Int = 0
    
    printLoop: while true {
        print(num)
        count += 1
        
        if count == num {
            break printLoop
        }
    }
    
    removeLoop: while true {
        if numbers.first != num {
            break numbersLoop
        }
        numbers.removeFirst()
    }
}

print(numbers)
