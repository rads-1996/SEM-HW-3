const express = require('express');
const app = express();

// new API route: GET /users, returning a list of users
app.get('/data/2.5/weather', (request, response) => {
    response.json(
{
    "coord":{
    "lon":-123.262,
    "lat":44.5646
},
    "weather":[
        {
            "id":804,
            "main":"Clouds",
            "description":"overcast clouds",
            "icon":"04d"
        }
    ],
    "base":"stations",
    "main":{
        "temp":286.16,
        "feels_like":285.45,
        "temp_min":282.28,
        "temp_max":289.41,
        "pressure":1008,
        "humidity":74
    },
    "visibility":10000,
    "wind":{
        "speed":2.06,
        "deg":220
    },
    "clouds":{
        "all":100
    },
    "dt":1666392568,
    "sys":{
        "type":2,
        "id":2040223,
        "country":"US",
        "sunrise":1666362958,
        "sunset":1666401540
    },
    "timezone":-25200,
    "id":5720727,
    "name":"Corvallis",
    "cod":200
}                              
);
});

app.listen(3000, () => {});
