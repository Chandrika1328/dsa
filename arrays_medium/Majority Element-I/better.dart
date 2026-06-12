void main(){
  List<int> a = [2,3,3,3,1,2,2,3,3];
  print(majorityElement(a));

}
  int majorityElement(List<int> nums) {
    Map<int, int> feq = {};
    for(int i = 0; i<nums.length; i++){
      feq[nums[i]] = (feq[nums[i]]??0) + 1;
    
    }

    for(var entry in feq.entries){
      if(entry.value> nums.length ~/ 2){
        return entry.key;

      }
    }
  return -1;
  }
