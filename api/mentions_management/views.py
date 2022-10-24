import logging
import traceback

from api.mentions_management.utils import get_mentions, get_sentiment_chart_from_newsapi
from constants import exception_msg
from environment_variables import news_api_Key


def fetch_mentions_from_newsapi(keyword, start_date, end_date, sort_by, language):
    """
    :param db:
    :param keyword:
    :param start_date:
    :param end_date:
    :param sort_by:
    :param language:
    :return:
    """
    try:

        message, status_code, data = get_mentions(keyword=keyword, start_date=start_date,
                                                  end_date=end_date, sort_by=sort_by,
                                                  language=language, news_api_Key=news_api_Key)
    except Exception as exc:
        logging.exception(str(exc))
        traceback.print_exc()
        data = []
        message = exception_msg
        status_code = 400
    return message, status_code, data


def fetch_sentiment_chart(keyword, start_date, end_date, sort_by, language):
    """
    :param db:
    :param keyword:
    :param start_date:
    :param end_date:
    :param sort_by:
    :param language:
    :return:
    """
    try:

        message, status_code, data = get_sentiment_chart_from_newsapi(keyword=keyword, start_date=start_date,
                                                                      end_date=end_date, sort_by=sort_by,
                                                                      language=language, news_api_Key=news_api_Key)
    except Exception as exc:
        logging.exception(str(exc))
        traceback.print_exc()
        data = []
        message = exception_msg
        status_code = 400
    return message, status_code, data
