void main(){
  List<int> nums = [3,1,-2,-5,2,-4];
  print(rearrangeNum(nums));

}
List<int> rearrangeNum(List<int> nums){
  List<int> ans = List.filled(nums.length,0);
  int pos = 0; int neg =1;
  for(int i = 0; i<nums.length; i++){
    if(nums[i]<0){
      ans[neg] = nums[i];
      neg += 2;
    }
    else{
      ans[pos] = nums[i];
      pos += 2;
    }
  }


  return ans;
}