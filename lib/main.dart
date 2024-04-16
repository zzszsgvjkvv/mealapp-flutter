import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectclean/AppLocalizatons.dart';
import 'package:projectclean/injection.dart' as di;
import 'package:projectclean/core/Them/Themappmeals.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/categories.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/bloc/bloc/gettallmeals/getallmeal_bloc.dart';
import 'package:projectclean/feathuers/datapostitms/presentationlayer/bloc/bloc/adddeletedit/addeditdeleatmeals_bloc.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/bloc/bloc/cubit/languagechange_cubit/languagechange_cubit.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => LanguagechangeCubit()..getsavelanguagecod()),
          BlocProvider(
            create: (_) => di.sl<GetallmealBloc>()..add(GettallMeals()),
          ),
          BlocProvider(
            create: (_) => di.sl<AddeditdeleatmealsBloc>(),
          ),
        ],
        child: BlocBuilder<LanguagechangeCubit, LanguagechangeState>(
          builder: (context, state) {
            if (state is Languagechange) {
              return MaterialApp(
                  locale: Locale(state.languagecode),
                  supportedLocales: const [
                    Locale('en'),
                    Locale('ar'),
                  ],
                  localeResolutionCallback: funlocaleResolutionCallback,
                  localizationsDelegates: localizationsDelegate,
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter mealapp',
                  themeMode: ThemeMode.light,
                  theme: Appthem,
                  home: Homepage());
            } else {
              return const SizedBox();
            }
          },
        ));
  }
}




/* Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  for (var element in dummyMealsar) {
                    http.post(Uri.parse(
                        'https://cleancodeapp-fb7ab-default-rtdb.firebaseio.com/mealar.json'),
                         headers: {"Content-Type": "application/json"}, body: json.encode(element.tojson())
                        );
                  }
                },
                child: const Text("data")),
                ElevatedButton(onPressed: ()async{
               final s=  await getallmeal();
               print(s.toString());
                }, child: Text("data"))
          ],
        ) */