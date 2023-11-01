import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _titleTEcontroller = TextEditingController();
  final TextEditingController _productCodeTEcontroller =
      TextEditingController();
  final TextEditingController _quantityTEcontroller = TextEditingController();
  final TextEditingController _priceTEcontroller = TextEditingController();
  final TextEditingController _totalpriceTEcontroller = TextEditingController();
  final TextEditingController _descriptionTEcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _titleTEcontroller,
                decoration: InputDecoration(
                  label: Text('Title'),
                  hintText: 'Enter product title',
                ),
              ),
              TextFormField(
                controller: _productCodeTEcontroller,
                decoration: InputDecoration(
                  label: Text('Product Code'),
                  hintText: 'Enter product code',
                ),
              ),
              TextFormField(
                controller: _quantityTEcontroller,
                decoration: InputDecoration(
                  label: Text('Quantity'),
                  hintText: 'Enter product Quantity',
                ),
              ),
              TextFormField(
                controller: _priceTEcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Price'),
                  hintText: 'Enter product price',
                ),
              ),
              TextFormField(
                controller: _totalpriceTEcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Total Price'),
                  hintText: 'Enter product Total price',
                ),
              ),
              TextFormField(
                controller: _descriptionTEcontroller,
                maxLines: 5,
                decoration: InputDecoration(
                  label: Text('Description'),
                  hintText: 'Enter product description',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )
                  ),
                  onPressed: () {},
                  child: Text('Add'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTEcontroller.dispose();
    _productCodeTEcontroller.dispose();
    _quantityTEcontroller.dispose();
    _priceTEcontroller.dispose();
    _totalpriceTEcontroller.dispose();
    _descriptionTEcontroller.dispose();
    super.dispose();
  }
}
