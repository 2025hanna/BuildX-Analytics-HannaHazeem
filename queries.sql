
-- QUERY 1-- Purpose: Find all high-rated restaurants with rating above 4.5
-- ==========================================
SELECT c3 as restaurant_name, c5 as rate_out_of_5, c4 as restaurant_type, c11 as city
FROM cleaned_dataset
WHERE c5 > 4.5
ORDER BY c5 DESC;

RESULT
restaurant_name	rate_out_of_5	restaurant_type	city
restaurant name	rate (out of 5)	restaurant type	area
Asia Kitchen By Mainland China	4.9	Casual Dining, Bar	Byresandra,Tavarekere,Madiwala
Byg Brewski Brewing Company	4.9	Microbrewery	Bellandur
Belgian Waffle Factory	4.8	Dessert Parlor	Byresandra,Tavarekere,Madiwala
OG Variar & Sons	4.8	Bakery	Malleshwaram
Punjab Grill	4.8	Casual Dining	Whitefield
The Pizza Bakery	4.8	Casual Dining	Indiranagar
Barbecue by Punjab Grill	4.7	Casual Dining	Malleshwaram
Biergarten	4.7	Microbrewery, Pub	Brookefield
Burma Burma	4.7	Casual Dining	Indiranagar
CTR	4.7	Quick Bites	Malleshwaram
ECHOES Koramangala	4.7	Cafe, Casual Dining	Byresandra,Tavarekere,Madiwala
Flechazo	4.7	Casual Dining	Marathahalli
House Of Commons	4.7	Bar	HSR
Maziga	4.7	Casual Dining	Whitefield
Taaza Thindi	4.7	Quick Bites	Banashankari
TBC Sky Lounge	4.7	Casual Dining, Bar	HSR
The Big Barbeque	4.7	Casual Dining	Electronic City
The Black Pearl	4.7	Casual Dining, Bar	Byresandra,Tavarekere,Madiwala
Toit	4.7	Microbrewery	Indiranagar
You Mee	4.7	Casual Dining	Brookefield
ABs - Absolute Barbecues	4.6	Casual Dining	Kalyan Nagar
Baar Union	4.6	Bar, Pub	HSR
Big Pitcher	4.6	Pub, Microbrewery	Old Airport Road
Brew and Barbeque - A Microbrewery Pub	4.6	Microbrewery, Pub	Marathahalli
Caperberry	4.6	Fine Dining	Brigade Road
Chilis American Grill & Bar	4.6	Casual Dining	Whitefield
Communiti	4.6	Microbrewery, Casual Dining	Lavelle Road
Dock Frostd	4.6	Beverage Shop, Dessert Parlor	Brookefield
Here & Now	4.6	Cafe	HSR
Hunger Camp	4.6	Casual Dining	Bannerghatta Road
Koramangala Social	4.6	Lounge	Byresandra,Tavarekere,Madiwala
Kurtoskalacs	4.6	Dessert Parlor, Quick Bites	Koramangala 5th Block
Lot Like Crepes	4.6	Cafe, Dessert Parlor	Jayanagar
Mugful Of Stories	4.6	Dessert Parlor	Kalyan Nagar
Oota Bangalore	4.6	Casual Dining	Brookefield
Rim Naam - The Oberoi	4.6	Fine Dining	Brigade Road
Sarjapur Social	4.6	Bar, Casual Dining	Bellandur
Sea Lions BBQ & Grills	4.6	Casual Dining	Jayanagar
Sea Rock	4.6	Casual Dining	Malleshwaram
Smoke House Deli	4.6	Casual Dining	Brigade Road
Stories	4.6	Casual Dining, Bar	Malleshwaram
The Blue Wagon - Kitchen	4.6	Cafe	Banashankari
The Boozy Griffin	4.6	Casual Dining, Pub	Byresandra,Tavarekere,Madiwala
The Fatty Bao - Asian Gastro Bar	4.6	Casual Dining, Bar	Indiranagar
The Hole in the Wall Cafe	4.6	Cafe	Koramangala 4th Block
The Pancake Story	4.6	Dessert Parlor	Byresandra,Tavarekere,Madiwala
Toast & Tonic	4.6	Casual Dining	Brigade Road
Vanilla Sky	4.6	Lounge	HSR
Windmills Craftworks	4.6	Microbrewery, Pub	Brookefield
Yauatcha	4.6	Fine Dining	Indiranagar



