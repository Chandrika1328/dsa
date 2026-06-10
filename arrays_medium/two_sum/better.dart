void main(){
  Map<int, int> mpp = {};
  List<int> a = [2,6,5,8,11];
  int target = 14;
  for(int i = 0; i<a.length; i++){
    int num = a[i];
    int more = target - num;
    if(mpp.containsKey(more)){
      print("${mpp[more]},$i");
    }
    mpp[num] = i;

  }
}