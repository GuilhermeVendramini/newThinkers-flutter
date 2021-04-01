class ValidatorDefault {
  ValidatorDefault._();

  static String isNotEmpty(String value) {
    if (value == null || value.isEmpty) return 'Campo obrigatório';

    return null;
  }

  static String isEmail(String value) {
    /**
     * TODO - Validar se é email.
     * Dica - Para validar use: RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
     * */
    return null;
  }

  static String password(String value) {
    // TODO - Tamanho mínimo de 8 caracteres
    return null;
  }

  static String confirmPassword(String value, String firstPassword) {
    // TODO - Validar se o primeiro password digitado é igual ao segundo.
    return null;
  }
}
