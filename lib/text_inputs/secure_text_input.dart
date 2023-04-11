part of 'fy_text_input.dart';

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
    final focusedColor =
        context.theme.extension<FyTextColor>()!.textSevenColor;
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
              )),
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
