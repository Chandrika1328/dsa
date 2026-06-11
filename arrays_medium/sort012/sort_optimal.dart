void main(){
List<int> nums = [2,0,2,1,1,0];
sortColors(nums);
print(nums);
}

void sortColors(List<int> nums) {
  int mid = 0; int low = 0; 
  int high = nums.length -1;
  while(mid<=high){
   if(nums[mid] == 0){
      int temp = nums[low];
        nums[low] = nums[mid];
        nums[mid] = temp;
        mid++;
        low++;

   }
   else if(nums[mid] == 1){
    mid++;

   }
   else{
     int temp = nums[high];
        nums[high] = nums[mid];
        nums[mid] = temp;
        high--;
   }

  }
}