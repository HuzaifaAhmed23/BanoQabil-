Q1. Create a list of integers and find the longest subsequence of consecutive numbers in the list.
void main() {
  List<int> nums = [2, 3, 1, 5, 6, 7, 9, 10, 11, 12, 13, 8];
  List<int> longestSubsequence = [];
  
  for (int i = 0; i < nums.length; i++) {
    List<int> currentSubsequence = [nums[i]];
    
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[j] == currentSubsequence.last + 1) {
        currentSubsequence.add(nums[j]);
      } else {
        break;
      }
    }
    
    if (currentSubsequence.length > longestSubsequence.length) {
      longestSubsequence = currentSubsequence;
    }
  }
  
  print(longestSubsequence);
}
Q2.  Create a map that associates the names of cities with their latitude and longitude coordinates. Given a starting and ending city, find the shortest distance between them (you can assume a spherical Earth).

  import 'dart:math';

void main() {
  Map<String, List<double>> cities = {
    'New York City': [40.7128, -74.0060],
    'Los Angeles': [34.0522, -118.2437],
    'Chicago': [41.8781, -87.6298],
    'Houston': [29.7604, -95.3698],
    'Phoenix': [33.4484, -112.0740],
  };
  
  String startCity = 'New York City';
  String endCity = 'San Diego';
  
  double startLat = cities[startCity][0];
  double startLon = cities[startCity][1];
  
  double endLat = cities[endCity][0];
  double endLon = cities[endCity][1];
  
  double radius = 6371; // Earth's radius in km
  
  double dLat = _toRadians(endLat - startLat);
  double dLon = _toRadians(endLon - startLon);
  
  double a = pow(sin(dLat / 2), 2) +
             cos(_toRadians(startLat)) * cos(_toRadians(endLat)) *
             pow(sin(dLon / 2), 2);
             
  double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  
  double distance = radius * c;
  
  print('The shortest distance between $startCity and $endCity is $distance km.');
}

double _toRadians(double degrees) {
  return degrees * pi / 180;
}
Q3. Create a list of maps, where each map represents a product with a name, price, and quantity. Sort the list by the total cost of each product (price x quantity) in descending order.
void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'apple', 'price': 0.5, 'quantity': 100},
    {'name': 'banana', 'price': 0.3, 'quantity': 200},
    {'name': 'orange', 'price': 0.4, 'quantity': 150},
    {'name': 'grape', 'price': 0.8, 'quantity': 75},
    {'name': 'watermelon', 'price': 1.2, 'quantity': 30},
  ];
  
  products.sort((a, b) => (b['price'] * b['quantity']).compareTo(a['price'] * a['quantity']));
  
  print(products);
}
Q4. Create a map that associates the names of countries with their population and area. Find the top 5 largest countries by population density (population / area).
void main() {
  Map<String, Map<String, double>> countries = {
    'China': {'population': 1400, 'area': 9706961},
    'India': {'population': 1360, 'area': 3287590},
    'United States': {'population': 330, 'area': 9372610},
    'Indonesia': {'population': 270, 'area': 1910931},
    'Brazil': {'population': 210, 'area': 8515770},
    'Pakistan': {'population': 200, 'area': 881912},
    'Nigeria': {'population': 200, 'area': 923768},
    'Bangladesh': {'population': 170, 'area': 147570},
    'Russia': {'population': 145, 'area': 17125191},
    'Japan': {'population': 125, 'area': 377915},
  };

  var sortedCountries = countries.entries.toList()
    ..sort((a, b) => (b.value['population'] / b.value['area'])
        .compareTo(a.value['population'] / a.value['area']));

  print('Top 5 countries by population density:');
  for (var i = 0; i < 5; i++) {
    var country = sortedCountries[i];
    print('${i+1}. ${country.key}: ${country.value['population'] / country.value['area']}');
  }
}
Q5. Create a list of strings and find the longest common subsequence (substring) among all the strings in the list.
void main() {
  List<String> strings = ['Hello', 'Helly', 'Hollow', 'Helmet'];
  
  String longestCommonSubstring = strings.reduce((value, element) {
    int length = value.length < element.length ? value.length : element.length;
    String result = '';
    for (int i = 0; i < length; i++) {
      if (value[i] == element[i]) {
        result += value[i];
      } else {
        break;
      }
    }
    return result;
  });
  
  print('The longest common substring among all the strings is: $longestCommonSubstring');
}


