void main(){
List<int> nums = [-2,-3,4,-1,-2,1,5,-3];
print(maxSubArray(nums));
}
 int maxSubArray(List<int> nums) {
  int max = nums[0];
  int sum = 0;
  for(int i=0 ; i<nums.length; i++){
    sum = sum + nums[i];
    if(sum > max){
      max = sum;

    }
    if(sum<0){
      sum = 0;
    }
  }
  return max;
  }