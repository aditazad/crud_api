import 'package:crud_api/screens/add_new_product_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return productActionDialog(context);
            });
      },
      leading: Image.network(
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        width: 80,
      ),
      title: const Text('Product name'),
      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Product Code'),
              SizedBox(width: 24,),
              Text('Total Price'),
            ],
          ),
          Text('Product Decription')
        ],
      ),
      trailing: Text('\$120'),
    );
  }

  AlertDialog productActionDialog(BuildContext context) {
    return AlertDialog(
              title: Text('Select an option'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Edit'),
                    leading: Icon(Icons.edit),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AddNewProductScreen(),
                        ),
                      );
                    },
                  ),
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    title: const Text('Delete'),
                    leading: const Icon(Icons.delete_outline),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
  }
}
