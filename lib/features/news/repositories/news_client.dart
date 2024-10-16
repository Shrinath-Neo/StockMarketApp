
import 'package:ysec_stock_market_app/features/news/models/single_new_model.dart';


class NewsClient {

  Future<List<Article>> fetchNews({required String title}) async {

   await Future.delayed(const Duration(seconds: 1));
    final newsOverviews = SingleNewModel.fromJson(newsJson);
    return newsOverviews.articles ?? [];

  }
}

const newsJson = {
  "status": "ok",
  "totalResults": 38,
  "articles": [
    {
      "source": {
        "id": "al-jazeera-english",
        "name": "Al Jazeera English"
      },
      "author": "Al Jazeera",
      "title": "North Korea blows up roads near South Korean border as tensions soar - Al Jazeera English",
      "description": "Latest move comes after Pyongyang accused South Korea of sending drones carrying propaganda leaflets over its capital.",
      "url": "https://www.aljazeera.com/news/2024/10/15/north-korea-blows-up-roads-near-south-korean-border-as-tensions-soar",
      "urlToImage": "https://www.aljazeera.com/wp-content/uploads/2024/10/AP24289195102874-1728970434.jpg?resize=1920%2C1440",
      "publishedAt": "2024-10-15T04:45:57Z",
      "content": "North Korea has blown up the northern sections of the roads that connect it to South Korea, according to South Koreas military.\r\nSome parts of the road north of the military demarcation line dividing… [+1944 chars]"
    },
    {
      "source": {
        "id": "cnn",
        "name": "CNN"
      },
      "author": "Wayne Chang, Helen Regan",
      "title": "A record number of Chinese warplanes flew close to Taiwan during military drills - CNN",
      "description": "China flew a record number of fighter jets and other warplanes around Taiwan during its large-scale military drills on Monday, Taiwan’s Defense Ministry said.",
      "url": "https://www.cnn.com/2024/10/15/asia/record-china-warplanes-taiwan-drills-intl-hnk/index.html",
      "urlToImage": "https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2177589410.jpg?c=16x9&q=w_800,c_fill",
      "publishedAt": "2024-10-15T04:18:00Z",
      "content": "China flew a record number of fighter jets and other warplanes around Taiwan during its large-scale military drills on Monday, the islands Defense Ministry said.\r\nThe one-day military exercises, whic… [+3984 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "BuffaloBills.com"
      },
      "author": null,
      "title": "Rex Ryan and the Manning brothers react to Taron Johnson's game-clinching interception on Aaron Rodgers - BuffaloBills.com",
      "description": "\u003Cp\u003EFormer head coach Rex Ryan and the Manning brothers react to a critical New York Jets quarterback Aaron Rodgers' interception on the ManningCast during \"Monday Night Football\" during Week 6 of the 2024 NFL season.\u003C/p\u003E",
      "url": "https://www.buffalobills.com/video/rex-ryan-and-the-manning-brothers-react-to-taron-johnson-s-game-clinching-interception-on-aaron-rodgers",
      "urlToImage": "https://static.clubs.nfl.com/image/upload/t_editorial_landscape_12_desktop/bills/dvl2fkv89rkb6kgiputz",
      "publishedAt": "2024-10-15T03:48:47Z",
      "content": null
    },
    {
      "source": {
        "id": null,
        "name": "CNBC"
      },
      "author": "Anniek Bao",
      "title": "Asian semiconductor stocks rise after shares of AI chip darling Nvidia hit a record high - CNBC",
      "description": "Nvidia's gains in share price lifted its market value to top \$3.4 trillion, unseating Microsoft as the second most valuable company on Wall Street.",
      "url": "https://www.cnbc.com/2024/10/15/nvidia-record-high-lifts-asian-semiconductor-stocks-.html",
      "urlToImage": "https://image.cnbcfm.com/api/v1/image/107246996-1685058490835-gettyimages-1232958154-WB-TAIWAN-TECHNOLOGY-30032021-7.jpeg?v=1728960771&w=1920&h=1080",
      "publishedAt": "2024-10-15T03:44:00Z",
      "content": "Asian chip stocks rose on Tuesday after Nvidia closed at a record high overnight as the chip company continues to ride the massive artificial intelligence wave.\r\nStocks tied to Nvidia suppliers as we… [+1838 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "New York Post"
      },
      "author": "Brian Costello",
      "title": "Jeff Ulbrich loses Jets coaching debut in painful fashion - New York Post ",
      "description": "The Jeff Ulbrich era looks a lot like the Robert Saleh era. The Jets’ new coach started his interim run with a 23-20 loss to the Bills in a game filled with missed kicks and penalties.",
      "url": "https://nypost.com/2024/10/14/sports/jeff-ulbrich-loses-jets-coaching-debut-in-painful-fashion/",
      "urlToImage": "https://nypost.com/wp-content/uploads/sites/2/2024/10/newspress-collage-xjo1vpwmr-1728964585725.jpg?quality=75&strip=all&1728950249&w=1024",
      "publishedAt": "2024-10-15T03:36:00Z",
      "content": "New coach. Same old result.\r\nThe debut of Jets interim coach Jeff Ulbrich had some promising signs but it ended in familiar fashion. The Jets dropped their third straight game, a 23-20 flag-filled lo… [+5429 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "MLB.com"
      },
      "author": "Anthony DiComo",
      "title": "'Swaggy V,' Mets answer in grand fashion to knot NLCS - MLB.com",
      "description": "LOS ANGELES -- From his perch in the on-deck circle at Dodger Stadium, Mark Vientos looked across the field, where opposing manager Dave Roberts was calling for an intentional walk of Francisco Lindor. Vientos adjusted his sunglasses and gave a slight raise o…",
      "url": "https://www.mlb.com/news/mark-vientos-hits-grand-slam-for-mets-in-nlcs-game-2",
      "urlToImage": "https://img.mlbstatic.com/mlb-images/image/upload/t_2x1/t_w1536/mlb/zezbmobonbacvzpk2fwf.jpg",
      "publishedAt": "2024-10-15T03:18:37Z",
      "content": "LOS ANGELES -- From his perch in the on-deck circle at Dodger Stadium, Mark Vientos looked across the field, where opposing manager Dave Roberts was calling for an intentional walk of Francisco Lindo… [+4412 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "BBC News"
      },
      "author": null,
      "title": "Drone attack on Israel puts spotlight on Iron Dome's limitations - BBC.com",
      "description": "Drones are becoming a deadly headache for Israelis. How can its air defence system stop them?",
      "url": "https://www.bbc.com/news/articles/c4g9wx2q09ko",
      "urlToImage": "https://ichef.bbci.co.uk/news/1024/branded_news/3541/live/bca0b570-8a6a-11ef-b6b0-c9af5f7f16e4.jpg",
      "publishedAt": "2024-10-15T03:06:45Z",
      "content": "Sunday's drone attack was one of Israel's biggest in more than a year - four Israeli soldiers were killed\r\nSlow, small and relatively cheap to make, drones have become a deadly headache for Israelis … [+3614 chars]"
    },
    {
      "source": {
        "id": "reuters",
        "name": "Reuters"
      },
      "author": "Jeff Mason, Gabriella Borter",
      "title": "Harris blasts Trump's 'enemy from within' comments at Pennsylvania rally - Reuters",
      "description": "Harris said Trump poses a danger because he believes those who do not agree with him are the enemy.",
      "url": "https://www.reuters.com/world/us/harris-targets-black-men-with-new-economic-proposals-2024-10-14/",
      "urlToImage": "https://www.reuters.com/resizer/v2/7SJT5XUVHFP7NERPLC2YRB5AZU.jpg?auth=09148eedad2f4f605e3af44a732e04c7074ec23b7cf8f54a5887224f8e76dfae&height=1005&width=1920&quality=80&smart=true",
      "publishedAt": "2024-10-15T02:50:00Z",
      "content": null
    },
    {
      "source": {
        "id": "associated-press",
        "name": "Associated Press"
      },
      "author": "YAHYA HABCHITI, KAREEM CHEHAYEB",
      "title": "Israeli strike in northern Lebanon kills at least 21 people - The Associated Press",
      "description": "The Lebanese Red Cross says an Israeli airstrike hit an apartment building in northern Lebanon, killing at least 21 people. There was no immediate comment from the Israeli military and it was not clear what the target was. The strike on Monday hit a small apa…",
      "url": "https://apnews.com/article/israel-palestinians-hamas-war-lebanon-hezbollah-news-10-14-2024-70c8cf5a93eec9ea643a5fda5670da93",
      "urlToImage": "https://dims.apnews.com/dims4/default/283f3da/2147483647/strip/true/crop/7308x4111+0+381/resize/1440x810!/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2F04%2F2e%2F3651c8dd1ee688a70ddca91dad67%2F0fc66112a4eb4a11a5196e85e18de4ee",
      "publishedAt": "2024-10-15T02:47:00Z",
      "content": "AITO, Lebanon (AP) An Israeli airstrike hit an apartment building in northern Lebanon on Monday, killing at least 21 people, according to the Lebanese Red Cross.\r\nThe Israeli military did not immedia… [+6545 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "New York Post"
      },
      "author": "Caitlin McCormack",
      "title": "Children and teens who have contracted COVID are more prone to diabetes, study says - New York Post ",
      "description": "Children were 50% more likely to be diagnosed with diabetes around six months after contracting the coronavirus infection compared to those impacted by other respiratory illnesses, the study found.",
      "url": "https://nypost.com/2024/10/14/lifestyle/children-and-teens-who-have-contracted-covid-are-more-prone-to-diabetes-studychildren-and-teenagers-who-have-been-infected-with-strands-of-the-coronavirus-are-more-likely-to-develop-type-2-diabetes-th/",
      "urlToImage": "https://nypost.com/wp-content/uploads/sites/2/2024/10/covid-comp.jpg?quality=75&strip=all&w=1024",
      "publishedAt": "2024-10-15T02:30:00Z",
      "content": "Children and teenagers who have been infected with strands of the coronavirus are more likely to develop Type 2 diabetes than those afflicted by other respiratory illnesses, according to a new resear… [+2701 chars]"
    },
    {
      "source": {
        "id": "ars-technica",
        "name": "Ars Technica"
      },
      "author": "Stephen Clark",
      "title": "NASA launches mission to explore the frozen frontier of Jupiter’s moon Europa - Ars Technica",
      "description": "“We’re interested in whether Europa could support simple life—single-celled organisms.”…",
      "url": "https://arstechnica.com/space/2024/10/nasa-launches-mission-to-explore-the-frozen-frontier-of-jupiters-moon-europa/",
      "urlToImage": "https://cdn.arstechnica.net/wp-content/uploads/2024/10/KSC-20241014-PH-SPX01_0003large.jpg",
      "publishedAt": "2024-10-15T02:25:45Z",
      "content": null
    },
    {
      "source": {
        "id": null,
        "name": "Spaceflight Now"
      },
      "author": null,
      "title": "Live coverage: SpaceX prepares for 100th launch of 2024 with Starlink mission on Falcon 9 rocket - Spaceflight Now",
      "description": null,
      "url": "https://spaceflightnow.com/2024/10/15/live-coverage-spacex-to-launch-23-starlink-satellites-on-falcon-9-rocket-from-cape-canaveral-2/",
      "urlToImage": null,
      "publishedAt": "2024-10-15T02:13:05Z",
      "content": "File: A Falcon 9 rocket stands ready to launch a Starlink mission. Image: SpaceX\r\nUpdate 2:31 a.m. EDT: SpaceX launched the Starlink 10-10 mission at 2:10 a.m. EDT (0610 UTC).\r\nSpaceX broke its own r… [+1937 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Fox Business"
      },
      "author": "Louis Casiano",
      "title": "Oil and gas trade group decries Gov. Newsom's 'personal insults' in wake of bill designed to lower pump prices - Fox Business",
      "description": "California Gov. Gavin Newsom signed a law Monday to combat the increasing gas prices across the state as driver complain of high prices at the pump.",
      "url": "https://www.foxbusiness.com/energy/oil-gas-trade-group-decries-gov-newsoms-personal-insults-wake-bill-designed-lower-pump-prices",
      "urlToImage": "https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2024/10/0/0/ap24288800719727-copy.jpg?ve=1&tl=1",
      "publishedAt": "2024-10-15T02:04:00Z",
      "content": "California Gov. Gavin Newsom prioritized politics over policy while hurling repeated insults at opponents of a bill he signed into law Monday in an effort to combat rising gas prices, the leader of a… [+3967 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Yahoo Entertainment"
      },
      "author": "Frank Schwab",
      "title": "Aaron Rodgers does it again, hits another Hail Mary for Jets - Yahoo Sports",
      "description": "Rodgers has some skill when it comes to desperation passes at the end of the half.",
      "url": "https://sports.yahoo.com/aaron-rodgers-does-it-again-hits-another-hail-mary-for-jets-015053706.html",
      "urlToImage": "https://s.yimg.com/ny/api/res/1.2/3_5EsuxTBGVCtpuSclAGLA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/os/creatr-uploaded-images/2024-10/72710a00-8a8c-11ef-965a-a90f4728fb7a",
      "publishedAt": "2024-10-15T01:50:00Z",
      "content": "Just before the New York Jets' final play of the first half Monday night against the Buffalo Bills, ESPN showed a montage of Aaron Rodgers' Hail Mary completions. There have been three in his career.… [+994 chars]"
    },
    {
      "source": {
        "id": "cnn",
        "name": "CNN"
      },
      "author": "Hanna Ziady, Anderson Cooper",
      "title": "‘The world failed us’: Parents of slain Israeli-American hostage Hersh Goldberg-Polin grapple with ‘crushing’ loss - CNN",
      "description": "The parents of Hersh Goldberg-Polin, an Israeli-American murdered by Hamas militants in Gaza in August, have told CNN about the “crushing blow” of losing their son and say they fear that other families will receive the same “devastating news” unless world lea…",
      "url": "https://www.cnn.com/2024/10/14/middleeast/hersh-goldberg-polin-parents-anderson-cooper-intl-latam/index.html",
      "urlToImage": "https://media.cnn.com/api/v1/images/stellar/prod/still-21027682-0-still.jpg?c=16x9&q=w_800,c_fill",
      "publishedAt": "2024-10-15T01:36:00Z",
      "content": "The parents of Hersh Goldberg-Polin, an Israeli-American murdered by Hamas militants in Gaza in August, have told CNN about the crushing blow of losing their son and say they fear that other families… [+5474 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "The Seattle Times"
      },
      "author": "Dominic Gates",
      "title": "Boeing layoff plan suggests deep white-collar job cuts - The Seattle Times",
      "description": "The Boeing layoffs announced last week will all be involuntary. And Machinists union members will, for now, not be laid off, implying heavy cuts among white-collar staff.",
      "url": "https://www.seattletimes.com/business/boeing-aerospace/boeing-layoff-plan-suggests-deep-white-collar-job-cuts/",
      "urlToImage": "https://images.seattletimes.com/wp-content/uploads/2024/10/10142024_tzr_tzr_175637.jpg?d=1200x630",
      "publishedAt": "2024-10-15T01:33:54Z",
      "content": "The major Boeing layoffs announced last week will all be involuntary, meaning the company won’t offer financial incentives to employees to voluntarily exit.\r\nAnd according to the “Reduction In Force”… [+5727 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "UploadVR"
      },
      "author": "David Heaney",
      "title": "Quest 3S Has Better Low-Light Head & Hand Tracking Than Quest 3 - UploadVR",
      "description": "We confirmed: while Quest 3S has inferior lenses and display, it actually has better low-light head & hand tracking than Quest 3.",
      "url": "https://www.uploadvr.com/quest3s-hand-tracking-better-than-quest-3/",
      "urlToImage": "https://www.uploadvr.com/content/images/size/w1200/2024/10/UploadVR-Quest-3S-on-table-with-sensor-clusters-visible-1.png",
      "publishedAt": "2024-10-15T00:56:16Z",
      "content": "UploadVR received our Quest 3S review unit from Meta earlier today, and we've been putting it through its paces for a full review.\r\nUploadVR had been receiving review units multiple days in advance o… [+5221 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "TMZ"
      },
      "author": "TMZ Staff",
      "title": "Graceland Tour Honors Lisa Marie Presley With Rare Look at Elvis Family Items - TMZ",
      "description": "Lisa Marie Presley's life and legacy were celebrated at Graceland ... to honor the arrival of the late singer's memoir.",
      "url": "https://www.tmz.com/2024/10/14/lisa-marie-presley-memoir-graceland-tour-elvis-family-items/",
      "urlToImage": "https://imagez.tmz.com/image/61/16by9/2024/10/14/61dbcb8ff9f3456db4b0df9a31226838_xl.jpg",
      "publishedAt": "2024-10-15T00:56:00Z",
      "content": "Lisa Marie Presley's life and legacy were celebrated at Graceland ... to honor the arrival of the late singer's memoir.\r\nFans of Elvis Presley's daughter were invited into the King of Rock 'n' Roll's… [+1773 chars]"
    },
    {
      "source": {
        "id": "the-hill",
        "name": "The Hill"
      },
      "author": "Tara Suter",
      "title": "CNN’s Tapper, Youngkin spar over Trump military remarks - The Hill",
      "description": "CNN anchor Jake Tapper and Virginia Gov. Glenn Youngkin (R) got into a heated exchange Monday over recent comments former President Trump made about the U.S. military. Trump suggested Sunday during an appearance on Fox News that the National Guard or military…",
      "url": "https://thehill.com/homenews/media/4933376-jake-tapper-glenn-youngkin-donald-trump-military-comments/",
      "urlToImage": "https://thehill.com/wp-content/uploads/sites/2/2024/10/Jake-Tapper-Glenn-Youngkin-10.14.24.png?w=1280",
      "publishedAt": "2024-10-15T00:46:00Z",
      "content": "Skip to content\r\nCNN anchor Jake Tapper and Virginia Gov. Glenn Youngkin (R) got into a heated exchange Monday over recent comments former President Trump made about the U.S. military.\r\nTrump suggest… [+2847 chars]"
    },
    {
      "source": {
        "id": "abc-news",
        "name": "ABC News"
      },
      "author": "WILL WEISSERT Associated Press",
      "title": "Harris announces a new plan to empower Black men as she tries to energize them to vote for her - ABC News",
      "description": "Vice President Kamala Harris has announced a series of proposals designed to give Black men more economic opportunities as she works to energize a key voting bloc that has Democrats concerned about a lack of enthusiasm",
      "url": "https://abcnews.go.com/US/wireStory/harris-laying-new-plan-empower-black-men-energize-114771743",
      "urlToImage": "https://i.abcnewsfe.com/a/7011dd56-61b1-46fe-b00e-893202de8a63/wirestory_67ac83899af785cf4d8788b9fcdeb592_16x9.jpg?w=1600",
      "publishedAt": "2024-10-15T00:45:00Z",
      "content": "ERIE, Pa. -- Vice President Kamala Harris announced a plan on Monday to give Black men more economic opportunities and other chances to thrive as she works to energize a key voting bloc that has Demo… [+5333 chars]"
    }
  ]
};