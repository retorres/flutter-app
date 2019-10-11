class IconModel {
  String texto;
  String iconPath;

  IconModel({this.texto, this.iconPath});

  static List<IconModel> get() {
    final icons = List<IconModel>();

    icons.add(IconModel(texto: 'Favoritos', iconPath: 'ico-favorito.svg'));
    icons.add(IconModel(
        texto: 'Consulta Processual', iconPath: 'ico-consulta-processual.svg'));
    icons.add(
        IconModel(texto: 'Leia aqui seu código', iconPath: 'ico-qrcode.svg'));
    icons.add(IconModel(texto: 'PJe - Mandados', iconPath: 'ico-mandados.svg'));
    icons.add(IconModel(
        texto: 'PJe - Julgamentos e Audiência', iconPath: 'ico-pautas.svg'));
    icons
        .add(IconModel(texto: 'PJe - Monitor', iconPath: 'ico-pjemonitor.svg'));
    icons.add(
        IconModel(texto: 'Guias de arrecadação', iconPath: 'ico-guias.svg'));
    icons.add(IconModel(
        texto: 'Certidão Negativa', iconPath: 'ico-certidao-negativa.svg'));
    icons.add(IconModel(texto: 'Ramais', iconPath: 'ico-ramais.svg'));
    icons.add(IconModel(texto: 'Ouvidoria', iconPath: 'ico-ouvidoria.svg'));
    icons.add(IconModel(texto: 'Feedback', iconPath: 'ico-feedback.svg'));
    icons.add(IconModel(texto: 'SDM', iconPath: 'ico-sdm.svg'));

    return icons;
  }
}
