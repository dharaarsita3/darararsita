import 'package:flutter/material.dart';   

void main() => runApp(MyApp()); 
  
class StaticBooks {   
  static const String cdn = "https://cdn.syncfusion.com/";  
  static const String path = 
                "content/images/downloads/ebook/ebook-cover/"; 
  
  static const List<String> covers = [
                "visual-studio-for-mac-succinctly-v1.png",
                "angular-testing-succinctly.png",
                "azure-devops-succinctly.png",
                "asp-net-core-3-1-succinctly.png",
                "angulardart_succinctly.png"
  ]; 

  static const List<String> titles = [
                "Visual Studio for Mac Succinctly",
                "Angular Testing Succinctly",
                "Azure DevOps Succinctly"
                "ASP.NET Core 3.1 Succinctly", 
                "AngularDart Succinctly" 
  ];
}

class Succinctly extends StatelessWidget {   
  @override  
  Widget build(BuildContext context) {    
    return DefaultTabController(     
      length: 5,    
      child: Scaffold(    
        appBar: AppBar(          
          title: Text('Succinctly Books'),        
          bottom: TabBar(            
            tabs: <Widget>[            
              Tab(icon: Icon(Icons.book), text: 'VSM'),    
              Tab(icon: Icon(Icons.book_online), text: 'AT'),      
              Tab(icon: Icon(Icons.book_online_outlined), text: 'AZ'),              
              Tab(icon: Icon(Icons.book_online_rounded), text: 'ASP'),              
              Tab(icon: Icon(Icons.book_online_sharp), text: 'AD'),            
            ],          
          ),         
        ),   
        body: TabBarView(           
          children: <Widget>[             
            Container(              
              decoration: BoxDecoration(                 
                image: DecorationImage(                  
                  image: NetworkImage(StaticBooks.cdn +                       
                    StaticBooks.path +                       
                    StaticBooks.covers[0]),                   
                  fit: BoxFit.scaleDown,                
                ),               
              ),             
            ),             
            Container(               
              decoration: BoxDecoration(                 
                image: DecorationImage(                   
                  image: NetworkImage(StaticBooks.cdn +                       
                    StaticBooks.path +                       
                    StaticBooks.covers[1]),                  
                  fit: BoxFit.scaleDown, 
                  ),               
                ),             
              ),             
              Container(               
                decoration: BoxDecoration(                 
                  image: DecorationImage(                  
                    image: NetworkImage(StaticBooks.cdn +   
                        StaticBooks.path +             
                        StaticBooks.covers[2]),          
                    fit: BoxFit.scaleDown,                
                  ),              
                ),             
              ),             
              Container(               
                decoration: BoxDecoration(                
                  image: DecorationImage(                   
                    image: NetworkImage(StaticBooks.cdn +  
                        StaticBooks.path + 
                        StaticBooks.covers[3]),           
                    fit: BoxFit.scaleDown,                
                  ),               
                ),            
              ),
              Container(             
                  decoration: BoxDecoration(       
                    image: DecorationImage(              
                      image: NetworkImage(StaticBooks.cdn + 
                          StaticBooks.path +              
                          StaticBooks.covers[4]),         
                      fit: BoxFit.scaleDown,              
                    ),               
                  ),             
                ),           
              ],         
            ),      
          ),     
        );   
      } 
    } 

class MyApp extends StatelessWidget {  
  @override   
  Widget build(BuildContext context) {     
    return MaterialApp( 
    debugShowCheckedModeBanner: false,       
    home: Succinctly(),       
    theme: ThemeData(         
      primaryColor: Color.fromARGB(255, 126, 40, 6),        
      accentColor: Color.fromARGB(255, 128, 16, 192),         
      textTheme: TextTheme(           
        bodyText2: TextStyle(           
        fontSize: 26, fontStyle: FontStyle.italic),         
      ),         
      brightness: Brightness.dark,       
    ),    
  );   
}
}