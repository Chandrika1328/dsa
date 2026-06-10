  void main(){
    List<int> a  = [2,6,5,8,11];
  int target = 14;
  bool fund = false;
  a.sort();
  int left = 0; int right = a.length -1;
  while(left<right){
    int sum = a[left] +a[right];
    if(sum == target){
      fund = true;
      break;
    
    }
    else if(sum< target) left++;
    else right--;
  }
  print("$fund");
  }