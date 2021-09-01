import 'package:flutter/material.dart';

class CreateProduct extends StatefulWidget {
  // const CreateProduct({ Key? key }) : super(key: key);

  @override
  _CreateProductState createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Create Product"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Code'),
                  ),
                  TextFormField(
                      decoration: InputDecoration(hintText: ' Name'),
                      validator: (value) {
                        if (value.trim().isEmpty) {
                          return 'Product is required';
                        }
                        if (value.length < 3) {
                          return '\n Product name must have at least 3 characters';
                        }
                      }),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Price'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Discount'),
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        print("The Form Is Valid");
                      }
                    },
                    minWidth: double.infinity,
                    child: Text(
                      "Add Product",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
