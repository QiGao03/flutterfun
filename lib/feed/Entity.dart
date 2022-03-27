class BaseEntity{

  const BaseEntity({
    this.url,
    this.title,
    this.author,
    this.imageUrl,
  });

  final String? url ;
  final String? title ;
  final String? author;
  final String? imageUrl;
}


class VideoEntity extends BaseEntity{

}

class ArticleEntity extends BaseEntity{


}

