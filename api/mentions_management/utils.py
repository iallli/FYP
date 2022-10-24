import requests

from constants import request_failure_msg, success_msg
from sentiment import sentiment_scores


def get_mentions(keyword, start_date, end_date, sort_by, language, news_api_Key):
    """
    :param keyword:
    :param start_date:AttributeError: module 'jwt' has no attribute 'encode'
    :param end_date:
    :param sort_by:
    :param language:
    :param news_api_Key:
    :return:
    """
    total_sentiment_positive = 0
    total_sentiment_negative = 0
    total_sentiment_neutral = 0
    mentions_data = []
    mentions_data_dict = []
    url = "https://newsapi.org/v2/everything?q={}&from={}&to={}&sortBy={}&language={}&apiKey={}".format(
        keyword, start_date, end_date, sort_by, language, news_api_Key)
    response = requests.get(url)

    if response.status_code == 200:
        data = response.json()

        total_results = data['totalResults']

        articles_data = data['articles']

        for data_obj in articles_data:
            mentions_dict = dict()
            source_dict = dict()
            source_dict['id'] = data_obj['source']['id']
            source_dict['name'] = data_obj['source']['name']
            mentions_dict['source'] = source_dict
            mentions_dict['author'] = data_obj['author']
            mentions_dict['title'] = data_obj['title']
            mentions_dict['description'] = data_obj['description']
            mentions_dict['url'] = data_obj['url']
            mentions_dict['urlToImage'] = data_obj['urlToImage']
            mentions_dict['publishedAt'] = data_obj['publishedAt']
            mentions_dict['content'] = data_obj['content']
            sentiment, total_sentiment_positive, total_sentiment_negative, total_sentiment_neutral=sentiment_scores(
                sentence=data_obj['description'], total_sentiment_positive=total_sentiment_positive,
                total_sentiment_negative=total_sentiment_negative, total_sentiment_neutral=total_sentiment_neutral)
            mentions_dict['sentiment'] = sentiment
            mentions_data_dict.append(mentions_dict)
        mentions_data = {
            "total_results": total_results,
            "articles": mentions_data_dict
        }
        message = success_msg
        status_code = 200

    else:
        message = request_failure_msg
        status_code = 400
        mentions_data = []

    return message, status_code, mentions_data


def get_sentiment_chart_from_newsapi(keyword, start_date, end_date, sort_by, language, news_api_Key):
    """
    :param keyword:
    :param start_date:
    :param end_date:
    :param sort_by:
    :param language:
    :param news_api_Key:
    :return:
    """
    total_sentiment_positive = 0
    total_sentiment_negative = 0
    total_sentiment_neutral = 0
    sentiment_data = []
    mentions_data_dict = []
    url = "https://newsapi.org/v2/everything?q={}&from={}&to={}&sortBy={}&language={}&apiKey={}".format(
        keyword, start_date, end_date, sort_by, language, news_api_Key)
    response = requests.get(url)

    if response.status_code == 200:

        data = response.json()

        total_results = data['totalResults']

        articles_data = data['articles']

        for data_obj in articles_data:
            published_at = data_obj['publishedAt']
            sentiment, total_sentiment_positive, total_sentiment_negative, total_sentiment_neutral = sentiment_scores(
                sentence=data_obj['description'], total_sentiment_positive=total_sentiment_positive,
                total_sentiment_negative=total_sentiment_negative, total_sentiment_neutral=total_sentiment_neutral)

        sentiment_data = {
            # "total_results": total_results,
            "publishedAt": published_at,
            "number_of_positive": total_sentiment_positive,
            "number_of_negative": total_sentiment_negative,
            "number_of_neutral": total_sentiment_neutral
        }
        message = success_msg
        status_code = 200

    else:
        message = request_failure_msg
        status_code = 400
        sentiment_data = []

    return message, status_code, sentiment_data
