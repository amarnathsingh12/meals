import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

//this is for only one item shown on screen like Italian etc..
class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.onSelectCategory});

  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //Inkwell is used to make tapping screen and for decoration
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      // borderRadius: BorderRadius.circular(16),
      child: Container(
        //beneficial for decoration
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              //this is for only one item rectangle like itLIan, german etc...
              colors: [
                category.color.withOpacity(0.55),
                category.color.withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          //this text is for italian
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
      ),
    );
  }
}
