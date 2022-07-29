# README

<h4>POST localhost:3000/cinemas </h4>
<p>Using of nested attributes </p>

Request JSON : 

```
{
    "name":"Cinepolis: Jagat Mall",
    "no_of_hall":3,
    "city_id": 1,
    "cinema_halls_attributes" : [{
        "hall_no":1,
        "total_seats": 2,
        "cinema_seats_attributes" : [{
            "seat_no" : 1,
            "seat_type" : "Silver"
        },
        {
            "seat_no" : 2,
            "seat_type" : "Gold"
        }]
    },
    {
        "hall_no":2,
        "total_seats": 4,
        "cinema_seats_attributes" : [{
            "seat_no" : 1,
            "seat_type" : "Silver"
        },
        {
            "seat_no" : 2,
            "seat_type" : "Silver"
        },
        {
            "seat_no" : 3,
            "seat_type" : "Gold"
        },
        {
            "seat_no" : 4,
            "seat_type" : "Gold"
        }]
    },
    {
        "hall_no":3,
        "total_seats": 6,
        "cinema_seats_attributes" : [{
            "seat_no" : 1,
            "seat_type" : "Silver"
        },
        {
            "seat_no" : 2,
            "seat_type" : "Silver"
        },
        {
            "seat_no" : 3,
            "seat_type" : "Silver"
        },
        {
            "seat_no" : 4,
            "seat_type" : "Gold"
        },
        {
            "seat_no" : 5,
            "seat_type" : "Gold"
        },
        {
            "seat_no" : 6,
            "seat_type" : "Gold"
        }]
    }]
}
```
