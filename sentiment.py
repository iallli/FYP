from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer


def sentiment_scores(sentence, total_sentiment_positive=None, total_sentiment_negative=None, total_sentiment_neutral=None):

    sid_obj = SentimentIntensityAnalyzer()

    sentiment_dict = sid_obj.polarity_scores(sentence)

    print("Overall sentiment dictionary is : ", sentiment_dict)
    print("sentence was rated as ", sentiment_dict['neg'] * 100, "% Negative")
    print("sentence was rated as ", sentiment_dict['neu'] * 100, "% Neutral")
    print("sentence was rated as ", sentiment_dict['pos'] * 100, "% Positive")

    print("Sentence Overall Rated As", end=" ")

    # decide sentiment as positive, negative and neutral
    if sentiment_dict['compound'] >= 0.05:
        print("Positive")
        sentiment = "Positive"
        total_sentiment_positive = total_sentiment_positive + 1
        print("total_sentiment_positive", total_sentiment_positive)

    elif sentiment_dict['compound'] <= - 0.05:
        print("Negative")
        sentiment = "Negative"
        total_sentiment_negative = total_sentiment_negative + 1
        print("total_sentiment_negative", total_sentiment_negative)
    else:
        print("Neutral")
        sentiment = "Neutral"
        total_sentiment_neutral = total_sentiment_neutral + 1
        print("total_sentiment_neutral", total_sentiment_neutral)

    return sentiment, total_sentiment_positive, total_sentiment_negative, total_sentiment_neutral


