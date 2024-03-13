// ignore_for_file: public_member_api_docs, sort_constructors_first
class BlogContent {
  final String title;
  final String imageURL;
  final Map<String, dynamic> content;

  BlogContent({
    required this.title,
    required this.imageURL,
    required this.content,
  });
  static List<BlogContent> createMockPosts() {
    return [
      BlogContent(
        title: 'POWER TO BLOOM',
        imageURL:
            'https://i.shgcdn.com/461ee3ae-08d7-4a5e-98e2-ff1157e749bf/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        content: {},
      ),
      BlogContent(
        title: 'THE FUTURE LOOKS BRIGHT',
        imageURL:
            'https://i.shgcdn.com/1d3754ed-62c5-4f81-85e2-14e11d2a887c/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        content: {},
      ),
      BlogContent(
        title: 'WHEN I AM NOT THERE',
        imageURL:
            'https://i.shgcdn.com/2a4cf9c9-a5e3-463f-b110-edaefe6f1f3c/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        content: {},
      ),
      BlogContent(
        title: 'INTRODUCING OUR NEW SEASON MUST-HAVES',
        imageURL:
            'https://i.shgcdn.com/5e408043-0e96-4aa5-b5e4-75fceef29dd8/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        content: {},
      ),
      BlogContent(
        title: 'THE WEAR-ANYWHERE DRESS',
        imageURL:
            'https://i.shgcdn.com/a43a7397-6f64-4534-92c2-372a373f925c/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
        content: {},
      )
    ];
  }

  @override
  String toString() =>
      'BlogContent(title: $title, imageURL: $imageURL, content: $content)';
}
