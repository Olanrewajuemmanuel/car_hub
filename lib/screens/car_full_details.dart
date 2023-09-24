import 'package:car_hub/models/car_details.dart';
import 'package:flutter/material.dart';

class CarFullDetails extends StatefulWidget {
  const CarFullDetails({super.key, required this.details});

  final CarDetails details;

  @override
  State<CarFullDetails> createState() => _CarFullDetailsState();
}

class _CarFullDetailsState extends State<CarFullDetails> {
  final TextEditingController _amountController =
      TextEditingController(text: '1');

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  Widget _buildAmountSelectors(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 36.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
            DecoratedBox(
                decoration: const BoxDecoration(),
                child: Text(_amountController.text)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            foregroundColor: Theme.of(context).colorScheme.onSecondary,
            backgroundColor: widget.details.categoryColor!,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ]),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: widget.details.categoryColor!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.details.model,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 64.0,
                        ),
                  ),
                  const SizedBox(
                    height: 128,
                  ),
                  const Text(
                    'Price',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    '\$${widget.details.price.toInt()}',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                transform: Matrix4.translationValues(0, -20, 0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0, left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Colors'),
                              const SizedBox(
                                height: 6,
                              ),
                              CircleAvatar(
                                backgroundColor: widget.details.categoryColor,
                                radius: 10,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 48,
                          ),
                          Text(
                            widget.details.description.trim(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.grey[800], height: 2.0),
                          ),
                          const SizedBox(
                            height: 48,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildAmountSelectors(context),
                                IconButton(
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    size: 36.0,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.shopping_cart,
                                  size: 32.0,
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 1.5,
                                height: 50.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    backgroundColor:
                                        widget.details.categoryColor,
                                    foregroundColor: Theme.of(context)
                                        .colorScheme
                                        .background,
                                  ),
                                  child: const Text('BUY NOW'),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Container(
                        transform: Matrix4.translationValues(
                            MediaQuery.of(context).size.width / 2.2, -120, 0),
                        child: Hero(
                          tag: widget.details.model,
                          child: Image.asset('assets/images/model x.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
