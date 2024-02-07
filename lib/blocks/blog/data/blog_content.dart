
// TODO: Rename it to something better.
class BlogContent {
  final String title;
  final String description;
  final String imageURL;
  final String postURL;

  BlogContent({
    required this.title,
    required this.description,
    required this.imageURL,
    required this.postURL,
  });

  static List<BlogContent> createMockPosts() {
    return [
      BlogContent(
        title: 'POWER TO BLOOM',
        description:
            'Oroton\'s Spring-Summer 23 collection is inspired by the joy of spring blooms, of rejuvenation and the energy that comes from new beginnings.',
        imageURL:
            'https://i.shgcdn.com/461ee3ae-08d7-4a5e-98e2-ff1157e749bf/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        postURL: 'https://oroton.com/journal/spring-august-launch',
      ),
      BlogContent(
        title: 'THE FUTURE LOOKS BRIGHT',
        description:
            'There is something illuminating, if you\'ll excuse the pun, about dressing in the season\'s key brights.',
        imageURL:
            'https://i.shgcdn.com/1d3754ed-62c5-4f81-85e2-14e11d2a887c/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        postURL: 'https://oroton.com/journal/the-future-looks-bright',
      ),
      BlogContent(
        title: 'WHEN I AM NOT THERE',
        description:
            'There is something illuminating, if you\'ll excuse the pun, about dressing in the season\'s key brights.',
        imageURL:
            'https://i.shgcdn.com/2a4cf9c9-a5e3-463f-b110-edaefe6f1f3c/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        postURL: 'https://oroton.com/journal/shelley-lasica',
      ),
      BlogContent(
        title: 'INTRODUCING OUR NEW SEASON MUST-HAVES',
        description:
            'There is something illuminating, if you\'ll excuse the pun, about dressing in the season\'s key brights.',
        imageURL:
            'https://i.shgcdn.com/5e408043-0e96-4aa5-b5e4-75fceef29dd8/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        postURL:
            'https://www.oroton.com/journal/the-new-classics-introducing-our-new-season-must-haves',
      ),
      BlogContent(
        title: 'THE WEAR-ANYWHERE DRESS',
        description:
            'There is something illuminating, if you\'ll excuse the pun, about dressing in the season\'s key brights.',
        imageURL:
            'https://i.shgcdn.com/a43a7397-6f64-4534-92c2-372a373f925c/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        postURL:
            'https://www.oroton.com/journal/just-in-the-wear-anywhere-dress',
      )
    ];
  }
}
