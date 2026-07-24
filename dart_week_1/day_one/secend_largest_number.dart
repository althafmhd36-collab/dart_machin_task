void main(){

List<int> numbers = [10,5,8,11,3,8];
List<int> uniqNumber = numbers.toSet().toList();


int largest = uniqNumber[0];
int secendLargest = uniqNumber[1];

for (int i=1; i < uniqNumber.length; i++){
  if(uniqNumber[i] > largest){
    secendLargest = largest;
  }else if (uniqNumber[i] > secendLargest && uniqNumber[i] != largest){
    secendLargest = uniqNumber[1];
  }
}

 print('second Largest $secendLargest');
}