void main () {
  print(mul(5,6,9));
}

int mul(int first ,
int second ,
[int third=1,
int fourth=1,
int fifth=1]){
  return first*second*third*fourth*fifth;
}