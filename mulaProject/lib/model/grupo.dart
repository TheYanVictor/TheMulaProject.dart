class Grupo {
  final String uid;
  final String titulo;
  final String descricao;

  Grupo(this.uid, this.titulo, this.descricao);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'titulo': titulo,
      'descricao': descricao
    };
  }

  factory Grupo.fromJson(Map<String, dynamic> json) {
    return Grupo(
      json['uid'],
      json['titulo'],
      json['descricao'],
    );
  }
}