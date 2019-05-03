var models = require('../models');
var bluebird = require('bluebird');
var db = require('../db');


var userFields = ['username'];
var messageFields = ['message', 'username', 'roomname'];

module.exports = {

  messages: {
    get: function (req, res) {
      db.Message.findAll()//{include: [db.User]})
        .then(function(messages) {
          res.json(messages);
        });
      // models.messages.get((err, results) => {
      //   if (err) { console.error(err) }
      //   res.json(results);
      // });
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      db.User.findOrCreate({where: {username: req.body.username}})
        .spread(function(user, created) {
          db.Message.create({
            userid: user.get('id'),
            text: req.body.message,
            roomname: req.body.roomname
          }).then(function(message) {
            res.sendStatus(201);
          });
        });

      // models.messages.post(params, (err, results) => {
      //   if (err) { console.error(err) }
      //   res.sendStatus(201);
      // });
    } // a function which handles posting a message to the database
  },

  users: {

    get: function (req, res) {
      db.User.findAll()
        .then(function(users) {
          res.json(users);
        });
      // models.users.get((err, results) => {
      //   if (err) { console.error(err) }
      //   res.json(results);
      // });
    },
    post: function (req, res) {
      db.User.findOrCreate({where: {username: req.body.username}})
        .spread(function(user, created) {
          res.sendStatus(created ? 201 : 200);
        });
      // var params = [ req.body.username ];
      // models.users.post(params, (err, results) => {
      //   if (err) { console.error(err) }
      //   res.sendStatus(201);
      // });

    }
  }
};