-- ==========================================
-- QUERY 2-- Purpose: Get average rating and total restaurants for each restaurant type
-- ==========================================
SELECT c4 as restaurant_type, 
       COUNT(*) as total_restaurants,
       ROUND(AVG(c5), 2) as avg_rating,
       ROUND(AVG(c7), 2) as avg_cost_for_two
FROM cleaned_dataset
GROUP BY c4
ORDER BY avg_rating DESC;

RESULT

restaurant_type	total_restaurants	avg_rating	avg_cost_for_two
Bar, Pub	1	4.6	850
Microbrewery, Pub	8	4.46	1725
Pub, Microbrewery	6	4.4	1766.67
Microbrewery, Bar	1	4.4	1200
Fine Dining, Lounge	1	4.4	3000
Casual Dining, Irani Cafee	1	4.4	1300
Cafe, Lounge	1	4.4	1000
Fine Dining, Microbrewery	1	4.3	3000
Casual Dining, Microbrewery	5	4.26	1440
Fine Dining, Bar	7	4.24	2785.71
Microbrewery	6	4.22	1600
Microbrewery, Lounge	1	4.2	1700
Microbrewery, Casual Dining	17	4.15	1576.47
Lounge, Casual Dining	6	4.12	1866.67
Fine Dining	74	4.11	2710.81
Cafe, Bar	1	4.1	1200
Bar, Lounge	2	4.1	2450
Casual Dining, Pub	12	4.04	1275
Club	5	4.02	1940
Pub, Casual Dining	25	4.01	1288
Cafe, Casual Dining	15	3.99	873.33
Lounge, Bar	5	3.98	1860
Casual Dining, Cafe	22	3.98	972.73
Cafe, Dessert Parlor	17	3.95	600
Bar, Casual Dining	53	3.91	1353.77
Lounge, Cafe	1	3.9	1600
Club, Casual Dining	1	3.9	2400
Casual Dining, Bar	121	3.87	1145.87
Beverage Shop, Dessert Parlor	6	3.83	341.67
Lounge	58	3.81	1771.55
Bakery, Cafe	7	3.81	585.71
Dessert Parlor, Bakery	4	3.8	625
Cafe, Quick Bites	9	3.8	461.11
Cafe, Bakery	11	3.8	590.91
Pub	34	3.78	1210.29
Casual Dining, Lounge	3	3.77	1233.33
Dessert Parlor, Quick Bites	14	3.74	382.14
Quick Bites, Meat Shop	1	3.7	350
Lounge, Microbrewery	1	3.7	2000
Cafe	373	3.68	593.03
Bar	81	3.68	1288.89
Dessert Parlor, Beverage Shop	7	3.67	271.43
Quick Bites, Bakery	5	3.62	290
Bakery, Dessert Parlor	15	3.61	346.67
Quick Bites, Food Court	1	3.6	200
Confectionery	2	3.6	650
Casual Dining, Sweet Shop	1	3.6	400
Casual Dining	1609	3.6	753.67
Dessert Parlor	207	3.56	312.13
Quick Bites, Sweet Shop	10	3.55	230
Beverage Shop, Quick Bites	28	3.51	239.29
Kiosk	36	3.5	261.11
Casual Dining, Quick Bites	1	3.5	300
Food Truck	19	3.49	292.11
Bakery	146	3.48	350.07
Sweet Shop	46	3.47	229.35
Dessert Parlor, Sweet Shop	3	3.47	216.67
Quick Bites, Beverage Shop	12	3.45	287.5
Sweet Shop, Quick Bites	30	3.44	213.33
Bakery, Quick Bites	18	3.44	350
Quick Bites, Dessert Parlor	7	3.43	364.29
Mess	45	3.43	256.67
Beverage Shop	115	3.41	207.83
Quick Bites	2774	3.4	305.39
Food Court, Dessert Parlor	1	3.4	250
Delivery	339	3.38	421.24
Food Court, Quick Bites	10	3.36	440
Takeaway	17	3.33	273.53
Pub, Bar	2	3.3	1050
Food Court, Beverage Shop	1	3.3	200
Food Court	78	3.3	433.72
Takeaway, Delivery	283	3.29	391.83
Quick Bites, Mess	1	3.2	400
Dessert Parlor, Cafe	3	3.2	633.33
Bhojanalya	1	3.2	300
Beverage Shop, Cafe	1	3.2	500
Bakery, Beverage Shop	1	3.2	250
Dhaba	7	3.16	321.43
Quick Bites, Cafe	4	3.02	412.5
Food Court, Casual Dining	2	3	550
restaurant type	1	0	0



