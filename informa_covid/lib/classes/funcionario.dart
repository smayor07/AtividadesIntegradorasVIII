import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';

class Funcionario{
  String sexo;
  List<String> sintomas = List<String>();
  int idade;
  bool diagnosticado;
  int tempodiagnosticado;
  bool contato;
  int tempocontato;
  bool mascara;
  List<String> comorbidades = List<String>();
  
  DocumentReference reference;

  Funcionario(this.sexo,{this.comorbidades,this.contato,this.diagnosticado,this.idade,this.mascara,
  this.sintomas,this.tempocontato,this.tempodiagnosticado});

  factory Funcionario.fromSnapshot(DocumentSnapshot snapshot){
    Funcionario novoFuncionario = Funcionario.fromJson(snapshot.data);
    novoFuncionario.reference = snapshot.reference;
    return novoFuncionario;
  }

  factory Funcionario.fromJson(Map<dynamic,dynamic> json) => _FuncionarioFromJson(json);

  Map<String, dynamic> toJson() => _FuncionarioToJson(this);

}

Funcionario _FuncionarioFromJson(Map<dynamic,dynamic> json){
  return Funcionario(
    json['sexo'] as String,
    comorbidades: json['comorbidades'] as List,
    contato: json['contato'] as bool,
    diagnosticado: json['diagnosticado'] as bool,
    idade: json['idade'] as int,
    mascara: json['mascara'] as bool,
    sintomas: json['sintomas'] as List,
    tempocontato: json['tempocontato'] as int,
    tempodiagnosticado: json['tempodiagnosticado'] as int
  );
}

Map<String, dynamic> _FuncionarioToJson(Funcionario instance) => <String, dynamic>{
  'sexo': instance.sexo,
  'comorbidades': instance.comorbidades,
  'contato': instance.contato,
  'diagnosticado': instance.diagnosticado,
  'idade': instance.idade,
  'mascara': instance.mascara,
  'sintomas': instance.sintomas,
  'tempocontato': instance.tempocontato,
  'tempodiagnosticado': instance.tempodiagnosticado
};