//Program to find the Largest of Three Numbers
void main() {
    int largest=findLargest(3,7,5);
    print("The largest number is: $largest");
}

int findLargest(int a,int b,int c) {
    if (a>b && a>c) {
        return a;
    }else if (b>c) {
        return b;
    } else{
        return c;
    }
}