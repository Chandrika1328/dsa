import 'dart:math';

void main(){
  List<int> nums = [7, 1, 5, 3, 6, 4];
  print(maxProfit(nums));

}
 int maxProfit(List<int> prices) {
    int minstock = prices[0];
    int profit = 0;
    for(int i = 1; i<prices.length; i++){
        int cost = prices[i] - minstock;
        profit = max(profit,cost);
        minstock = min(minstock,prices[i]);
    }
    return profit;
  }