void main(){
List<int> nums = [2,0,2,1,1,0];
sortColors(nums);
print(nums);

   
}
void sortColors(List<int> nums) {
    int count1 = 0;
    int count2 = 0;
    // int count3 = 0;
    for(int i = 0; i<nums.length; i++){
        if(nums[i] == 0) count1++;
          if(nums[i] == 1) count2++;
          
        
    }
    for(int i =0; i<count1; i++){
        nums[i] = 0;
    }
    for(int i = count1; i<count1 + count2; i++){
        nums[i] = 1;
    }
    for(int i = count1 + count2; i<nums.length; i++){
        nums[i] = 2;
    }
  }