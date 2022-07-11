void main(List<String> args) {
  print(convertToRP(150000000.toString()));
}

String convertToRP(String price) {
  var value;
  if (price.length > 2) {
    value = price;
    // value = value.replaceAll(RegExp(r'\D'), '');
    value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), '.');
  }
  return value;
}
