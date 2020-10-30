
import 'package:cloud_firestore/cloud_firestore.dart';

class Pessoa{
  String sexo;
  String matricula;
  List<String> sintomas = List<String>();
  int idade;
  bool diagnosticado;
  int tempodiagnosticado;
  bool contato;
  int tempocontato;
  bool mascara;
  List<String> comorbidades = List<String>();
  String tipoPessoa;
  
  DocumentReference reference;

  Pessoa(this.tipoPessoa,{this.comorbidades,this.contato,this.diagnosticado,this.idade,this.mascara,
  this.matricula,this.sintomas,this.tempocontato,this.tempodiagnosticado,this.sexo});

  factory Pessoa.fromSnapshot(DocumentSnapshot snapshot){
    Pessoa novoPessoa = Pessoa.fromJson(snapshot.data);
    novoPessoa.reference = snapshot.reference;
    return novoPessoa;
  }

  factory Pessoa.fromJson(Map<dynamic,dynamic> json) => _PessoaFromJson(json);

  Map<String, dynamic> toJson() => _PessoaToJson(this);

}

Pessoa _PessoaFromJson(Map<dynamic,dynamic> json){
  return Pessoa(
    json['tipopessoa'] as String,
    sexo: json['sexo'] as String,
    comorbidades: json['comorbidades'] as List,
    contato: json['contato'] as bool,
    diagnosticado: json['diagnosticado'] as bool,
    idade: json['idade'] as int,
    mascara: json['mascara'] as bool,
    matricula: json['matricula'] as String,
    sintomas: json['sintomas'] as List,
    tempocontato: json['tempocontato'] as int,
    tempodiagnosticado: json['tempodiagnosticado'] as int
  );
}

Map<String, dynamic> _PessoaToJson(Pessoa instance) => <String, dynamic>{
  'sexo': instance.sexo,
  'comorbidades': instance.comorbidades,
  'contato': instance.contato,
  'diagnosticado': instance.diagnosticado,
  'idade': instance.idade,
  'mascara': instance.mascara,
  'matricula': instance.matricula,
  'sintomas': instance.sintomas,
  'tempocontato': instance.tempocontato,
  'tempodiagnosticado': instance.tempodiagnosticado,
  'tipopessoa' : instance.tipoPessoa
};