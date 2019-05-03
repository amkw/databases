var models = require('../models');
// var bluebird = require('bluebird');
// var http = require('http');

// var userFields = ['username'];
// var messageFields = ['messages', 'username', 'roomname'];

module.exports = {

  messages: {
    get: function (req, res) {
      models.messages.get((err, results) => {
        if (err) { console.error(err) }
        res.json(results);
      });
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      var params = [ req.body.message, req.body.username, req.body.roomname ];
      models.messages.post(params, (err, results) => {
        if (err) { console.error(err) }
        res.sendStatus(201);
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.users.get((err, results) => {
        if (err) { console.error(err) }
        res.json(results);
      });
    },
    post: function (req, res) {
      var params = [ req.body.username ];
      models.users.post(params, (err, results) => {
        if (err) { console.error(err) }
        res.sendStatus(201);
      });
    }
  }
};