const express = require('express');
require('dotenv').config();

const app = express();

// const sessionMiddleware = require('./modules/session-middleware');
// const passport = require('./strategies/user.strategy');

// Route includes
const weaponRouter = require('./routes/weapon.router');
// const userRouter = require('./routes/user.router');
// const wordsRouter = require('./routes/words.router');
// const learnRouter = require('./routes/learn.router');
// const reviewRouter = require('./routes/review.router');

// Body parser middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Passport Session Configuration //
// app.use(sessionMiddleware);

// start up passport sessions
// app.use(passport.initialize());
// app.use(passport.session());

/* Routes */
app.use('/api/weapon', weaponRouter);
// app.use('/api/user', userRouter);
// app.use('/api/words', wordsRouter);
// app.use('/api/learn', learnRouter);
// app.use('/api/review', reviewRouter);


// App Set //
const PORT = process.env.PORT || 5000;

/** Listen * */
app.listen(PORT, () => {
  console.log(`Listening on port: ${PORT}`);
});
