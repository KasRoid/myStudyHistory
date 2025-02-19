//: [Previous](@previous)
/*:
 ---
 # Inheritance
 ---
 */

class Cat {
  let leg = 4
  
  func cry() {
    print("miaow")
  }
}

let cat = Cat()
print(cat.leg)
cat.cry()


class KoreanShortHair: Cat {
  let color: String = "black"
}

let koshort = KoreanShortHair()
koshort.leg
koshort.cry()

koshort.color
//cat.color


/*:
 ---
 ### Question
 Person, Student, University Student 클래스 구현하고 관련 속성 및 메서드 구현
 - 상속을 하지 않고 각각 개별적으로 만들면 어떻게 구현해야 하는지 확인
 - 상속을 적용하면 어떻게 바뀌는지 확인
 ---
 */
class Person {
    var name: String = "Unknown"
    var age: Int = 1
}

class Student: Person {
    var grade: Int = 1
}

class UniversityStudent: Student {
    var major: String = "Computer Science"
}

var kas = UniversityStudent()
kas.age = 33
kas.name = "Kas Song"
kas.grade = 15

kas.major
kas.name
kas.age

/*:
 ## final
 */
print("\n---------- [ Final ] ----------\n")

class Shape {
}

final class Circle: Shape {
}

//class Oval: Circle {
//}



/*:
 ---
 ### Answer
 ---
 */

class Person1 {
  let name = "홍길동"
  let age = 20
  
  func eat() {
    print("eat")
  }
}


print("\n---------- [ Without Subclassing ] ----------\n")

//class Student1 {
//  let name = "홍길동"
//  let age = 20
//  let grade = "A"
//
//  func eat() {
//    print("eat")
//  }
//  func study() {
//    print("study")
//  }
//}

//class UniversityStudent1 {
//  let name = "홍길동"
//  let age = 20
//  let grade = "A"
//  let major = "Computer Science"
//
//  func eat() {
//    print("Eat")
//  }
//  func study() {
//    print("Study")
//  }
//  func goMT() {
//    print("Go membership training")
//  }
//}


print("\n---------- [ Subclassing ] ----------\n")

class Student1: Person1 {
  let grade = "A"
  
  func study() {
    print("study")
  }
}

class UniversityStudent1: Student1 {
  let major = "Computer Science"
  
  func goMT() {
    print("Go membership training")
  }
}



//: [Next](@next)
