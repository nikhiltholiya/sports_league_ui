import 'package:flutter/material.dart';
import '../components/edit_text_form_field.dart';
import '../utils/app_colors.dart';

class SetDetailsListTile extends StatefulWidget {
  const SetDetailsListTile({Key? key}) : super(key: key);

  @override
  State<SetDetailsListTile> createState() => _SetDetailsListTileState();
}

class _SetDetailsListTileState extends State<SetDetailsListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Set 1 ',style: TextStyle(fontSize: 18.0,color: aBlack,fontWeight: FontWeight.bold),),
          Table(
            children: [
            TableRow(
            children: [
              Text('John s',style: TextStyle(color: aLightGray,fontSize: 14.0),),
              Text('Novak j',style: TextStyle(color: aLightGray,fontSize: 14.0),),
              Center(child: Text('Tie Breaker',style: TextStyle(color: aLightGray,fontSize: 14.0),)),
            ],
          ),
            TableRow(
            children: [
              EditTextFormField(
                textInputType: TextInputType.number,
                textAlign: TextAlign.center,
                onTap: (){},
                onTextChange: (){},
              ),
              EditTextFormField(
                textInputType: TextInputType.number,
                textAlign: TextAlign.center,
                onTap: (){},
                onTextChange: (){},

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(child: EditTextFormField(
                    textInputType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onTap: (){},
                    onTextChange: (){},

                  ),flex: 1,
                  fit: FlexFit.tight,),
                  Flexible(child: EditTextFormField(
                    textInputType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onTap: (){},
                    onTextChange: (){},

                  ),flex: 1,
                  fit: FlexFit.tight,),
                ],
              )
            ],
          ),],),
          Divider(height: 1, color: aPartGray10,thickness: 1,indent: 5,endIndent: 5,)
        ],
      ),
    );
  }
}
