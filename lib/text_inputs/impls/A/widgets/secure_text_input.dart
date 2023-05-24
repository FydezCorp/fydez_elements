part of '../text_input_a.dart';

class _SecureTextInput extends StatefulWidget {
  const _SecureTextInput({
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
  State<_SecureTextInput> createState() => _SecureTextInputState();
}

class _SecureTextInputState extends State<_SecureTextInput> {
  bool _isObscure = true;

  void _changePasswordVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    final focusedColor = context.theme.extension<FyTextColor>()!.textSevenColor;
    final unfocusedColor =
        context.theme.extension<FyTextColor>()!.textThreeColor;
    Color getIconColor() {
      if (_isFocused) {
        return focusedColor;
      } else {
        return unfocusedColor;
      }
    }

    return FocusScope(
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
          keyboardType: widget.keyboardType,
          obscureText: _isObscure,
          validator: widget.validator,
          decoration: InputDecoration(
            hintText: widget.hint,
            label: Text(widget.label),
            enabled: widget.enabled ?? true,
            suffixIcon: IconButton(
              onPressed: _changePasswordVisibility,
              icon: _isObscure
                  ? Icon(
                      Iconsax.eye,
                      color: getIconColor(),
                    )
                  : Icon(
                      Iconsax.eye_slash,
                      color: getIconColor(),
                    ),
            ),
            isDense: true,
            border: OutlineInputBorder(
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
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xff1A1A1A), width: 1.5),
                borderRadius: BorderRadius.circular(widget.cornerRadius)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.cornerRadius),
                borderSide: BorderSide(
                    color: const Color(0xffB4B4B4).withOpacity(0.3))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.cornerRadius),
                borderSide:
                    const BorderSide(color: Color(0xffB4B4B4), width: 1)),
            focusColor: const Color(0xff1A1A1A),
            floatingLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff949494)),
            alignLabelWithHint: true,
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.cornerRadius),
                borderSide: const BorderSide(color: Color(0xffFF266F))),
          ),
          focusNode: widget.focusNode,
          textInputAction: widget.textInputAction,
          onEditingComplete: widget.onEditingComplete,
          onFieldSubmitted: widget.onFieldSubmitted,
          onTap: widget.onTap,
        ),
      ),
    );
  }
}
