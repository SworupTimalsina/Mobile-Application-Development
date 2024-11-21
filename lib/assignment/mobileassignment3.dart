//Program to Find Factorial
void main(){
    int number = 5;
    int fact = factorial(number);
    print("The factorial of $number is $fact.");
}

int factorial(int n){
    if (n==0 || n==1) {
        return 1;
    }
    return n*factorial(n-1);
}