import 'package:liulo/data/rest_ds.dart';
import 'package:liulo/model/question.dart';
import 'package:liulo/model/response/list_question_response.dart';
import 'package:liulo/utils/data_util.dart';

abstract class ListQuestionScreenContract {
  void onGetDataSuccess(List<Question> items);

  void onGetDataFailed(String error);
}

class ListQuestionPresenter {
  ListQuestionScreenContract _view;
  RestDatasource api = new RestDatasource();

  ListQuestionPresenter(this._view);

  void fakeData() {
    _view.onGetDataSuccess(DataUtil.getFakeListQuestion());
  }

  void getListTopic(String token, int id) {
    api.getListQuestion(token, id).then((
        ListQuestionResponse listQuestionResponse) {
      _view.onGetDataSuccess(listQuestionResponse.data);
    }).catchError((Exception error) => _view.onGetDataFailed(error.toString()));
  }

}
