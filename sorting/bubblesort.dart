void main(){
  List<int> a = [13,46,24,52,20,9];
  print(bubblesort(a));

}

List<int> bubblesort(List<int> a){
  int n = a.length;
  for(int i = n-1; i>=0; i-- ){
    int did_swap = 0;
    for(int j = 0; j<=i-1;j++){
      if(a[j]>a[j+1]){
        int temp = a[j];
        a[j] = a[j+1];
        a[j+1] = temp;
        did_swap = 1;

      }
      
    }
    if(did_swap == 0){
      break;
    }
  }
  
  return a;
}