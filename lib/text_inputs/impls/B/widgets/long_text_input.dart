part of '../text_input_b.dart';

class _LongTextInput extends StatefulWidget {
  const _LongTextInput({
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
  State<_LongTextInput> createState() => _LongTextInputState();
}

class _LongTextInputState extends State<_LongTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          fontSize: 14,
          color: context.theme.extension<FyTextColor>()!.textTenColor),
      controller: widget.controller,
      minLines: 3,
      maxLines: 10,
      keyboardType: widget.keyboardType ?? TextInputType.multiline,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hint,
        label: Text(widget.label),
        enabled: widget.enabled ?? true,
        filled: true,
        fillColor: context.fyColors.textTwoColor,
        isDense: true,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(widget.cornerRadius),
          borderSide:  BorderSide(
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
        focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent, width: 1.5),
            borderRadius: BorderRadius.circular(widget.cornerRadius)),
        disabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(widget.cornerRadius),
            borderSide: const BorderSide(color: Colors.transparent)),
        enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(widget.cornerRadius),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1,
            )),
        focusColor: context.fyColors.textTenColor,
        floatingLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: context.fyColors.textSixColor),
        alignLabelWithHint: true,
      ),
      focusNode: widget.focusNode,
      textInputAction: widget.textInputAction,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      onTap: widget.onTap,
    );
  }
}
