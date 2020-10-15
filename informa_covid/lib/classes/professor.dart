import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';

class Professor{
  String sexo;
  String identificacao;
  List<String> sintomas = List<String>();
  int idade;
  bool diagnosticado;
  int tempodiagnosticado;
  bool contato;
  int tempocontato;
  bool mascara;
  List<String> comorbidades = List<String>();
  
  DocumentReference reference;

  Professor(this.sexo,{this.comorbidades,this.contato,this.diagnosticado,this.idade,this.mascara,
  this.identificacao,this.sintomas,this.tempocontato,this.tempodiagnosticado});

  factory Professor.fromSnapshot(DocumentSnapshot snapshot){
    Professor novoProfessor = Professor.fromJson(snapshot.data);
    novoProfessor.reference = snapshot.reference;
    return novoProfessor;
  }

  factory Professor.fromJson(Map<dynamic,dynamic> json) => _ProfessorFromJson(json);

  Map<String, dynamic> toJson() => _ProfessorToJson(this);

}

Professor _ProfessorFromJson(Map<dynamic,dynamic> json){
  return Professor(
    json['sexo'] as String,
    comorbidades: json['comorbidades'] as List,
    contato: json['contato'] as bool,
    diagnosticado: json['diagnosticado'] as bool,
    idade: json['idade'] as int,
    mascara: json['mascara'] as bool,
    identificacao: json['identificacao'] as String,
    sintomas: json['sintomas'] as List,
    tempocontato: json['tempocontato'] as int,
    tempodiagnosticado: json['tempodiagnosticado'] as int
  );
}

Map<String, dynamic> _ProfessorToJson(Professor instance) => <String, dynamic>{
  'sexo': instance.sexo,
  'comorbidades': instance.comorbidades,
  'contato': instance.contato,
  'diagnosticado': instance.diagnosticado,
  'idade': instance.idade,
  'mascara': instance.mascara,
  'identificacao': instance.identificacao,
  'sintomas': instance.sintomas,
  'tempocontato': instance.tempocontato,
  'tempodiagnosticado': instance.tempodiagnosticado
};