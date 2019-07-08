use restaurant;
db.createCollection('res');
db.res.insert([
  {
    name: "McDonalds",
    address: "12 BEL Road 560095",
    cuisine: "Fast food",
    landmark: "MSR Hospital",
    delivery: "Yes",
    famousfor: "Cheese burger"
  },
  {
    name: "Burger King",
    address: "8 BEL Road, 560095",
    cuisine: "Fast food",
    landmark: "MSR Hospital",
    delivery: "Yes",
    famousfor: "Cheese burger"
  },
  {
    name: "Naturals",
    address: "34 St Marks Road, 560023",
    cuisine: "Fast food",
    landmark: "St Marks Hotel",
    delivery: "Yes",
    famousfor: "Ice Cream"
  },
  {
    name: "Little Italy",
    address: "21 Orchard Road, Sadashivnagar, 560017",
    cuisine: "Italian",
    landmark: "Bashim Circle",
    delivery: "No",
    famousfor: "Pizza"
  },
  {
    name: "Nandhana",
    address: "10 Street, Jayanagar, 560087",
    cuisine: "South Indian",
    landmark: "post office",
    delivery: "Yes",
    famousfor: "South Indian Thali"
  },
  {
    name: "Chalukya",
    address: "10 Street, Kumara Park, 560044",
    cuisine: "North Indian",
    landmark: "Hotel Samrat",
    delivery: "Yes",
    famousfor: "North Indian Thali"
  },
  {
    name: "1522",
    address: "31 Street, Rajajinagar, 560017",
    cuisine: "North Indian",
    landmark: "Post office",
    delivery: "Yes",
    famousfor: "Dragon Chicken"
  },
  {
    name: "Stories",
    address: "12 Street, Rajajinagar, 560021",
    cuisine: "fast food",
    landmark: "Post office",
    delivery: "yes",
    famousfor: "Cheese burger"
  },
  {
    name: "The Bangalore Cafe",
    address: "13 Street, Jayanagar, 560021",
    cuisine: "Continental",
    landmark: "Post office",
    delivery: "Yes",
    famousfor: "Pasta"
  },
  {
    name: "Pizza Hut",
    address: "12 Street, RT Nagar, 560021",
    cuisine: "Italian",
    landmark: "Post office",
    delivery: "yes",
    famousfor: "Pizza"
  },
]);

//List the name, address and nearby landmarks of all restaurants in Bangalore where north Indianthali is available.

db.res.find({ famousfor: "North Indian Thali" }, { name: 1, address: 1, landmarks: 1, _id: 0 }).pretty();

//List the name and address of restaurants and also the dish the restaurant is famous for, in Bangalore where online delivery is available.

db.res.find({},{ name: 1, address: 1, famousfor: 1, _id:0 }).pretty();