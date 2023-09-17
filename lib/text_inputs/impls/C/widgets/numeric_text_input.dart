part of '../text_input_c.dart';

class _NumericTextInput extends StatefulWidget {
  const _NumericTextInput({
    Key? key,
    required this.controller,
    required this.label,
    required this.hint,
    this.validator,
    this.keyboardType,
    this.focusNode,
    this.textInputAction,
    this.enabled,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onTap,
    required this.cornerRadius,
  }) : super(key: key);
  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final double cornerRadius;

  @override
  State<_NumericTextInput> createState() => _NumericTextInputState();
}

class _NumericTextInputState extends State<_NumericTextInput> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    final focusedColor = context.theme.extension<FyTextColor>()!.textSevenColor;
    final unfocusedColor =
        context.theme.extension<FyTextColor>()!.textThreeColor;
    Color getTitleColor() {
      if (_isFocused) {
        return focusedColor;
      } else {
        return unfocusedColor;
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: getTitleColor(),
          ),
        ),
        const Gap(5.0),
        FocusScope(
          child: Focus(
            onFocusChange: (value) {
              setState(() {
                _isFocused = value;
              });
            },
            child: TextFormField(
              style: TextStyle(
                  fontSize: 14,
                  color: context.theme.extension<FyTextColor>()!.textTenColor),
              controller: widget.controller,
              keyboardType: widget.keyboardType ?? TextInputType.number,
              validator: widget.validator,
              decoration: InputDecoration(
                hintText: widget.hint,
                // label: Text(widget.label),
                enabled: widget.enabled ?? true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.cornerRadius),
                  borderSide: BorderSide(
                    color: context.fyColors.textFourColor,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                hintStyle: TextStyle(
                    color: context.fyColors.textFiveColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                labelStyle: TextStyle(
                    color: context.fyColors.textSixColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: context.fyColors.textTenColor, width: 1.5),
                    borderRadius: BorderRadius.circular(widget.cornerRadius)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.cornerRadius),
                    borderSide: BorderSide(
                        color:
                            context.fyColors.textFiveColor.withOpacity(0.3))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.cornerRadius),
                    borderSide: BorderSide(
                        color: context.fyColors.textFiveColor, width: 1)),
                focusColor: context.fyColors.textTenColor,
                floatingLabelStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: context.fyColors.textSixColor),
                alignLabelWithHint: true,
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.cornerRadius),
                    borderSide: BorderSide(color: context.colorScheme.error)),
              ),
              focusNode: widget.focusNode,
              textInputAction: widget.textInputAction,
              onEditingComplete: widget.onEditingComplete,
              onFieldSubmitted: widget.onFieldSubmitted,
              onTap: widget.onTap,
            ),
          ),
        ),
      ],
    );
  }
}
