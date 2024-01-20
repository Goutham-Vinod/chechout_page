// ignore_for_file: public_member_api_docs, sort_constructors_first
class CreditCardDetailsModel {
  int index;
  String? cardNumber;
  String? securityCode;
  String? cardHolder;
  String? expDate;
  String? zipCode;
  String? cardType;
  CreditCardDetailsModel({
    required this.index,
    this.cardNumber,
    this.securityCode,
    this.cardHolder,
    this.expDate,
    this.zipCode,
    this.cardType,
  });
}
