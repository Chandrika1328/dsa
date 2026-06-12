import 'dart:math';

void main(){
List<int> nums = [-2,-3,4,-1,-2,1,5,-3];
print(maxSubArray(nums));
}
 int maxSubArray(List<int> nums) {
  int sum = 0;
  int maxsum = nums[0];

  for(int i = 0; i<nums.length; i++){
    sum = 0;
    for(int j = i; j<nums.length; j++){
      sum = sum + nums[j];
     
        maxsum = max(maxsum,sum);
      
    }
  }
    return maxsum;
  }