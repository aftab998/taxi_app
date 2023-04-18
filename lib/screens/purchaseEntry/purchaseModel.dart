import 'package:flutter/material.dart';

class PurchaseModel{

  final int? id;
  final String? productName;
  final String? vendorName;
  final int? purchaseQuantity;
  final int? purchasePrice;
  final String? paymentWay;
  final String? purchaseDate;

  PurchaseModel(
      this.id,
      this.productName,
      this.vendorName,
      this.purchaseQuantity,
      this.purchasePrice,
      this.paymentWay,
      this.purchaseDate);



  PurchaseModel.fromMap(Map<String, dynamic> res):
        id = res['id'],
        productName = res['productName'],
        vendorName = res['vendorName'],
        purchaseQuantity= res['purchaseQuantity'],
        purchasePrice = res['purchasePrice'],
        paymentWay = res['paymentWay'],
        purchaseDate= res['purchaseDate'];


  Map<String, Object?> toMap(){
    return {
      "id" : id,
      "productName" : productName,
      "vendorName" : vendorName,
      "purchaseQuantity" : purchaseQuantity,
      "purchasePrice" : purchasePrice,
      "paymentWay" : paymentWay,
      "purchaseDate" : purchaseDate,
    };
  }



}