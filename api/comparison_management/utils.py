import requests
from constants import success_msg, request_failure_msg


def mentions_comparison_chart(keyword, start_date, end_date, sort_by, language, news_api_Key):
    """
    :param keyword:
    :param start_date:
    :param end_date:
    :param sort_by:
    :param language:
    :param news_api_Key:
    :return:
    """
    url = "https://newsapi.org/v2/everything?q={}&from={}&to={}&sortBy={}&language={}&apiKey={}".format(
        keyword, start_date, end_date, sort_by, language, news_api_Key)
    response = requests.get(url)

    if response.status_code == 200:
        data = response.json()

        total_results = data['totalResults']

        articles_data = data['articles']
        published_at = start_date

        mentions_data = {
            "total_results": total_results,
            "published_at": published_at
        }
        message = success_msg
        status_code = 200

    else:
        message = request_failure_msg
        status_code = 400
        mentions_data = []

    return message, status_code, mentions_data