-- ==========================================
-- QUERY 3-- Purpose: Find Top 10 most rated restaurants by number of ratings
-- ==========================================
SELECT c3 as restaurant_name, c6 as num_of_ratings, c5 as rate_out_of_5, c11 as city
FROM cleaned_dataset
ORDER BY c6 DESC
LIMIT 10;

RESULT
restaurant_name	num_of_ratings	rate_out_of_5	city
restaurant name	num of ratings	rate (out of 5)	area
Chapter One Bar | Maiin	997	4.2	New BEL Road
Amritsari Kulcha Bite	99	3.9	Indiranagar
Anand Sweets and Savouries	99	4	Kalyan Nagar
Chick Inn	99	3.8	Malleshwaram
Cold Stone Creamery	99	3.9	Bannerghatta Road
Kalpavruksha	99	3.9	Bannerghatta Road
Midnight Pizza Slurpp	99	3.7	Koramangala 4th Block
RoadHouse Grill	99	3.8	Brookefield
Sizzling Pasto	99	4.1	Marathahalli



-- ==========================================
-- QUERY 4-- Purpose: Find restaurant types that have more than 10 restaurants and avg rating > 4.0
-- ==========================================
SELECT c4 as restaurant_type,
       COUNT(*) as total_restaurants,
       ROUND(AVG(c5), 2) as avg_rating
FROM cleaned_dataset
GROUP BY c4
HAVING COUNT(*) > 10 AND AVG(c5) > 4.0
ORDER BY avg_rating DESC;

RESULT
restaurant_type	total_restaurants	avg_rating
Microbrewery, Casual Dining	17	4.15
Fine Dining	74	4.11
Casual Dining, Pub	12	4.04
Pub, Casual Dining	25	4.01



-- ==========================================
-- QUERY 5-- Purpose: Find restaurants with 'Biryani' in name and cost between 300 and 800 for two people
-- ==========================================
SELECT c3 as restaurant_name, c7 as avg_cost_two_people, c5 as rate_out_of_5, c4 as restaurant_type
FROM cleaned_dataset
WHERE c3 LIKE '%Biryani%' 
  AND c7 BETWEEN 300 AND 800
ORDER BY c5 DESC;

