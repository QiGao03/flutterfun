

class FeedDataManager {

  static late  FeedDataManager instence ;

  FeedDataManager._internal();

  static FeedDataManager _getInstence(){
    if(instence == null){
      instence = FeedDataManager._internal();
    }
    return instence;
  }


}