import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:QuotesList() ,
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({super.key});



  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quotes> quotes=[
    // Quotes(author:"-Madara Uchiha", quote:"Wake up to reality! Nothing ever goes as planned in this world. The longer you live, the more you realize that in this reality only pain, suffering and futility exist", img:"https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/05/madara-uchiha-naruto-featured.jpg "),
    // Quotes( author:"Armin Arlert ",quote:"I don't like the terms 'good person' or 'bad person' because it is impossible to be entirely good to everyone. To some, you are a good person, while to others, you are a bad person", img: "https://static.zerochan.net/Armin.Arlert.1024.1740465.webp"),
    Quotes( author:"Naruto Uzumaki ",quote:"Hard work is worthless for those that don't believe in themselves. Believe it!", img:"https://static.wikia.nocookie.net/naruto/images/d/d6/Naruto_Part_I.png/revision/latest/scale-to-width-down/300?cb=20210223094656"),
    // Quotes( author:"Eren Jaeger ",quote:"Nothing can suppress human curiosity", img:"https://w0.peakpx.com/wallpaper/999/880/HD-wallpaper-eren-yeager-attack-on-titan-shingeki-no-kyojin-manga-mikasa-anime-levi.jpg")


  ];
  Widget quoteTemplate(quote) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.quote,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 6.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    quote.author,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    // width: 70,
                    // height: 50,
                    child: ClipRRect(

                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                      child: Image.network(quote.img,  width: 50, height: 50,fit: BoxFit.cover, ),

                    ),
                  ),

                ],
              ),
            ],
          ),
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:  Colors.blue[200],
        title:const Text(" Motivational Quotes") ,
        centerTitle: true,
      ),
      body: Column(
        children:
        quotes.map((quote) =>quoteTemplate(quote)).toList(),
      ),
    );
  }
}

