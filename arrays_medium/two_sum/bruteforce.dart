void main(){
List<int> a  = [2,6,5,8,11];
int target = 14;
for(int i = 0; i<a.length; i++){
  for(int j = i+1; j<a.length; j++){
    if(a[i] + a[j] == target){
      print([i,j]);
    }
  }
}

}