void main() {

    //* where() สำหรับกรองข้อมูลใน List
    List<int> data = [1,2,3,4,5,6,7,8,9,10];
    print(data);

    List<int> result = data.where((item)=>item % 2 == 0).toList();
    print(result);

    /* //? isEven และ isOdd ใช้แทน % ได้
    	•	isEven → เลขคู่
	    •	isOdd → เลขคี่
    */
    List<int> resultE = data.where((item)=>item.isEven).toList();
    List<int> resultO = data.where((item)=>item.isOdd).toList();
    print(resultE);
    print(resultO);

    //* where() สำหรับกรอง String ใน List
    List<String> menu = ["ผัดไทยหมูกรอบ", "ต้มยำหมูกรอบ", "ผัดคะน้าหมูกรอบ", "แกงจืดหมูกรอบ", "ผัดเผ็ดหมูกรอบ"];
    List<String>resultM = menu.where((item)=>item.startsWith("ผัด")).toList();
    print(resultM);

    //* removeWhere() สำหรับลบข้อมูลใน Map
    Map<String, int> voter = {
        "Wafer": 20,
        "Got": 23,
        "Diw": 17,
        "Kla": 19
    };
    voter.removeWhere((key,  value)=>value<18);
    print(voter);
}