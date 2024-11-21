//Program to Check Even or Odd


void main() {
    String result=checkEvenOdd(8);
    print("The number is $result .");
}

String checkEvenOdd(int number) {
    return(number%2==0)? "Even":"Odd";
}