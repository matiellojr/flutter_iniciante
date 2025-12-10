extension ParaPeso on double {
  String paraPeso() {
    return "${toStringAsFixed(2)} Kg";
  }
}

extension ParaAltura on int {
  String paraAltura() {
    return "$this Cm";
  }
}