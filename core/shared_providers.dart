import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaymentMethods {}

class Checkout {
  final PaymentMethods paymentMethodsProvider;

  Checkout({required this.paymentMethodsProvider});
}

///Provider 1
final _paymentMethodsProvider = Provider<PaymentMethods>(
  (ProviderReference _) => PaymentMethods(),
);

///Provider 2
final checkoutProvider = Provider<Checkout>(
  (ProviderReference ref) => Checkout(
    paymentMethodsProvider: ref.watch(_paymentMethodsProvider),
  ),
);
