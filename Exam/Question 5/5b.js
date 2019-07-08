use testdb;
db.createCollection("tourist")
db.tourist.insert([
	{
		place: "Bangalore",
		address: "Karnataka",
		id: 1,
		tour_att: "Vidhan Soudha",
		time: "January",
		mode: ["Train", "Air", "Road"],
		accommodation: "Hotel",
		food: "Chicken"
	},
	{
		place: "Kochi",
		address: "Kerala",
		id: 2,
		tour_att: "Backwaters",
		time: "Febuary",
		mode: ["Sea", "Air", "Road", "Train"],
		accommodation: "Hotel",
		food: "Fish Fry"
	},
	{
		place: "Agra",
		address: "Delhi",
		id: 3,
		tour_att: "Taj Mahal",
		time: "March",
		mode: ["Train", "Air", "Road"],
		accommodation: "Hotel",
		food: "Petha"
	},
	{
		place: "Gangtok",
		address: "Sikkim",
		id: 4,
		tour_att: "Lake Tsomgo",
		mode: ["Road"],
		accommodation: "Resort",
		food: "Momo"
	},
	{
		place: "Srinagar",
		address: "Jammu And Kashmir",
		id: 5,
		tour_att: "Dal Lake",
		mode: ["Air", "Road"],
		accommodation: "Hotel",
		food: "Dried Fruits"
	},
	{
		place: "Shimla",
		address: "Himachal Pradesh",
		id: 6,
		tour_att: "Viceroy Lodge",
		mode: ["Road"],
		accommodation: "Hotel",
		food: "Madra"
	},
	{
		place: "Kodaikanal",
		address: "Tamil Nadu",
		id: 7,
		tour_att: "Kodaikanal Lake",
		mode: ["Road"],
		accommodation: "Resort",
		food: "Moroccan Spice Tea"
	},
	{
		place: "Corbet",
		address: "Uttarakhand",
		id: 8,
		tour_att: "Jim Corbett National Park",
		mode: ["Road", "Train"],
		accommodation: "Resort",
		food: "Rice"
	},
	{
		place: "Mumbai",
		address: "Maharastra",
		id: 9,
		tour_att: "Queen's Necklace",
		mode: ["Air", "Ship", "Road", "Train"],
		accommodation: "Hotel",
		food: "Vada Pav"
	},
	{
		place: "Hyderabad",
		address: "Telangana",
		id: 10,
		tour_att: "Salar Jung Museum",
		mode: ["Air", "Road", "Train"],
		accommodation: "Hotel",
		food: "Biryani"
	}
]);

//List the tourist attractions of Kerala. Exclude accommodation and food.
db.tourist.find({ address: "Kerala" }, { accommodation: 0, food: 0 }).pretty()

//List the places sorted state wise.
db.tourist.find({}, { place: 1, _id: 0 }).sort({ address: 1 }).pretty()
