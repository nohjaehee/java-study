# Doit java - 클래스와 객체(1)

객체(object) - 구체적, 추상적 데이터 단위

객체지향 프로그래밍(object Oriented Programming / OOP) - 객체(object)를 기반으로 하는 프로그래밍

**객체지향 프로그래밍 예시)**

▼시간의 흐름에 따른 프로그래밍 == 순차적 프로그래밍▼

아침에 일어난다. →  밥을 먹는다. →  씻는다. →옷을 갈아 입는다. →  버스를 탄다. → 요금을 지불한다. →학교도착

▼객체지향프로그래밍 (대상을 위주로 생각해야함)▼

학생  (시험을 본다, 공부를 한다.),버스 (학생을 데려다 주는  기능) 등등…

**객체간의 협력이 일어나는 것. 시간의 순서에 따른 것이 아닌 객체를 정의하여 객체들이 제공하는 기능을 사용하는 것.

class

class - 객체(object)를 코드로 정의한 것.

멤버변수 - 객체(object)의  속성, 특성 등을 정의한 것.

메서드 - 객체(object)의 기능.

class 정의 하기.

(접근제어자)  calss 클래스 이름 {

멤버변수;

메서드;

}

class 예시)

student class

속성 : 학번, 이름, 학년

기능 : 수강신청, 수업듣기

Package - 소스의 묶음,  class를 [구별해줌,  local directory](http://구별해줌.directory) 별로 정리가 된다.

----------------------------------------------------------------------------------------------------------
# Doit java - 클래스와 객체1(2)

**메서드** -  함수의 일종. class안에 멤버변수로 구현된 함수의 일부.

**함수** - 하나의 기능을 수행하는 일련의 코드. 중복되는 기능을 함수로 구현. 

**ex) 함수의 예시**

숫자를 더한다. 가장 좋은 성적 두개를 더한다.  두 거리를 더한다.

더하기 함수 를 만들어서 공통적으로 사용 하는 것.

함수

입력값 ==  매개변수

결과값 == 반환값

int add (int num1, int num2){               add →함수 이름 : 함수의 기능과 관련하여 명명

     int result;                             int num1, int num2 → 매개변수 : 함수의 수행을 위해 필요한 변수

     result = num1 + num2;             return→예약어 : 함수의 수행결과흫 반환하기 위한 예약어

     return result;                             int → 함수 반환형 : 반환 값의 자료현을 나타냄.

                                                                                 반환값이 없는 경우 void 라고 씀

}

**함수 구현하고 스택메모리**

**스택(stack)** : 함수가 호출될때 사용하는 메모리

                      지역변수가 자리를 잡는 것

main() - >addNum() 함수 호출

**함수가 호출되어 지역변수가 불러진다. →함수가 마무리되면서  스택의 메모리가 사라진다.**

함수를 사용하는 이유? 

필요한 기능별로 나눠 정의 하여, 각 기능별로 호출하여 사용한다.

함수는 하나의 기능을 함수 이름에 맞게 구현 하는 것이 가장 적절하다.

----------------------------------------------------------------------------------------------------------------------
# Doit java -클래스와 객체1(3)

클래스 & 인스턴스

클래스                   ————>                 인스턴스

(staic코드)     생성(인스턴스화)     (dynamic memory)

   개                  시츄,달마시안 …               메모리에 올라간 객체

**클래스 생성하기**

클래스를 사용하기 위해 클래스를 생성해야함

new 예약어를 이용하여  클래스 생성!!

**인스턴스 생성하기**

Student    studentLee   =   new Student(); //생성자는 힙메모리에 생성됨.

클래스형    변수이름      new   생성자()

 studentLee.showStudentInfo();

**인스턴스와 힙메모리**

하나의 클래스 코드로 부터 여러개의 인스턴스를 생성

인스턴스는 힙 메모리에 생성됨.

각가의 인스턴스는 다른 메모리에 다른 값을 가짐

**힙 메모리** -동적으로 생성되는 메모리.

Student 의 객체 studentId, studentName, grade, address가 힙 메모리에 잡힌다.

인스턴스(studentId, studentName, grade, address)의 주소값은 stack메모리( studentLee)에 저장된다.

Stack 메모리에 저장된 인스턴스 주소값을 호출하면 아래와 같다.

ClassPart.Student@16f65612

패키지명.클래스명@비트수

**생성자(constructor) :**

class 이름과 동일

반환 타입이 ㅇ벗음

new 키워드로 인해서만 생성된다.

