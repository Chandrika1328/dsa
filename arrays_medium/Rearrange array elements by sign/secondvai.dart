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

for(int i = 0; i<nums.length; i++){
  if(pos.length>neg.length){
    for(int i = 0; i<neg.length; i++){
      nums[2*i] = pos[i];
      nums[2*i+1] = neg[i];
    
    }
    //remaining positive elements 
    int index = neg.length * 2;
    
    for(int i = neg.length; i<pos.length; i++){
      nums[index] = pos[i];
      index++;
    }
  }
  else{
     for(int i = 0; i<pos.length; i++){
      nums[2*i] = pos[i];
      nums[2*i+1] = neg[i];
    
    }
    //remaining positive elements 
    int index = pos.length * 2;
    
    for(int i = pos.length; i<neg.length; i++){
      nums[index] = neg[i];
      index++;
    }
  }
}
  return nums;
}