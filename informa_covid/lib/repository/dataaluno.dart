import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:informa_covid/classes/aluno.dart';

class AlunoRepository{

  CollectionReference collection = Firestore.instance.collection('alunos');
  
  Stream<QuerySnapshot> getStream(){
    return collection.snapshots();
  }

  Future<DocumentReference> addAluno(Aluno aluno){
    return collection.add(aluno.toJson());
  }

  Future<DocumentReference> removeAluno(Aluno aluno){
    return collection.document(aluno.reference.documentID).delete();
  }
  
  updateAluno(Aluno aluno) async {
    await collection.document(aluno.reference.documentID).updateData(aluno.toJson());
  }

}