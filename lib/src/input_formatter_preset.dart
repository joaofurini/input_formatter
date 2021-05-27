part of input_formatter;

TextInputFormatter cpfFormatter() => MaskTextInputFormatter(
    mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});
TextInputFormatter cnpjFormatter() => MaskTextInputFormatter(
    mask: '##.###.###/####-##', filter: {"#": RegExp(r'[0-9]')});
TextInputFormatter phoneFormatter() =>
    MaskTextInputFormatter(mask: '#####-####', filter: {"#": RegExp(r'[0-9]')});
TextInputFormatter dateFormatter() =>
    MaskTextInputFormatter(mask: '##/####', filter: {"#": RegExp(r'[0-9]')});
TextInputFormatter fullDateFormatter() =>
    MaskTextInputFormatter(mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
TextInputFormatter timeFormatter() =>
    MaskTextInputFormatter(mask: '##:##', filter: {"#": RegExp(r'[0-9]')});
TextInputFormatter currencyFormatter({showSymbol = true}) =>
    CurrencyInputFormatter(showSymbol: showSymbol);
TextInputFormatter cpfOrCnpjFormatter() => CpfOrCnpjInputFormatter();
