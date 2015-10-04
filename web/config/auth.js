// expose our config directly to our application using module.exports
module.exports = {

    'facebookAuth' : {
        'clientID'      : 'your-secret-clientID-here', // your App ID
        'clientSecret'  : 'your-client-secret-here', // your App Secret
        'callbackURL'   : 'http://localhost:8080/auth/facebook/callback'
    },

    'twitterAuth' : {
        'consumerKey'       : process.env.TWITTER_CLIENTID,
        'consumerSecret'    : process.env.TWITTER_CLIENT_SECRET,
        'callbackURL'       : process.env.TWITTER_CALLBACK_URL
    },

    'googleAuth' : {
        'clientID'      : process.env.GOOGLE_CLIENTID,
        'clientSecret'  : process.env.GOOGLE_CLIENT_SECRET,
        'callbackURL'   : process.env.GOOGLE_CALLBACK_URL
    }

};
