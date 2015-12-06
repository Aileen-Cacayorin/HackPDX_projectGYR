#GYR (Green, Yellow, and Red)

####Version 1.0, December, 5, 2015
By Aileen Cacayorin, Shannon Mulloy, Caterina Paun, and Austin Kincaid

###Description
A web suite for teachers to manage student records while keeping parents fully informed.

Teachers can track behavior, make individual comments on students, mark absences/tardies, detail the day's lessons, detail and attached the evening's homework, and finally email parents all that information from one screen.

The live demo was made within 10 hours.
[Check it out here](https://gyr-pdx.herokuapp.com/teachers/sign_in)

_Goals for future updates_
* _Implement parent-side dashboard for viewing their child/ren's year overview_
* _Implement full document uploading and serving to deliver homework to parents_
* _Implement option for parents to opt for text notification instead of just email only_
* _Improve styling throughout_

###Setup
1. Clone the repo
2. To bundle the gems, type `bundle` into the terminal
3. To launch Postgres, type `postgres` into the terminal
4. To create the database, type `rake db:create` into the terminal
5. To create the tables in the database, type `rake db:migrate` into the terminal
6. Launch server by typing `rails s` into the terminal and going to `localhost:3000` in your browser

###Technologies Used
This app relies on Ruby on Rails, PostgreSQL, Action Mailer (with MailGun), and Bootstrap.

###Legal

Copyright (c) 2015 Aileen Cacayorin, Shannon Mulloy, Caterina Paun, and Austin Kincaid

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
