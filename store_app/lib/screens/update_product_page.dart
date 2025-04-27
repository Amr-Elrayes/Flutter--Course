import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/widgets/custom_buttom.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../services/update_product.dart';

// ignore: must_be_immutable
class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = "update_product_page";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? prouductName, description, image;

  String? price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel proudact =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Update Proudact',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                CustomTextField(
                    onChanged: (data) {
                      prouductName = data;
                    },
                    hintText: 'Product Name'),
                SizedBox(
                  height: 12,
                ),
                CustomTextField(
                    onChanged: (data) {
                      description = data;
                    },
                    hintText: 'Description'),
                SizedBox(
                  height: 12,
                ),
                CustomTextField(
                    inputType: TextInputType.number,
                    onChanged: (data) {
                      price = data;
                    },
                    hintText: 'Price'),
                SizedBox(
                  height: 12,
                ),
                CustomTextField(
                    onChanged: (data) {
                      image = data;
                    },
                    hintText: 'Image'),
                SizedBox(
                  height: 70,
                ),
                CustomButton(
                    onTap: () async{
                      isLoading = true;
                      setState(() {});
                      try {
                        await Update_product(proudact);
                        print('Success');
                      } catch (e) {
                        print(e.toString());
                      }
                      isLoading = false;
                      setState(() {});
                      isLoading = false;
                      setState(() {});
                    },
                    content: 'Update'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> Update_product(ProductModel proudact) async{
    await UpdateProduct().updateProduct(
      id: proudact.id,
        title: prouductName == null ? proudact.title : prouductName!,
        price: price == null ? proudact.price.toString() : price!,
        description: description == null ? proudact.description : description!,
        image: image == null ? proudact.image : image!,
        category: proudact.category);
  }
}
