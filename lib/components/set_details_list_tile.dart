import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/edit_text_form_field.dart';
import '../utils/app_colors.dart';

class SetDetailsListTile extends StatefulWidget {
  final String? setName;
  final String? player1Name;
  final String? player2Name;
  final Function? player1Score;
  final Function? player2Score;
  final Function? tieBreak1;
  final Function? tieBreak2;
  final TextEditingController? player1Controller;
  final TextEditingController? player2Controller;
  final TextEditingController? tie1Controller;
  final TextEditingController? tie2Controller;

  const SetDetailsListTile(
      {Key? key,
      required this.setName,
      required this.player1Name,
      required this.player2Name,
      required this.player1Score,
      required this.player2Score,
      required this.tieBreak1,
      required this.tieBreak2,
      required this.player1Controller,
      required this.player2Controller,
      required this.tie1Controller,
      required this.tie2Controller})
      : super(key: key);

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
          Text(
            widget.setName!,
            style: TextStyle(
                fontSize: 18.0, color: aBlack, fontWeight: FontWeight.bold),
          ),
          Table(
            children: [
              TableRow(
                children: [
                  Text(
                    widget.player1Name!,
                    style: TextStyle(color: aLightGray, fontSize: 14.0),
                  ),
                  Text(
                    widget.player2Name!,
                    style: TextStyle(color: aLightGray, fontSize: 14.0),
                  ),
                  Center(
                      child: Text(
                    'Tie Breaker',
                    style: TextStyle(color: aLightGray, fontSize: 14.0),
                  )),
                ],
              ),
              TableRow(
                children: [
                  EditTextFormField(
                    maxLength: 3,
                    inputFormatter: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r'^\d+?\d*'),
                      )
                    ],
                    textController: widget.player1Controller,
                    textInputType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onTap: () {},
                    onTextChange: (String? score) =>
                        widget.player1Score!(score),
                  ),
                  EditTextFormField(
                    maxLength: 3,
                    inputFormatter: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r'^\d+?\d*'),
                      )
                    ],
                    textController: widget.player2Controller,
                    textInputType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onTap: () {},
                    onTextChange: (String? score) =>
                        widget.player2Score!(score),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: EditTextFormField(
                          maxLength: 3,
                          inputFormatter: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'^\d+?\d*'),
                            )
                          ],
                          textController: widget.tie1Controller,
                          textInputType: TextInputType.number,
                          textAlign: TextAlign.center,
                          onTap: () {},
                          onTextChange: (String? tie1) =>
                              widget.tieBreak1!(tie1),
                        ),
                        flex: 1,
                        fit: FlexFit.tight,
                      ),
                      Flexible(
                        child: EditTextFormField(
                          maxLength: 3,
                          inputFormatter: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'^\d+?\d*'),
                            )
                          ],
                          textController: widget.tie2Controller,
                          textInputType: TextInputType.number,
                          textAlign: TextAlign.center,
                          onTap: () {},
                          onTextChange: (String? tie2) =>
                              widget.tieBreak2!(tie2),
                        ),
                        flex: 1,
                        fit: FlexFit.tight,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Divider(
            height: 1,
            color: aPartGray10,
            thickness: 1,
            indent: 5,
            endIndent: 5,
          )
        ],
      ),
    );
  }
}
