void main(){
  List<int> nums = [3,1,-2,-5,2,-4];
  print(rearrangeNum(nums));

}

List<int> rearrangeNum(List<int> nums){
List<int> pos = [];
List<int> neg = [];

for(int i = 0; i<nums.length; i++){
  if(nums[i]<0){
    neg.add(nums[i]);
  }
  else{
    pos.add(nums[i]);
  }
}
for(int i = 0; i<nums.length/2;i++){
  nums[2*i] = pos[i];
  nums[2*i+1] = neg[i];
}

  return nums;
}