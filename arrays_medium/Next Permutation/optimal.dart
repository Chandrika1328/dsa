void main(){
  List<int> nums = [1,2,3];
  permutation(nums);
  print("$nums");

}

void permutation(List<int> nums){
int brk = -1;
int n = nums.length;
  for(int i = n-2; i>=0; i--){
    if(nums[i] < nums[i+1]){
     brk = i;
     break;
   }
 }
if(brk == -1){
reverse(nums,0,n-1);
return;
}

for(int i = n-1; i>brk; i--){
  if(nums[i] > nums[brk]){
    int temp = nums[i];
    nums[i] = nums[brk];
    nums[brk] = temp;
    break;
  }
}

reverse(nums,brk+1,n-1);

}

void reverse(List<int> nums, int start , int end){
  while(start<end){
    int temp = nums[start];
    nums[start] = nums[end];
    nums[end] = temp;
    start++;
    end--;
  }
}