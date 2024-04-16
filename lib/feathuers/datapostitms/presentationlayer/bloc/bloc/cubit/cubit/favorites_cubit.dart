import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/models/mealmodel.dart';


part 'favorites_state.dart';
const String cachfavorit="cachfavorit";
class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(FavoritesInitial(listmealmodel: []));

  Future<List<Mealmodel>> getallfavoritesmeal()async{
    final SharedPreferences sharedPreferences=await SharedPreferences.getInstance();

     final jsonstring = sharedPreferences.getString(cachfavorit);
    if (jsonstring != null) {
      List decodejsonstring = json.decode(jsonstring);
      List<Mealmodel> jsontopostmodel = decodejsonstring
          .map<Mealmodel>((postmodelmeal) => Mealmodel.fromjson(postmodelmeal))
          .toList();
          emit(FavoritesInitial(listmealmodel: jsontopostmodel));
    return jsontopostmodel ;
  }
  else {
    return [];
  }
  }
  void togglemealfavoritesmeal(Mealmodel postmealitm)async{
    final SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  
List<Mealmodel>listcached=await getallfavoritesmeal();
bool isexisting=false;
if(listcached!=[])
{
   isexisting= listcached.contains(postmealitm);
}
else{
isexisting=false;
}
if(isexisting){
   listcached.remove(postmealitm);
  List postmealjson = listcached
        .map<Map<String, dynamic>>((postmeale) => postmeale.tojson())
        .toList();
       
 emit(Favoritesremove(mesg: "mesg",));

  await  sharedPreferences.setString(cachfavorit, json.encode(postmealjson));
  

}
else{
 listcached.add(postmealitm);
  List postmealjson = listcached
        .map<Map<String, dynamic>>((postmeale) => postmeale.tojson())
        .toList();
       
  emit(Favoritesadd(mesg: "mesg"));

   await sharedPreferences.setString(cachfavorit, json.encode(postmealjson));
      
    
  }

  }
}