하나의 생성자라도 있으면 default 생성자는 생기지 않는다.

생성자는 메소드가 아니며, 상속되지 않는다.

**기본생성자 (default constructor)** :  

public Student(){ }

default 생성자는 자바 compiler가 자동으로 생성해준다.

생성자가 하나도 없을 떄 생긴다.
--------------------------------------------------------------------------------------------------------------
# Doit java -클래스와 객체1(4)

**참조자료형(reference type)**

변수의 자료형

1.기본자료형 : int, long, float,등

2.참조자료형 : String, Date, Student 등

기존 자바 라이브러리 jdk에서 제공하는 자료형등, class들

혹은 사용자가 직접 만들어서 사용하는 것(class)

 

정보은닉

private 접근제어자

클래스의 외부에서 클래스 내부의 멤버변수나 메서드에 접근하지 못하게 하는 경우 사용.

하나의 파일안에는 클래스가 여러개일 수 있다.
---------------------------------------------------------------------------------------
# Doit java -클래스와 객체2(1)

this -자신의 메모리를 가리킴, 생성자에서 다른 생성자를 호출, 자신의 주소를 반환함
 
 ex) 

class BirthDay{
   int day;
   int month;
   int year;
}

public void setYear(int year){
   this.year = year
   멤버변수year   매개변수 year 를 가리킴

}
public void printThis(){
   System.out.println(this);
}

public class ThisExample{
    public static void main(Stirng[] args){
    BirthDay b1 =  new BirthDay();
    BirthDay b2 =  new BirthDay();

     System.out.println(b1);
     b1.printThis();

     //출력물
     //thisex.Birthday@311d617d
     //thisex.Birthday@311d617d

     System.out.println(b2);
     b2.printThis();

     //출력물
     //thisex.Birthday@7c53a9eb
     //thisex.Birthday@7c53a9eb

 }
}

###생성자에서 다른 생성자를 호출하는 this
 class person{
   String name;
   int age;

   public Person(){
      this("이름없음", 1);
      // 아래에 만든 생성자를 불러 사용하는 것. 
   }
   public person(Stirn name, int age){
      this.name = name;
      this.age = age;
   }
   
   public Person returnSelf(){
      retuen this;
   }
}
public class ThisExCallAnotherConat{
    public static void main(Stirng[] args){
    
    Person p1 =  new Person();
    System.out.println(p1.name);
      //출력물
     //이름없음
   System.out.println(p1.returnSelf);

     //출력물
     //thisex.Person@16d65612

 
 }
}
----------------------------------------------------------------------
# Doit java -클래스와 객체2(2)

객체간의 협력

메서드 
승차
정보

학생
-학생이름
-돈
-학년

public class Student {
	
	String studentName;
	int money;
	
	public Student(String studentName,int money) {
		this.studentName = studentName;
		this.money = money;
	}
	
	public void takeBus(Bus bus) {
		bus.take(1000);
		this.money -= 1000;
	}
	
	public void takeSubway(Subway subway) {
		subway.take(1200);
		this.money -= 1200;
	}
	
	public void takeTaxi(Taxi taxi) {
		taxi.take(10000);
		this.money -= 10000;
	}
	
	public void showInfo() {
		System.out.println(studentName + "님의 남은 돈은 " + money + "원 입니다.");
	}

}

버스
-번스번호
-승객 수
-돈

public class Bus {
	
	int busNumber;
	int passengerCount;
	int money;
	
	public Bus(int busNumber) {
		this.busNumber = busNumber;
	}
	
	public void take(int money) {
		this.money += money;
		passengerCount++;
		
	}
	
	public void showBusInfo() {
		System.out.println(busNumber + "번의 승객수는 " + passengerCount + "명 이고, 수입은 " +  money + "원 입니다." );
	}
}


지하철
-지하철 노선번호
-승객 수
-돈

public class Subway {
	
	int lineNumber;
	int passengerCount;
	int money;
	
	public Subway(int lineNumber) {
		this.lineNumber = lineNumber;
	}
	
	public void take(int money) {
		this.money += money;
		passengerCount++;
		
	}
	
	public void showSubwayInfo() {
		System.out.println(lineNumber + "번의 승객수는 " + passengerCount + "명 이고, 수입은 " +  money + "원 입니다." );
	}
}


public class takeTransTest {

