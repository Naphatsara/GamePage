void main (){
  var f = (int a,int b) => a+b;// arrow syntax เอา return มารวมเป็นนิพจน์ กรณีมี 1 statement
  /*var f = (int a,int b){ // function expression > นิพจน์ฟังก์ชัน / anonymous
    return a+b;
  };*/
  //var f = sum; //เอา function sum เก็บในตัวแปร f
  var result = f(1,2);
  print(result);
}

int sum(int a,int b){ // function declaration > การประกาศฟังก์ชัน
  return a+b;

}