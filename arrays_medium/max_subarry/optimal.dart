import 'dart:io';
void main(){
List<int> nums = [-2,-3,4,-1,-2,1,5,-3];
print(maxSubArray(nums));
}
 int maxSubArray(List<int> nums) {
  int max = nums[0];
  int sum = 0;
  int ansstart = 0;
  int ansend = 0;
  int start = 0;

  for(int i=0 ; i<nums.length; i++){
    if(sum ==0)  start = i;
    sum = sum + nums[i];
    if(sum > max){
      max = sum;
      ansstart = start;
      ansend = i;
    }
    if(sum<0){
      sum = 0;
    }
  }

  for(int i = ansstart; i<= ansend; i++){
    stdout.write("${nums[i]} ");

  }
print("");
  return max;
  }