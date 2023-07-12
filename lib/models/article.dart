// ignore_for_file: public_member_api_docs, sort_constructors_first
class Article {
  final String imageUrl;
  final String title;
  final String author;
  final String authorImage;
  final String type;
  final String date;
  final String body;
  Article({
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.authorImage,
    required this.type,
    required this.date,
    required this.body,
  });
}

final articles = [
  Article(
      imageUrl:
          'https://media.cnn.com/api/v1/images/stellar/prod/230630100154-02-flight-attendant-recreated-childhood-photo.jpg?c=original&q=w_1280,c_fill',
      title:
          'An aviation-loving kid posed by an airplane in 1999. Over 20 years later, she recreated the photo',
      author: 'Francesca Street',
      authorImage:
          'https://pbs.twimg.com/profile_images/1255805045154762753/OyMMRcEL_400x400.jpg',
      type: 'Travel',
      date: '6:40 AM EDT, Fri July 7, 2023',
      body: '''
When Gloria Fila was a kid, airplanes were a home away from home.

The daughter of an Austrian Airlines flight attendant and pilot who met on the job, Fila often tagged along on her parents’ work trips. There are photos of her playing happily while in an airplane seat. Some of her earliest memories involve planes, and from a very young age, she loved every minute of being up in the air.

“I was always excited,” Fila tells CNN Travel today. “I cannot recall a single time I was afraid on an airplane.”

When Fila’s father wasn’t flying commercial flights, he’d take his daughter on joy rides on private aircraft.

“He always took me with him,” recalls Fila. “And I always specifically asked to do some aerobatics with the airplane, because I loved it so much and it was the best thing ever.”...'''),
  Article(
      imageUrl:
          'https://media.cnn.com/api/v1/images/stellar/prod/220523114619-intel-ceo-pat-gelsinger.jpg?c=16x9&q=w_850,c_fill',
      title: 'Foxconn pulls out of \$19 billion chipmaking project in India',
      author: 'Michelle Toh',
      authorImage:
          'https://media.cnn.com/api/v1/images/stellar/prod/170831133124-michelle-toh.jpg?c=16x9&q=h_270,w_480,c_fill/c_thumb,g_face,w_100,h_100',
      type: 'Business',
      date: '4:08 AM EDT, Tue July 11, 2023',
      body: ''''
Foxconn says it is exiting an ambitious project to help build one of India’s first chip factories.

The world’s largest contract electronics maker will “no longer move forward” with its \$19.4 billion joint venture with Vedanta (VEDL), an Indian metals and energy conglomerate, in Asia’s third largest economy, it said Monday.

The news was seen as a blow to the Indian government’s plans to turn the country into a tech manufacturing powerhouse, even as officials have sought to counter that view.

In a statement to CNN, Foxconn, a Taiwanese tech giant best known for being one of Apple (AAPL)’s top suppliers, said the decision was based on “mutual agreement” and allowed the company “to explore more diverse development opportunities.”

The joint venture will now be wholly owned by Vedanta.

In a followup statement Tuesday, Foxconn reaffirmed its commitment to invest in Indian chipmaking, saying it will apply for a government program that subsidizes the cost of setting up semiconductor or electronic display production facilities in the country.
'''),
  Article(
      imageUrl:
          'https://media.cnn.com/api/v1/images/stellar/prod/230703200614-ukraine-apartment-strike-wedeman.jpg?c=16x9&q=h_540,w_960,c_fill',
      title:
          'Exclusive: ‘Shameful and unethical.’ Heineken, Unilever and Oreo maker Mondelez accused of breaking promises to leave Russia',
      author: 'Matt Egan',
      authorImage:
          'https://media.cnn.com/api/v1/images/stellar/prod/220428153356-matt-egan-profile.jpg?c=16x9&q=h_270,w_480,c_fill/c_thumb,g_face,w_100,h_100',
      type: 'Business',
      date: '4:27 PM EDT, Tue July 11, 2023',
      body: '''
More than 1,000 major companies pledged to leave Russia after President Vladimir Putin launched his devastating war in Ukraine, but some well-known firms stand accused by researchers of violating their pledge.

Not every company on the list left, but more than 1,000 exited. That unprecedented corporate exodus, championed and chronicled by Yale professor Jeff Sonnenfeld, dealt a serious financial and symbolic blow to Moscow and the Russian economy.

Now, as Russia’s brutal war in Ukraine blows past the 500-day mark, Sonnenfeld and his team are naming and shaming a slew of companies they accuse of breaking their promises to leave or at least drastically scale back their presence in Russia, including well-known companies like Heineken, Unilever, Philip Morris International and Oreo maker Mondelez.

The Yale research, shared exclusively with CNN, is based on whistleblowers, on-the-ground experts, students operating inside Russia, corporate documents and news media reports.

“These companies are breaking their promises. They are functioning as wartime profiteers,” Sonnenfeld told CNN in an interview. “It’s beyond disappointing. It’s shameful and unethical.”

Sonnenfeld, who has testified before Congress about companies leaving Russia, is not accusing these corporations of breaking the law. Instead, he argues that by staying in Russia, they are breaking a moral code and simultaneously “self-immolating their own brands.”
'''),
];
