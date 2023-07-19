String? valRequired(text, {error = 'required'}) {
  if ((text ?? '').isEmpty) {
    return error;
  }
  return null;
}