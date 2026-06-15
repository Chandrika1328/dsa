import 'dart:math';

void main(){
  List<int> nums = [4, 7, 1, 0];
  leaders(nums);

}

void leaders(List<int> nums){
  List<int> ans = [];
  int n = nums.length;
  int maxi = nums[n-1];
  for(int i = n-1; i>=0; i--){
    if(nums[i] >= maxi){
      ans.add(nums[i]);
    }
    maxi = max(maxi,nums[i]);
  }

  print("$ans");
}