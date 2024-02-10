//while the app is building let's create the NewsData class

class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  //let's create the constructor
  NewsData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  //we will use dummy data to generate the news,but you can use a third party api or your own backend to extract the data
  //I will copy the data from my previous code, you can create your own data , I used newsApi to get the data

  static List<NewsData> recentNewsData = [
    NewsData(
        "Joint statement: in solidarity with farmers in Europe",
        "Amanda Silberling",
        "On 1 February 2024, civil society organisations gathered in Brussels in front of the European Parliament in solidarity with peasants. In response to a call from the European Coordination Via Campesina (ECVC) and the Belgian farmers’ union Fédération Unie de Groupements d’Eleveurs et d’Agriculteurs (FUGEA), organisations expressed their support for food sovereignty, organic agriculture, agroecology, peasant rights, and fair food prices.",
        "2024-02-09",
        "https://www.birdlife.org/wp-content/uploads/2024/02/20230617_154029-1536x1152.jpg"),
    NewsData(
        "AGRICULTURAL CLIMATE RESILIENCY INITIATIVE INVESTS IN LONG-TERM NEEDS",
        "Nicole Heslip",
        "The Michigan Department of Agriculture and Rural Development is establishing the Agricultural Climate Resiliency Program at Michigan State University. MSU AgBioResearch Director George Smith tells Brownfield the initiative is a collaboration with the state’s major plant commodity organizations to address climate and water issues. “These are long-term projects,” he says. “We can’t solve these problems in one year. What’s going to be critical to success is that there is recurring funding from the state of Michigan.” The state’s 2024 fiscal year budget includes 1 million in recurring funds for faculty and Extension positions, as well as a one-time 5 million investment for a competitive grants program.",
        "2024-02-09",
        "https://cdn.brownfieldagnews.com/wp-content/uploads/2023/12/Michigan-State-University-water-tower_NH-e1702492944693.jpg"),
    NewsData(
        "Producers say Manitoba needs RCMP role dedicated to cattle theft, other agricultural crimes",
        "Chelsea Kemp",
        "An industry association that represents cattle farmers in Manitoba wants more safeguards against livestock theft in the province, including an investigative unit dedicated to tackling such crimes. Manitoba Beef Producers president Matthew Atkinson says security issues around livestock, including theft and fraud, are a growing concern. At the industry association's annual general meeting in Brandon on Thursday, members passed a resolution to lobby for a dedicated investigation unit to reduce livestock-related crimes. Margins are always tight for producers, but the current value per head of cattle is relatively high, said Atkinson — making it especially important to have something in place to protect them. 'We do need some safeguards in place to protect the producers out there ... to really protect what they have,' he said.",
        "2024-02-10",
        "https://i.cbc.ca/1.7110949.1707524570!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/calving.jpg"),
    NewsData(
        "Sistem Smart Farming, Eskalasikan Pertanian dengan Teknologi",
        "itsojt ",
        "Guna meningkatkan daya saing sektor pertanian di ranah global, Institut Teknologi Sepuluh Nopember (ITS) kembali gelar Professor Summit 2023 di Auditorium Gedung Pusat Riset ITS, Kamis (19/10). Melalui konferensi ini, Guru Besar Fakultas Pertanian (Faperta) Universitas Pembangunan Nasional “Veteran” Jawa Timur (UPNVJT) inovasikan Smart Farming. ",
        "2023-10-21",
        "https://www.its.ac.id/news/wp-content/uploads/sites/2/2023/10/pergelaran-professor-summit.jpg"),
  ];
}
