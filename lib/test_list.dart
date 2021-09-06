/*1กค-5533-57
  2กค-6087-61
  3กค-6230-41
  4กค-5916-44
  5กค-6166-50
*/
void main() {
  List list = [1, 2, 3, 4, 5];
  List list2 = list.map((e) {
    return {'data': e};
  }).toList();
  print(list2);
  /*const KEY_DATE = 'date'; //แก้ปัญหาการพิมพ์ค่า key ผิด
  List<Map<String, dynamic>> reportList = [
    {KEY_DATE: '1กค', 'case': 5533, 'death': 57},
    {KEY_DATE: '2กค', 'case': 6087, 'death': 61},
    {KEY_DATE: '3กค', 'case': 6230, 'death': 41},
    {KEY_DATE: '4กค', 'case': 5916, 'death': 44},
    {KEY_DATE: '5กค', 'case': 6166, 'death': 50},
  ];*/

  /* for (var i = 0; i < reportList.length; i++) {
    print('วันที่ ${reportList[i][KEY_DATE]}, '
        'ติดเชื้อ ${reportList[i]['case']}, '
        'เสียชีวิต ${reportList[i]['death']}');
  }*/

  //var f = (Map<String, dynamic> i){ //นิพจน์ฟังก์ชัน => ฟังก์ชันถือเป็น obj
  // print(i); i แทน map 1 2 3 4 5
  // };
  //reportList.forEach(f);

  /* reportList.forEach((Map<String, dynamic> item){
    print('วันที่ ${item[KEY_DATE]}, '
        'ติดเชื้อ ${item['case']}, '
        'เสียชีวิต ${item['death']}');
  });*/ //ต้องประกาศพารามิเตอร์เป็นชนิดเดียวกับตัวที่เรียก forEach

  //arrow syntax
  // reportList.forEach((Map<String, dynamic> item) => print('วันที่ ${item[KEY_DATE]},'ติดเชื้อ ${item['case']},'เสียชีวิต ${item['death']}'));
}
