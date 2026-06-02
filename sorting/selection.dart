void main(){
  List<int> a = [13,46,24,52,20,9];
  print(selectionsort(a));

}

List<int> selectionsort(List<int> a){
  int min = 0;
  int n = a.length;
  for(int i = 0; i<=n-2; i++){
    min = i;
    for(int j = i+1; j<=n-1; j++){
      if(a[j]<a[min] ){
        min = j;
      }
    }
    int temp = a[i];
    a[i] = a[min];
    a[min] = temp;

  }
  return a;
}