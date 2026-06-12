void main(){
  List<int> a = [2,3,3,3,1,2,2,3,3];
  print(majorityElement(a));

}
  int majorityElement(List<int> nums) {
    int count = 0; 
    int el = 0;

    for(int i = 0; i<nums.length; i++){
      if(count == 0){
        count = 1;
        el = nums[i];

      }
      else if(el == nums[i]){
        count++;

      }
      else{
        count--;
      }
    }


int feq = 0;
    for(int i = 0; i<nums.length; i++){
      if(el == nums[i]){
       feq++;
      }
      if(feq > nums.length ~/ 2){
    return nums[i];
   }
    }

return -1;
   
  }
