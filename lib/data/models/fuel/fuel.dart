class Fuel {
  final int id;
  final int fuelPointId;
  final int productCode;
  final String? productName;
  final double productPrice;
  Fuel({
    required this.id,
    required this.productPrice,
    required this.productName,
    required this.fuelPointId,
    required this.productCode,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Fuel &&
              runtimeType == other.runtimeType &&
              fuelPointId == other.fuelPointId &&
              productCode == other.productCode &&
              productName == other.productName &&
              productPrice == other.productPrice;

  @override
  int get hashCode =>
      fuelPointId.hashCode ^
      productCode.hashCode ^
      productName.hashCode ^
      productPrice.hashCode;
}