RESULT
restaurant_name	avg_cost_two_people	rate_out_of_5	restaurant_type
The Biryani Story	600	4.4	Casual Dining
Biryani Kitchen	450	4.3	Food Court
Xpress Biryani	650	4.3	Casual Dining
Zamindars Biryani Durbar	600	4.3	Casual Dining
The Biryani Cafe	300	4.1	Quick Bites
Andhra Biryanis	700	4	Casual Dining
Biryanis And More	750	4	Casual Dining
Lazeez Biryani	400	4	Quick Bites
Pauls Dum Biryani	400	4	Delivery
Ajwa Thalassery Biryani	500	3.9	Quick Bites
Behrouz Biryani	650	3.9	Delivery
Coastal Biryani Paradise	500	3.9	Casual Dining
Cubbonpete Donne Biryani	300	3.9	Quick Bites
Dum Biryani Hub	700	3.9	Quick Bites
Firewood Biryani	400	3.9	Quick Bites
Handi Biryani	300	3.9	Quick Bites
Khyma Biryani	600	3.9	Casual Dining
Pot Biryani	600	3.9	Casual Dining
Royal Biryani Kitchen	600	3.9	Quick Bites
SS Bucket Biryani	600	3.9	Casual Dining
Biryani Mandra	500	3.8	Takeaway, Delivery
Biryani Paradise	700	3.8	Casual Dining
Biryani Pot	500	3.8	Casual Dining
Jaffas Biryani	550	3.8	Casual Dining
Kirthis Biryani	700	3.8	Cafe
Raichur Biryani House	400	3.8	Quick Bites
The Biryani Paradise	350	3.8	Quick Bites
The Biryanis	500	3.8	Casual Dining
Vijayas Biryani Palace	400	3.8	Quick Bites
Waah Biryani	350	3.8	Quick Bites
Bengalurus Biryanis Paradise	300	3.7	Quick Bites
Biryani & Kabab Corner	450	3.7	Casual Dining
Biryani Day	500	3.7	Casual Dining
Biryani Durbar	400	3.7	Takeaway, Delivery
Biryani Express	600	3.7	Casual Dining
Chickpet Donne Biryani House	600	3.7	Casual Dining
Donne Biryani House	350	3.7	Delivery
GKT Biryani World	350	3.7	Quick Bites
Hyderabadi Dum Biryani	300	3.7	Quick Bites
Mylari Biryani Family Restaurant	400	3.7	Quick Bites
New Biryani Mane	450	3.7	Casual Dining
Oh My Biryani	550	3.7	Takeaway, Delivery
Rafees Biryani	600	3.7	Takeaway, Delivery
Sri Jayadurga Biryani	300	3.7	Takeaway, Delivery
Suchithra Biryani House	450	3.7	Casual Dining
AKSHAYA BIRYANI	300	3.6	Quick Bites
Biryani Knights	300	3.6	Delivery
Biryani Lakhnawi	500	3.6	Quick Bites
Biryani Mane	600	3.6	Quick Bites
Biryani Palace	750	3.6	Casual Dining
BMR Hyderabad Biryani	400	3.6	Takeaway, Delivery
Chikpet Donne Biryani House	350	3.6	Quick Bites
Donne Biryani Hatti	300	3.6	Quick Bites
Habibs Biryani	400	3.6	Delivery
Jayanagara Donne Biryani	400	3.6	Quick Bites
Jubli Biryani	500	3.6	Quick Bites
Meal & Biryani	450	3.6	Quick Bites
Moolehatti Donne Biryani Mane	400	3.6	Quick Bites
Rayans Biryani	450	3.6	Quick Bites
Shivajinagar Gardi Ustad Pehlwan Kale Bhai Biryani	300	3.6	Quick Bites
Ambika Biryani Corner	300	3.5	Quick Bites
Biryani Affair	350	3.5	Delivery
Biryani House	600	3.5	Casual Dining
Biryani Hut	300	3.5	Quick Bites
Biryani Magic	300	3.5	Quick Bites
Biryani Nights	400	3.5	Quick Bites
Biryani Spot	300	3.5	Quick Bites
Biryani Times	300	3.5	Quick Bites
Box of Biryani	400	3.5	Delivery
BTM Bawarchi Biryani	600	3.5	Takeaway, Delivery
Chinnus Mane Biryani	300	3.5	Quick Bites
Hanumanthanagar Biryani Junction	300	3.5	Quick Bites
Hasee-E-Shan Makers Of Biryani	500	3.5	Casual Dining
Manis Dum Biryani	750	3.5	Casual Dining
Mast Biryani - Fresh Indian Kitchen	500	3.5	Casual Dining
Mast Biryani - Night Express	500	3.5	Delivery
Naidoos Donne Biryani	300	3.5	Takeaway, Delivery
New Banashankari Donne Biryani	300	3.5	Quick Bites
Sri Datta Biryani House	300	3.5	Quick Bites
Bawarchi Biryani	350	3.4	Quick Bites
Biryani Park	500	3.4	Casual Dining
Classic Biryani Hut	300	3.4	Quick Bites
Dakshin Biryani & Tiffin	550	3.4	Casual Dining
Ghee Biryanis	500	3.4	Takeaway, Delivery
Gundappa Donne Biryani Mane	300	3.4	Quick Bites
Halli Donne Biryani Nati Style	400	3.4	Quick Bites
Hum Biryani	600	3.4	Delivery
Hyderabadi Biryani Corner	350	3.4	Quick Bites
Kanika Biryani Paradise	700	3.4	Casual Dining
KBC - Kebab Biryani Curry	400	3.4	Quick Bites
KFs Biryanis and Kababs	400	3.4	Quick Bites
4K Biryani	700	3.3	Delivery
A M Biryani Hotel	300	3.3	Quick Bites
Biryani Bowl	550	3.3	Kiosk
Biryani Darbar	600	3.3	Casual Dining
Bowl N Biryani	500	3.3	Quick Bites
Costa Biryanis	300	3.3	Delivery
Fat Chef Biryani Wale	400	3.3	Takeaway, Delivery
Naaniz Biryani	300	3.3	Quick Bites
Namma Halli Jonne Biryani	300	3.3	Quick Bites
Parinitha Biryani Corner	300	3.3	Quick Bites
RSS Donne Biryani	300	3.3	Quick Bites
S P Dum Biryani	400	3.3	Delivery
Sai Donne Biryani	300	3.3	Quick Bites
Supreme Biryani	400	3.3	Delivery
Village Donne Biryani	300	3.3	Quick Bites
7Biryanis	600	3.2	Casual Dining
A1 Ambur Dum Biryani And Parota Centre	300	3.2	Quick Bites
Al Diwan Biryanis And More	300	3.2	Takeaway, Delivery
Ambur Biryani	450	3.2	Quick Bites
Biryani Hub	600	3.2	Quick Bites
Bismilla Kabab & Biryani Centre	300	3.2	Quick Bites
Bullet Biryani	300	3.2	Takeaway, Delivery
Donne Biryani Mane	300	3.2	Quick Bites
Hyderabad Biryani	600	3.2	Casual Dining
Katriguppe Donne Biryani	300	3.2	Quick Bites
Mr Anbug Ambur Biryani	300	3.2	Quick Bites
New Prashanthi Donne Biryani	300	3.2	Quick Bites
Night Biryani	600	3.2	Takeaway, Delivery
Nihas Hyderabadi Biryani	300	3.2	Quick Bites
Spice Garden by Dum Mast Biryani	550	3.2	Casual Dining
Srinidhi Donne Biryani	300	3.2	Quick Bites
The Biryani Culture	500	3.2	Food Court
Ustaad Biryani	500	3.2	Delivery
Andhra Biryani & Curries	400	3.1	Quick Bites
Biryani Foodies	500	3.1	Quick Bites
Dodda Mane Donne Biryani	400	3.1	Quick Bites
Ghee Biryani House	400	3.1	Quick Bites
Grill Biryanis	500	3.1	Quick Bites
New A1 Chicken Biryani Point	300	3.1	Quick Bites
New Chickpete Donne Biryani	300	3.1	Quick Bites
Shahi Hyderabadi Dum Biryani	500	3.1	Casual Dining
Biryani Empire	400	3	Quick Bites
Biryani Khazana	600	3	Takeaway, Delivery
Dandes Hyderabad Biryani	550	3	Casual Dining
Maa Reddys Hyderabadi Biryani House	500	3	Quick Bites
New Ambur Hot Dum Biryani	300	3	Quick Bites
Samruddhi Biryani	700	3	Delivery
The Biryani Palace	500	3	Quick Bites
Wat-a-Biryani	500	3	Delivery
Biryani Club	400	2.9	Quick Bites
Biryani Factory	400	2.9	Delivery
Biryani Feast	600	2.9	Delivery
Biryani Miya	600	2.9	Delivery
BiryaniBangalore	300	2.9	Takeaway, Delivery
Hyderabadi Biryani Hub	600	2.9	Casual Dining
Mad Over Biryani	600	2.9	Quick Bites
99 Variety Dose-Biryanis-Starters	300	2.8	Takeaway, Delivery
Ambur Dum Biryani	300	2.8	Quick Bites
Ammas Biryani & Rice	300	2.8	Quick Bites
Aramane Donne Biryani	300	2.8	Quick Bites
Awesome Biryani	500	2.8	Takeaway, Delivery
Biryani Bar	300	2.8	Delivery
Biryani Dawat	400	2.8	Quick Bites
Biryani Rooh-e-Khaas	500	2.8	Delivery
Biryani Royals Garden	500	2.8	Quick Bites
Biryani Treat	400	2.8	Quick Bites
Biryani Trip	400	2.8	Delivery
Dande Hyderabad Biryani	500	2.8	Quick Bites
Epic Biryani	300	2.8	Takeaway, Delivery
Food And Biryani (FAB)	500	2.8	Takeaway, Delivery
Heaven Biryani And Shawarma	350	2.8	Quick Bites
Hyderabadi Biryani House	300	2.8	Quick Bites
Hydrabad Biryani House	400	2.8	Casual Dining
Nawab Di Biryani	400	2.8	Takeaway, Delivery
New Ambur Biryani	300	2.8	Quick Bites
New Taj Biryani Centre	300	2.8	Quick Bites
Nizams Biryani House	700	2.8	Casual Dining
Shaadi Ki Biryani	600	2.8	Casual Dining
Sultans Biryani	700	2.8	Delivery
Wedding Biryani	600	2.8	Quick Bites
Zamorins Mappillah Biryani	400	2.8	Takeaway, Delivery
Biryani Central	550	2.7	Casual Dining
Ammis Biryani	500	2.7	Casual Dining
MMA Kababs Rolls & Biryani Center	400	2.7	Quick Bites
Reddys Hyderabadi Biryani	500	2.7	Takeaway, Delivery
Maa Biryani Hyderabadi	450	2.6	Delivery
Biryani Treats	650	2.5	Delivery
Gundappa Donne Biryani	300	2.5	Quick Bites
Biryani Junction	450	2.3	Quick Bites



-- ==========================================
-- QUERY 6-- Purpose: Top 5 cities with highest avg rating, but only for cities with more than 5 restaurants
-- ==========================================
SELECT c11 as city,
       COUNT(*) as total_restaurants,
       ROUND(AVG(c5), 2) as avg_city_rating,
       ROUND(AVG(c7), 2) as avg_cost
FROM cleaned_dataset
WHERE c5 IS NOT NULL
GROUP BY c11
HAVING COUNT(*) > 5
ORDER BY avg_city_rating DESC
LIMIT 5;

RESULTcity	total_restaurants	avg_city_rating	avg_cost
Brigade Road	451	3.68	840.22
Malleshwaram	399	3.63	568.22
Church Street	76	3.6	750
Lavelle Road	123	3.58	848.37
Indiranagar	443	3.58	658.67

