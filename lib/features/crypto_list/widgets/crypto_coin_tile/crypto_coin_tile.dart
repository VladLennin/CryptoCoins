import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imageUrl),
      title: Text(coin.name, style: theme.textTheme.bodyMedium),
      subtitle: Text(
          "${coin.priceInUSD < 1 ? double.parse(coin.priceInUSD.toStringAsFixed(6)) : double.parse(coin.priceInUSD.toStringAsFixed(2))}\$",
          style: theme.textTheme.labelSmall),
      trailing: const Icon(
        Icons.arrow_forward_ios,
      ),
      onTap: () {
        Navigator.of(context).pushNamed("/coin", arguments: coin.name);
      },
    );
  }
}
