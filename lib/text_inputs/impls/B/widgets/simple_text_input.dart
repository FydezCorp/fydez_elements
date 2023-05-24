part of '../text_input_b.dart';

class _SimpleTextInput extends StatefulWidget {
  const _SimpleTextInput({
    Key? key,
    required this.controller,
    required this.label,
    this.keyboardType,
    required this.hint,
    this.validator,
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
  State<_SimpleTextInput> createState() => _SimpleTextInputState();
}

class _SimpleTextInputState extends State<_SimpleTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          fontSize: 14,
          color: context.theme.extension<FyTextColor>()!.textTenColor),
      controller: widget.controller,
      keyboardType: widget.keyboardType,
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
          borderSide: const BorderSide(
            color: Color(0xffc4c4c4),
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintStyle: const TextStyle(
            color: Color(0xFFB4B4B4),
            fontSize: 14,
            fontWeight: FontWeight.w400),
        labelStyle: const TextStyle(
            color: Color(0xFF949494),
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
        focusColor: const Color(0xff1A1A1A),
        floatingLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff949494)),
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
