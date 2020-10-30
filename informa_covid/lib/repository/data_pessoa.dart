import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:informa_covid/classes/Pessoa.dart';

class PessoaRepository{

  CollectionReference collection = Firestore.instance.collection('pessoas');
  
  Stream<QuerySnapshot> getStream(){
    return collection.snapshots();
  }

  Future<DocumentReference> addPessoa(Pessoa pessoa){
    return collection.add(pessoa.toJson());
  }

  Future<DocumentReference> removePessoa(Pessoa pessoa){
    return collection.document(pessoa.reference.documentID).delete();
  }
  
  updatePessoa(Pessoa pessoa) async {
    await collection.document(pessoa.reference.documentID).updateData(pessoa.toJson());
  }

}