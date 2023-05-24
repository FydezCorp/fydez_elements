part of '../text_input_a.dart';

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

  @override
  State<_NumericTextInput> createState() => _NumericTextInputState();
}

class _NumericTextInputState extends State<_NumericTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          fontSize: 14,
          color: context.theme.extension<FyTextColor>()!.textTenColor),
      controller: widget.controller,
      keyboardType: widget.keyboardType ?? TextInputType.number,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hint,
        label: Text(widget.label),
        enabled: widget.enabled ?? true,
        filled: true,
        fillColor: Colors.white,
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
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
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff1A1A1A), width: 1.5),
            borderRadius: BorderRadius.circular(16)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                BorderSide(color: const Color(0xffB4B4B4).withOpacity(0.3))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffB4B4B4), width: 1)),
        focusColor: const Color(0xff1A1A1A),
        floatingLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff949494)),
        alignLabelWithHint: true,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffFF266F))),
      ),
      focusNode: widget.focusNode,
      textInputAction: widget.textInputAction,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      onTap: widget.onTap,
    );
  }
}
