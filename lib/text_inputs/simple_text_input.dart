part of 'fy_text_input.dart';

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
      ),
      focusNode: widget.focusNode,
      textInputAction: widget.textInputAction,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      onTap: widget.onTap,
    );
  }
}
