void main(){
  List<int> nums = [4, 7, 1, 0];
  leaders(nums);

}

void leaders(List<int> nums){
  List<int> ans = [];
  for(int i = 0; i<nums.length; i++){
  bool leader = true;
  for(int j = i+1; j <nums.length; j++){
    if(nums[j] > nums[i] ){
      leader = false;
      break;

    }

  }
  if(leader == true){
    ans.add(nums[i]);
  }
  }
  print("$ans");
}