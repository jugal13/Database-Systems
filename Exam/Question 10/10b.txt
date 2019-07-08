use testdb;
db.createCollection("movie")
db.movie.insert([
  {
    actor_name: ["Ram", "John"],
    actor_id: 13,
    actor_bdate: "2/3/1997",
    director_name: "Williams",
    director_id: 101,
    director_bdate: "12/9/1987",
    film: "Battleship",
    year: 2015,
    type: ["Thriller", "Action"]
  },
  {
    actor_name: ["John"],
    actor_id: 11,
    actor_bdate: "1/2/1998",
    director_name: "Ram",
    director_id: 100,
    director_bdate: "2/3/1997",
    film: "John Wick",
    year: 2012,
    type: ["Action"]
  },
  {
    actor_name: ["Elly", "John"],
    actor_id: 12,
    actor_bdate: "4/12/1998",
    director_name: "Ram",
    director_id: 100,
    director_bdate: "2/3/1997",
    film: "Aquaman",
    year: 2012,
    type: ["Action", "Sci-fi"]
  },
  {
    actor_name: "Ram",
    actor_id: 13,
    actor_bdate: "2/3/1997",
    director_name: "Thomas",
    director_id: 103,
    director_bdate: "12/3/1999",
    film: "xxx",
    year: 2018,
    type: ["Action"]
  },
  {
    actor_name: "John",
    actor_id: 11,
    actor_bdate: "1/2/1998",
    director_name: "Ram",
    director_id: 100,
    director_bdate: "2/3/1997",
    film: "Mr. Bean",
    year: 2018,
    type: ["Comedy"]
  },
])

//List all the movies acted by John and Elly in the year 2012.
db.movie.find({ $and: [{ actor_name: "john" }, { actor_name: "elly" }, { year: 2012 }] }, { film: 1, _id: 0 }).pretty()

//List only the name and type of the movie where Ram has acted sorted by movie names.
db.movie.find({ actor_name: "Ram" }, { film: 1, type: 1, _id: 0 }).sort({ film: 1 }).pretty()