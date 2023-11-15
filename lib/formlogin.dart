import 'package:flutter/material.dart';
import './dataproduk.dart';

class DesainFormLogin extends StatefulWidget {
  const DesainFormLogin({super.key});

  @override
  State<DesainFormLogin> createState() => _DesainFormLoginState();
}

class _DesainFormLoginState extends State<DesainFormLogin> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            width: 300, height: 200,
            child: Card(
              elevation: 10,
              shadowColor: Colors.pink,
              color: const Color.fromARGB(255, 247, 151, 183),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    TextFormField(
                      controller: cUser,
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        hintText: 'Input User Name',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'User Masih Kosong';
                        }return null;
                      },
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      obscureText: true,
                      controller: cPass,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Input Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Password Masih Kosong';
                        }return null;
                      },
                    ),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: (){
                        String tUser = 'widi';
                        String tPass = '3337220073';
                        if(formKey.currentState!.validate()){
                          if(cUser.text == tUser && cPass.text == tPass){
                            //perintah untuk memanggil halaman baru
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DesainDataProduk(),));
                            //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => DesainDataProduk(),), (route) => false);
                          }else{
                            showDialog(
                              context: context, 
                              builder: (context){
                                return AlertDialog(
                                  title: Text('Konfirmasi Login'),
                                  content: Text('User atau Password Masih Salah'),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: (){
                                        cUser.text='';
                                        cPass.text='';
                                        Navigator.of(context).pop();
                                      }, 
                                      child: Text('Ok')
                                    )
                                  ],
                                );
                              }
                            );
                          }
                        }
                      }, 
                      child: Text('LOGIN')
                    )

                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}