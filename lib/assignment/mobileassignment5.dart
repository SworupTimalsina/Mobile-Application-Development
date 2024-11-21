//Program to Reverse a String

void main(){
    String original= "hello";
    String reversed = reverseString(original);
    print("Original:$original");
    print("Reversed:$reversed");
}
String reverseString(String str) {
    return str.split('').reversed.join('');
}