from sets import Set

class Twitter(object):

    def __init__(self):
        self.follow_dict = {}
        self.posts = []
        

    def postTweet(self, userId, tweetId):
        post = { 'uId': userId, 'tId': tweetId }
        self.posts.append(post)
        

    def getNewsFeed(self, userId):
        feeds = []
        follows = self.follow_dict[userId] if userId in self.follow_dict else []
        for p in reversed(self.posts):
            if p['uId'] in follows or p['uId'] == userId:
                feeds.append(p['tId'])
                if len(feeds) >= 10: return feeds
        return feeds
        

    def follow(self, followerId, followeeId):
        fd = self.follow_dict
        if followerId not in fd:
            fd[followerId] = Set()
        fd[followerId].add(followeeId)
        

    def unfollow(self, followerId, followeeId):
        fd = self.follow_dict
        if followerId in fd and followeeId in fd[followerId]:
            fd[followerId].remove(followeeId)
