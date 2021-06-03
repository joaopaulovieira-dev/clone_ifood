import 'package:clone_ifood/core/app_colors.dart';
import 'package:clone_ifood/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ButtonFilters extends StatelessWidget {
  ButtonFilters({Key? key}) : super(key: key);

  final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 12.0),
    textStyle: AppTextStyles.buttonFilters,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
          ),
          OutlinedButton(
            onPressed: null,
            child: Row(
              children: <Widget>[
                Text(
                  "Ordenar",
                  style: TextStyle(
                    color: AppColors.greyButtonFilters,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 17,
                ),
              ],
            ),
            style: outlineButtonStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.00),
          ),
          OutlinedButton(
            onPressed: null,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.directions_walk,
                  size: 17,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Pra retirar",
                  style: TextStyle(
                    color: AppColors.greyButtonFilters,
                  ),
                ),
              ],
            ),
            style: outlineButtonStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.00),
          ),
          OutlinedButton(
            onPressed: null,
            child: Text(
              "Entrega grátis",
              style: TextStyle(
                color: AppColors.greyButtonFilters,
              ),
            ),
            style: outlineButtonStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.00),
          ),
          OutlinedButton(
            onPressed: null,
            child: Row(
              children: <Widget>[
                Text(
                  "Vale-refeição",
                  style: TextStyle(
                    color: AppColors.greyButtonFilters,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 17,
                ),
              ],
            ),
            style: outlineButtonStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.00),
          ),
          OutlinedButton(
            onPressed: null,
            child: Row(
              children: <Widget>[
                Text(
                  "Distância",
                  style: TextStyle(
                    color: AppColors.greyButtonFilters,
                  ),
                ),
                Text(
                  "  |",
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 17,
                  color: Colors.grey[900],
                ),
              ],
            ),
            style: outlineButtonStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.00),
          ),
          OutlinedButton(
            onPressed: null,
            child: Text(
              "Entrega Parceira",
              style: TextStyle(
                color: AppColors.greyButtonFilters,
              ),
            ),
            style: outlineButtonStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.00),
          ),
          OutlinedButton(
            onPressed: null,
            child: Text(
              "Super Restaurante",
              style: TextStyle(
                color: AppColors.greyButtonFilters,
              ),
            ),
            style: outlineButtonStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.00),
          ),
          OutlinedButton(
            onPressed: null,
            child: Row(
              children: <Widget>[
                Text(
                  "Filtros",
                  style: TextStyle(
                    color: AppColors.greyButtonFilters,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.sort_outlined,
                  size: 17,
                ),
              ],
            ),
            style: outlineButtonStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.00),
          ),
        ],
      ),
    );
  }
}
