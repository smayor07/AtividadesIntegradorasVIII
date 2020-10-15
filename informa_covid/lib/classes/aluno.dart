import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';

class Aluno{
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
  
  DocumentReference reference;

  Aluno(this.sexo,{this.comorbidades,this.contato,this.diagnosticado,this.idade,this.mascara,
  this.matricula,this.sintomas,this.tempocontato,this.tempodiagnosticado});

  factory Aluno.fromSnapshot(DocumentSnapshot snapshot){
    Aluno novoAluno = Aluno.fromJson(snapshot.data);
    novoAluno.reference = snapshot.reference;
    return novoAluno;
  }

  factory Aluno.fromJson(Map<dynamic,dynamic> json) => _AlunoFromJson(json);

  Map<String, dynamic> toJson() => _AlunoToJson(this);

}

Aluno _AlunoFromJson(Map<dynamic,dynamic> json){
  return Aluno(
    json['sexo'] as String,
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

Map<String, dynamic> _AlunoToJson(Aluno instance) => <String, dynamic>{
  'sexo': instance.sexo,
  'comorbidades': instance.comorbidades,
  'contato': instance.contato,
  'diagnosticado': instance.diagnosticado,
  'idade': instance.idade,
  'mascara': instance.mascara,
  'matricula': instance.matricula,
  'sintomas': instance.sintomas,
  'tempocontato': instance.tempocontato,
  'tempodiagnosticado': instance.tempodiagnosticado
};