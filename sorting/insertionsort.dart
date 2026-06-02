void main(){
  List<int> a = [13,46,24,52,20,9];
  print(insertionsort(a));

}

List<int> insertionsort(List<int> a){
  for(int i = 1; i<a.length; i++){
    int j = i;
    while(j>0 && a[j-1]>a[j]){
      int temp = a[j];
      a[j] = a[j-1];
      a[j-1] = temp;
      j--;
    }
  }
  
  return a;
}