	public   void main(String[] args) {
		
		Student  studentJ = new Student("james", 5000);
		Student  studentT = new Student("Tomas", 10000);
		
		Bus bus100 = new Bus(100);
		Bus bus500 = new Bus(500);	
		studentJ.takeBus(bus100);
		
		Subway greenSubway = new Subway(2);
		studentT.takeSubway(greenSubway);
		

		studentJ.showInfo();
		studentT.showInfo();
		
		
		bus100.showBusInfo();
		greenSubway.showSubwayInfo();
	
		
	
	}

}
--------------------------------------------------------------------
# Doit java -클래스와 객체2(3)

static 변수

static int seralNum
sttic  자료형  변수이름
sttic  --> 여러개의 인스턴스가 같은 메모리의 값을 공유하기 위해 사용

student -> new 예약어로  힙메모리에 인스턴스 생성
Static-> 공유되는 메모리는 따로 사용한다. 
         즉,전체프로그램이 메모리에 load 될때 할당받는다.
         상수, 리터럴, static 변수등이 이 메모리를 사용한다.

static 변수는 클래스변수라고도 함.

ex)
기준되는 숫자에 +를하여 각 학번을 부여할 수 있다. == static 변수로 사용
A학생 10001학번

B학생 10002학번

public class Student{
   static inr serialNum = 10000;
   int StudetnId;
   String studentName;

   public Student(){
      serialNum ++;
      StudetnId = serialNum;
   }
}

public class StudentTest1 {

	public  static void main(String[] args) {
		
		Student  studentJ = new Student();
      System.out.println(studentJ.studentId);

		Student  studentT = new Student();
      System.out.println(studentJ.studentId);
	
      //c출력값
      //10001
      //10002
	
	}

}

### 지역변수
함수 내부에 선언하며 함수 내부에서만 사용한다. 
스택 메모리에 형성되며, 함수가 호출될떄 생성되고 함수가 끝나면 소멸한다.

### 멤버변수(인스턴스 변수)
클래스 멤버변수로 선언한다.
클래스 내부에서만 사용하고 private이 아니면 참조변수로 다른 클래스에서 사용 가능하다.
힙 메모리에 형성되며, 인스턴스가 생서될때 힙에 생성되고, 가비지 컬럭터가 메모리를 수거할때 소멸한다.

### static 변수 (클래스변수)
static 예약어를 사용하여 클래스 내부에 선언한다.
클래스 내부에서만 사용하고 private이 아니면 클래스 이름으로 다른 클래스에서 사용 가능하낟.
데이터 영역 메모리에 형성된다.
프로그램이 처음 시작할때 상수와 함께 데이터 영역에 생성되고 프로그램이 끝나고 메모리를 해제할 때 소멸된다.
------------------------------------------------------
#  Doit java -클래스와 객체2(4)

static 응용 : singleton 패턴
전 시스템에 단 하나의 인스턴스만이 존재하도록 구현하는 방식

public class Companey{
   private static Company instance = new company(); // 인스턴스는 단 1개로 생성이 되었고, 이 내부에서만 사용할 수 있다

   private Company(){} // 외부에서 다른 생서자를 함부로 생성 할 수 없게끔 private  기본 생성자를 지정

   public static Company geyInstance(){ //외부에서 가져다 쓸 수 있도록 해쥼
      return instance;
   }
}


public class CompaneyTest{

   public Static void main(Stirng[] args){
      Company c1 = Company.geyInstance();

      Company c2 = Company.geyInstance();
      
      System.out.println(c1);
     //출력물
     //singleton.Company@311d617d
     System.out.println(c2);
     //출력물
     //singleton.Company@311d617d

     
   }
}
------------------------------------------------------------------
# 배열과 ArrayList(1)

배열 : 동일한 자료가 연속, 순치적으로 있는 자료구조
여러개의 데이터가 동일한 자료형


0 1 2 3 4==>배열 사이즈 : 20 byte, 배열 길이 : 5
a b c d e
배열은 고정길이로 선언해야한다.
중간에 자료를 생략(공백)할 수 없다.
fix된 배열에 새로운 내용을 추가할 시 새로운 배열을 만들어 기존것을 복사하고, 새로운 내역도 추가한다.
 ### 배열 선언하기
 방법1)
 자료형[] 배열이름 = new 자료형[개수]
 int[] arr = new int[10]
 방법2)
 자료형 배열이름[] = new 자료형[개수]
 int arr[] = new int[10]

<img src="./array.jpg/"  width="700" height="370">


 방법2)
 자료형 배열이름[] = new 자료형[개수]
 int arr[] = new int[10]

<img src="./array.jpg/"  width="700" height="370">
