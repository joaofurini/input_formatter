part of input_formatter;

class CpfOrCnpjInputFormatter extends TextInputFormatter {
  MaskTextInputFormatter cpf = cpfFormatter();
  MaskTextInputFormatter cnpj = cnpjFormatter();
  MaskTextInputFormatter current;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (current == null) current = cpf;

    if (newValue.text.length > 14 && current == cpf) {
      current = cnpj;
      cpf = cpfFormatter();
      return current.formatEditUpdate(TextEditingValue(), newValue);
    } else if (newValue.text.length <= 14 && current == cnpj) {
      current = cpf;
      cnpj = cnpjFormatter();
      return current.formatEditUpdate(TextEditingValue(), newValue);
    }

    return current.formatEditUpdate(oldValue, newValue);
  }
}
