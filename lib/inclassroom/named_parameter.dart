void main(){
  print(mul(first:2,second:3));
    print(mul(first:2,second:3,third:20));

}

int mul({
  required int? first,
  required int? second,
  int? third,
  int? fourth,
  int? fifth,
}) {
  return first! * second!* (third ?? 1) * (fourth ?? 1) * (fifth ?? 1);
}