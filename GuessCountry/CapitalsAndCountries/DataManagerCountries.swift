//
//  CountriesAndCapitals.swift
//  SimpleGames
//
//  Created by user on 27.04.2023.
//

import Foundation

struct CountryCapital: Identifiable {
  let id = UUID()
  let country: String
  let capital: String
}

class CountriesAndCapitals {
  
  let countryAndCapital: [CountryCapital] =
  
  [
    CountryCapital(country: NSLocalizedString("Australia", comment: ""), capital: NSLocalizedString("Canberra", comment: "")),
    CountryCapital(country: NSLocalizedString("Andorra", comment: ""), capital: NSLocalizedString("Andorra la Vella", comment: "")),
    CountryCapital(country: NSLocalizedString("Austria", comment: ""), capital: NSLocalizedString("Vienna", comment: "")),
    CountryCapital(country: NSLocalizedString("Azerbaijan", comment: ""), capital: NSLocalizedString("Baku", comment: "")),
    CountryCapital(country: NSLocalizedString("Albania", comment: ""), capital: NSLocalizedString("Tirana", comment: "")),
    CountryCapital(country: NSLocalizedString("Algeria", comment: ""), capital: NSLocalizedString("Algiers", comment: "")),
    CountryCapital(country: NSLocalizedString("Angola", comment: ""), capital: NSLocalizedString("Luanda", comment: "")),
    CountryCapital(country: NSLocalizedString("Argentina", comment: ""), capital: NSLocalizedString("Buenos Aires", comment: "")),
    CountryCapital(country: NSLocalizedString("Armenia", comment: ""), capital: NSLocalizedString("Yerevan", comment: "")),
    CountryCapital(country: NSLocalizedString("Afghanistan", comment: ""), capital: NSLocalizedString("Kabul", comment: "")),
    CountryCapital(country: NSLocalizedString("Bahamas", comment: ""), capital: NSLocalizedString("Nassau", comment: "")),
    CountryCapital(country: NSLocalizedString("Bangladesh", comment: ""), capital: NSLocalizedString("Dhaka", comment: "")),
    CountryCapital(country: NSLocalizedString("Barbados", comment: ""), capital: NSLocalizedString("Bridgetown", comment: "")),
    CountryCapital(country: NSLocalizedString("Bahrain", comment: ""), capital: NSLocalizedString("Manama", comment: "")),
    CountryCapital(country: NSLocalizedString("Belize", comment: ""), capital: NSLocalizedString("Belmopan", comment: "")),
    CountryCapital(country: NSLocalizedString("Belarus", comment: ""), capital: NSLocalizedString("Minsk", comment: "")),
    CountryCapital(country: NSLocalizedString("Belgium", comment: ""), capital: NSLocalizedString("Brussels", comment: "")),
    CountryCapital(country: NSLocalizedString("Benin", comment: ""), capital: NSLocalizedString("Porto-Novo", comment: "")),
    CountryCapital(country: NSLocalizedString("Bulgaria", comment: ""), capital: NSLocalizedString("Sofia", comment: "")),
    
    CountryCapital(country: NSLocalizedString("Bolivia", comment: ""), capital: NSLocalizedString("La Paz", comment: "")),
    CountryCapital(country: NSLocalizedString("Bosnia and Herzegovina", comment: ""), capital: NSLocalizedString("Sarajevo", comment: "")),
    CountryCapital(country: NSLocalizedString("Botswana", comment: ""), capital: NSLocalizedString("Gaborone", comment: "")),
    CountryCapital(country: NSLocalizedString("Brazil", comment: ""), capital: NSLocalizedString("Brasília", comment: "")),
    CountryCapital(country: NSLocalizedString("Brunei", comment: ""), capital: NSLocalizedString("Bandar Seri Begawan", comment: "")),
    CountryCapital(country: NSLocalizedString("Burkina Faso", comment: ""), capital: NSLocalizedString("Ouagadougou", comment: "")),
    CountryCapital(country: NSLocalizedString("Burundi", comment: ""), capital: NSLocalizedString("Bujumbura", comment: "")),
    CountryCapital(country: NSLocalizedString("Bhutan", comment: ""), capital: NSLocalizedString("Thimphu", comment: "")),
    CountryCapital(country: NSLocalizedString("Vanuatu", comment: ""), capital: NSLocalizedString("Port Vila", comment: "")),
    CountryCapital(country: NSLocalizedString("United Kingdom", comment: ""), capital: NSLocalizedString("London", comment: "")),
    CountryCapital(country: NSLocalizedString("Hungary", comment: ""), capital: NSLocalizedString("Budapest", comment: "")),
    CountryCapital(country: NSLocalizedString("Venezuela", comment: ""), capital: NSLocalizedString("Caracas", comment: "")),
    CountryCapital(country: NSLocalizedString("East Timor", comment: ""), capital: NSLocalizedString("Dili", comment: "")),
    CountryCapital(country: NSLocalizedString("Vietnam", comment: ""), capital: NSLocalizedString("Hanoi", comment: "")),
    CountryCapital(country: NSLocalizedString("Gabon", comment: ""), capital: NSLocalizedString("Libreville", comment: "")),
    CountryCapital(country: NSLocalizedString("Haiti", comment: ""), capital: NSLocalizedString("Port-au-Prince", comment: "")),
    CountryCapital(country: NSLocalizedString("Guyana", comment: ""), capital: NSLocalizedString("Georgetown", comment: "")),
    CountryCapital(country: NSLocalizedString("Gambia", comment: ""), capital: NSLocalizedString("Banjul", comment: "")),
    CountryCapital(country: NSLocalizedString("Ghana", comment: ""), capital: NSLocalizedString("Accra", comment: "")),
    CountryCapital(country: NSLocalizedString("Guatemala", comment: ""), capital: NSLocalizedString("Guatemala City", comment: "")),
    CountryCapital(country: NSLocalizedString("Guinea", comment: ""), capital: NSLocalizedString("Conakry", comment: "")),
    CountryCapital(country: NSLocalizedString("Guinea-Bissau", comment: ""), capital: NSLocalizedString("Bissau", comment: "")),
    CountryCapital(country: NSLocalizedString("Germany", comment: ""), capital: NSLocalizedString("Berlin", comment: "")),
    CountryCapital(country: NSLocalizedString("Honduras", comment: ""), capital: NSLocalizedString("Tegucigalpa", comment: "")),
    CountryCapital(country: NSLocalizedString("Grenada", comment: ""), capital: NSLocalizedString("St. George's", comment: "")),
    CountryCapital(country: NSLocalizedString("Greece", comment: ""), capital: NSLocalizedString("Athens", comment: "")),
    CountryCapital(country: NSLocalizedString("Georgia", comment: ""), capital: NSLocalizedString("Tbilisi", comment: "")),
    CountryCapital(country: NSLocalizedString("Denmark", comment: ""), capital: NSLocalizedString("Copenhagen", comment: "")),
    CountryCapital(country: NSLocalizedString("Democratic Republic of the Congo", comment: ""), capital: NSLocalizedString("Kinshasa", comment: "")),
    CountryCapital(country: NSLocalizedString("Djibouti", comment: ""), capital: NSLocalizedString("Djibouti", comment: "")),
    CountryCapital(country: NSLocalizedString("Dominica", comment: ""), capital: NSLocalizedString("Roseau", comment: "")),
    CountryCapital(country: NSLocalizedString("Dominican Republic", comment: ""), capital: NSLocalizedString("Santo Domingo", comment: "")),
    CountryCapital(country: NSLocalizedString("Egypt", comment: ""), capital: NSLocalizedString("Cairo", comment: "")),
    CountryCapital(country: NSLocalizedString("Zambia", comment: ""), capital: NSLocalizedString("Lusaka", comment: "")),
    CountryCapital(country: NSLocalizedString("Zimbabwe", comment: ""), capital: NSLocalizedString("Harare", comment: "")),
    CountryCapital(country: NSLocalizedString("Israel", comment: ""), capital: NSLocalizedString("Jerusalem", comment: "")),
    CountryCapital(country: NSLocalizedString("India", comment: ""), capital: NSLocalizedString("New Delhi", comment: "")),
    CountryCapital(country: NSLocalizedString("Indonesia", comment: ""), capital: NSLocalizedString("Jakarta", comment: "")),
    CountryCapital(country: NSLocalizedString("Jordan", comment: ""), capital: NSLocalizedString("Amman", comment: "")),
    CountryCapital(country: NSLocalizedString("Iraq", comment: ""), capital: NSLocalizedString("Baghdad", comment: "")),
    CountryCapital(country: NSLocalizedString("Ireland", comment: ""), capital: NSLocalizedString("Dublin", comment: "")),
    
    
    CountryCapital(country: NSLocalizedString("Iceland", comment: ""), capital: NSLocalizedString("Reykjavik", comment: "")),
    CountryCapital(country: NSLocalizedString("Spain", comment: ""), capital: NSLocalizedString("Madrid", comment: "")),
    CountryCapital(country: NSLocalizedString("Italy", comment: ""), capital: NSLocalizedString("Rome", comment: "")),
    CountryCapital(country: NSLocalizedString("Yemen", comment: ""), capital: NSLocalizedString("Sana'a", comment: "")),
    CountryCapital(country: NSLocalizedString("Cape Verde", comment: ""), capital: NSLocalizedString("Praia", comment: "")),
    CountryCapital(country: NSLocalizedString("Kazakhstan", comment: ""), capital: NSLocalizedString("Nur-Sultan", comment: "")),
    CountryCapital(country: NSLocalizedString("Cambodia", comment: ""), capital: NSLocalizedString("Phnom Penh", comment: "")),
    CountryCapital(country: NSLocalizedString("Cameroon", comment: ""), capital: NSLocalizedString("Yaounde", comment: "")),
    CountryCapital(country: NSLocalizedString("Canada", comment: ""), capital: NSLocalizedString("Ottawa", comment: "")),
    CountryCapital(country: NSLocalizedString("Qatar", comment: ""), capital: NSLocalizedString("Doha", comment: "")),
    CountryCapital(country: NSLocalizedString("Kenya", comment: ""), capital: NSLocalizedString("Nairobi", comment: "")),
    CountryCapital(country: NSLocalizedString("Kyrgyzstan", comment: ""), capital: NSLocalizedString("Bishkek", comment: "")),
    CountryCapital(country: NSLocalizedString("China", comment: ""), capital: NSLocalizedString("Beijing", comment: "")),
    CountryCapital(country: NSLocalizedString("Colombia", comment: ""), capital: NSLocalizedString("Bogotá", comment: "")),
    CountryCapital(country: NSLocalizedString("Comoros", comment: ""), capital: NSLocalizedString("Moroni", comment: "")),
    CountryCapital(country: NSLocalizedString("Costa Rica", comment: ""), capital: NSLocalizedString("San Jose", comment: "")),
    CountryCapital(country: NSLocalizedString("Ivory Coast", comment: ""), capital: NSLocalizedString("Yamoussoukro", comment: "")),
    CountryCapital(country: NSLocalizedString("Cuba", comment: ""), capital: NSLocalizedString("Havana", comment: "")),
    CountryCapital(country: NSLocalizedString("Kuwait", comment: ""), capital: NSLocalizedString("Kuwait City", comment: "")),
    CountryCapital(country: NSLocalizedString("Laos", comment: ""), capital: NSLocalizedString("Vientiane", comment: "")),
    CountryCapital(country: NSLocalizedString("Latvia", comment: ""), capital: NSLocalizedString("Riga", comment: "")),
    CountryCapital(country: NSLocalizedString("Libya", comment: ""), capital: NSLocalizedString("Tripoli", comment: "")),
    CountryCapital(country: NSLocalizedString("Lithuania", comment: ""), capital: NSLocalizedString("Vilnius", comment: "")),
    
    CountryCapital(country: NSLocalizedString("Luxembourg", comment: ""), capital: NSLocalizedString("Luxembourg City", comment: "")),
    CountryCapital(country: NSLocalizedString("Mauritius", comment: ""), capital: NSLocalizedString("Port Louis", comment: "")),
    CountryCapital(country: NSLocalizedString("Mauritania", comment: ""), capital: NSLocalizedString("Nouakchott", comment: "")),
    CountryCapital(country: NSLocalizedString("Madagascar", comment: ""), capital: NSLocalizedString("Antananarivo", comment: "")),
    CountryCapital(country: NSLocalizedString("North Macedonia", comment: ""), capital: NSLocalizedString("Skopje", comment: "")),
    CountryCapital(country: NSLocalizedString("Malaysia", comment: ""), capital: NSLocalizedString("Kuala Lumpur", comment: "")),
    CountryCapital(country: NSLocalizedString("Mali", comment: ""), capital: NSLocalizedString("Bamako", comment: "")),
    CountryCapital(country: NSLocalizedString("Maldives", comment: ""), capital: NSLocalizedString("Male", comment: "")),
    CountryCapital(country: NSLocalizedString("Malta", comment: ""), capital: NSLocalizedString("Valletta", comment: "")),
    CountryCapital(country: NSLocalizedString("Morocco", comment: ""), capital: NSLocalizedString("Rabat", comment: "")),
    CountryCapital(country: NSLocalizedString("Mexico", comment: ""), capital: NSLocalizedString("Mexico City", comment: "")),
    CountryCapital(country: NSLocalizedString("Mozambique", comment: ""), capital: NSLocalizedString("Maputo", comment: "")),
    CountryCapital(country: NSLocalizedString("Moldova", comment: ""), capital: NSLocalizedString("Chisinau", comment: "")),
    CountryCapital(country: NSLocalizedString("Monaco", comment: ""), capital: NSLocalizedString("Monaco", comment: "")),
    CountryCapital(country: NSLocalizedString("Mongolia", comment: ""), capital: NSLocalizedString("Ulaanbaatar", comment: "")),
    CountryCapital(country: NSLocalizedString("Myanmar", comment: ""), capital: NSLocalizedString("Naypyidaw", comment: "")),
    CountryCapital(country: NSLocalizedString("Namibia", comment: ""), capital: NSLocalizedString("Windhoek", comment: "")),
    CountryCapital(country: NSLocalizedString("Niger", comment: ""), capital: NSLocalizedString("Niamey", comment: "")),
    CountryCapital(country: NSLocalizedString("Nigeria", comment: ""), capital: NSLocalizedString("Abuja", comment: "")),
    CountryCapital(country: NSLocalizedString("Netherlands", comment: ""), capital: NSLocalizedString("Amsterdam", comment: "")),
    CountryCapital(country: NSLocalizedString("Nicaragua", comment: ""), capital: NSLocalizedString("Managua", comment: "")),
    CountryCapital(country: NSLocalizedString("New Zealand", comment: ""), capital: NSLocalizedString("Wellington", comment: "")),
    CountryCapital(country: NSLocalizedString("Norway", comment: ""), capital: NSLocalizedString("Oslo", comment: "")),
    
    CountryCapital(country: NSLocalizedString("United Arab Emirates", comment: ""), capital: NSLocalizedString("Abu Dhabi", comment: "")),
    CountryCapital(country: NSLocalizedString("Oman", comment: ""), capital: NSLocalizedString("Muscat", comment: "")),
    CountryCapital(country: NSLocalizedString("Pakistan", comment: ""), capital: NSLocalizedString("Islamabad", comment: "")),
    CountryCapital(country: NSLocalizedString("Palau", comment: ""), capital: NSLocalizedString("Ngerulmud", comment: "")),
    CountryCapital(country: NSLocalizedString("Panama", comment: ""), capital: NSLocalizedString("Panama City", comment: "")),
    CountryCapital(country: NSLocalizedString("Papua New Guinea", comment: ""), capital: NSLocalizedString("Port Moresby", comment: "")),
    CountryCapital(country: NSLocalizedString("Paraguay", comment: ""), capital: NSLocalizedString("Asuncion", comment: "")),
    CountryCapital(country: NSLocalizedString("Peru", comment: ""), capital: NSLocalizedString("Lima", comment: "")),
    CountryCapital(country: NSLocalizedString("Poland", comment: ""), capital: NSLocalizedString("Warsaw", comment: "")),
    CountryCapital(country: NSLocalizedString("Portugal", comment: ""), capital: NSLocalizedString("Lisbon", comment: "")),
    CountryCapital(country: NSLocalizedString("Cyprus", comment: ""), capital: NSLocalizedString("Nicosia", comment: "")),
    CountryCapital(country: NSLocalizedString("Republic of the Congo", comment: ""), capital: NSLocalizedString("Brazzaville", comment: "")),
    CountryCapital(country: NSLocalizedString("South Korea", comment: ""), capital: NSLocalizedString("Seoul", comment: "")),
    CountryCapital(country: NSLocalizedString("Republic of Kosovo", comment: ""), capital: NSLocalizedString("Pristina", comment: "")),
    CountryCapital(country: NSLocalizedString("Russia", comment: ""), capital: NSLocalizedString("Moscow", comment: "")),
    CountryCapital(country: NSLocalizedString("Rwanda", comment: ""), capital: NSLocalizedString("Kigali", comment: "")),
    CountryCapital(country: NSLocalizedString("Romania", comment: ""), capital: NSLocalizedString("Bucharest", comment: "")),
    CountryCapital(country: NSLocalizedString("United States of America", comment: ""), capital: NSLocalizedString("Washington, D.C.", comment: "")),
    CountryCapital(country: NSLocalizedString("El Salvador", comment: ""), capital: NSLocalizedString("San Salvador", comment: "")),
    CountryCapital(country: NSLocalizedString("Samoa", comment: ""), capital: NSLocalizedString("Apia", comment: "")),
    CountryCapital(country: NSLocalizedString("San Marino", comment: ""), capital: NSLocalizedString("San Marino", comment: "")),
    CountryCapital(country: NSLocalizedString("Sao Tome and Principe", comment: ""), capital: NSLocalizedString("São Tomé", comment: "")),
    CountryCapital(country: NSLocalizedString("Saudi Arabia", comment: ""), capital: NSLocalizedString("Riyadh", comment: "")),
    CountryCapital(country: NSLocalizedString("Eswatini", comment: ""), capital: NSLocalizedString("Mbabane", comment: "")),
    CountryCapital(country: NSLocalizedString("North Korea", comment: ""), capital: NSLocalizedString("Pyongyang", comment: "")),
    CountryCapital(country: NSLocalizedString("Seychelles", comment: ""), capital: NSLocalizedString("Victoria", comment: "")),
    
    CountryCapital(country: NSLocalizedString("Senegal", comment: ""), capital: NSLocalizedString("Dakar", comment: "")),
    CountryCapital(country: NSLocalizedString("Saint Vincent and the Grenadines", comment: ""), capital: NSLocalizedString("Kingstown", comment: "")),
    CountryCapital(country: NSLocalizedString("Saint Kitts and Nevis", comment: ""), capital: NSLocalizedString("Basseterre", comment: "")),
    CountryCapital(country: NSLocalizedString("Saint Lucia", comment: ""), capital: NSLocalizedString("Castries", comment: "")),
    CountryCapital(country: NSLocalizedString("Serbia", comment: ""), capital: NSLocalizedString("Belgrade", comment: "")),
    CountryCapital(country: NSLocalizedString("Singapore", comment: ""), capital: NSLocalizedString("Singapore", comment: "")),
    CountryCapital(country: NSLocalizedString("Syria", comment: ""), capital: NSLocalizedString("Damascus", comment: "")),
    CountryCapital(country: NSLocalizedString("Slovakia", comment: ""), capital: NSLocalizedString("Bratislava", comment: "")),
    CountryCapital(country: NSLocalizedString("Slovenia", comment: ""), capital: NSLocalizedString("Ljubljana", comment: "")),
    CountryCapital(country: NSLocalizedString("Solomon Islands", comment: ""), capital: NSLocalizedString("Honiara", comment: "")),
    CountryCapital(country: NSLocalizedString("Somalia", comment: ""), capital: NSLocalizedString("Mogadishu", comment: "")),
    CountryCapital(country: NSLocalizedString("Sudan", comment: ""), capital: NSLocalizedString("Khartoum", comment: "")),
    CountryCapital(country: NSLocalizedString("Suriname", comment: ""), capital: NSLocalizedString("Paramaribo", comment: "")),
    CountryCapital(country: NSLocalizedString("Sierra Leone", comment: ""), capital: NSLocalizedString("Freetown", comment: "")),
    CountryCapital(country: NSLocalizedString("Tajikistan", comment: ""), capital: NSLocalizedString("Dushanbe", comment: "")),
    CountryCapital(country: NSLocalizedString("Thailand", comment: ""), capital: NSLocalizedString("Bangkok", comment: "")),
    CountryCapital(country: NSLocalizedString("Tanzania", comment: ""), capital: NSLocalizedString("Dodoma", comment: "")),
    CountryCapital(country: NSLocalizedString("Togo", comment: ""), capital: NSLocalizedString("Lome", comment: "")),
    CountryCapital(country: NSLocalizedString("Tonga", comment: ""), capital: NSLocalizedString("Nuku'alofa", comment: "")),
    
    CountryCapital(country: NSLocalizedString("Trinidad and Tobago", comment: ""), capital: NSLocalizedString("Port of Spain", comment: "")),
    CountryCapital(country: NSLocalizedString("Tunisia", comment: ""), capital: NSLocalizedString("Tunis", comment: "")),
    CountryCapital(country: NSLocalizedString("Turkmenistan", comment: ""), capital: NSLocalizedString("Ashgabat", comment: "")),
    CountryCapital(country: NSLocalizedString("Turkey", comment: ""), capital: NSLocalizedString("Ankara", comment: "")),
    CountryCapital(country: NSLocalizedString("Uganda", comment: ""), capital: NSLocalizedString("Kampala", comment: "")),
    CountryCapital(country: NSLocalizedString("Uzbekistan", comment: ""), capital: NSLocalizedString("Tashkent", comment: "")),
    CountryCapital(country: NSLocalizedString("Ukraine", comment: ""), capital: NSLocalizedString("Kyiv", comment: "")),
    CountryCapital(country: NSLocalizedString("Uruguay", comment: ""), capital: NSLocalizedString("Montevideo", comment: "")),
    CountryCapital(country: NSLocalizedString("Federated States of Micronesia", comment: ""), capital: NSLocalizedString("Palikir", comment: "")),
    CountryCapital(country: NSLocalizedString("Fiji", comment: ""), capital: NSLocalizedString("Suva", comment: "")),
    CountryCapital(country: NSLocalizedString("Philippines", comment: ""), capital: NSLocalizedString("Manila", comment: "")),
    CountryCapital(country: NSLocalizedString("Finland", comment: ""), capital: NSLocalizedString("Helsinki", comment: "")),
    CountryCapital(country: NSLocalizedString("France", comment: ""), capital: NSLocalizedString("Paris", comment: "")),
    CountryCapital(country: NSLocalizedString("Croatia", comment: ""), capital: NSLocalizedString("Zagreb", comment: "")),
    
    CountryCapital(country: NSLocalizedString("Central African Republic", comment: ""), capital: NSLocalizedString("Bangui", comment: "")),
    CountryCapital(country: NSLocalizedString("Chad", comment: ""), capital: NSLocalizedString("N'Djamena", comment: "")),
    CountryCapital(country: NSLocalizedString("Montenegro", comment: ""), capital: NSLocalizedString("Podgorica", comment: "")),
    CountryCapital(country: NSLocalizedString("Czech Republic", comment: ""), capital: NSLocalizedString("Prague", comment: "")),
    CountryCapital(country: NSLocalizedString("Chile", comment: ""), capital: NSLocalizedString("Santiago", comment: "")),
    CountryCapital(country: NSLocalizedString("Switzerland", comment: ""), capital: NSLocalizedString("Bern", comment: "")),
    CountryCapital(country: NSLocalizedString("Sweden", comment: ""), capital: NSLocalizedString("Stockholm", comment: "")),
    CountryCapital(country: NSLocalizedString("Sri Lanka", comment: ""), capital: NSLocalizedString("Sri Jayawardenapura Kotte", comment: "")),
    CountryCapital(country: NSLocalizedString("Ecuador", comment: ""), capital: NSLocalizedString("Quito", comment: "")),
    CountryCapital(country: NSLocalizedString("Equatorial Guinea", comment: ""), capital: NSLocalizedString("Malabo", comment: "")),
    CountryCapital(country: NSLocalizedString("Eritrea", comment: ""), capital: NSLocalizedString("Asmara", comment: "")),
    CountryCapital(country: NSLocalizedString("Estonia", comment: ""), capital: NSLocalizedString("Tallinn", comment: "")),
    CountryCapital(country: NSLocalizedString("Ethiopia", comment: ""), capital: NSLocalizedString("Addis Ababa", comment: "")),
    CountryCapital(country: NSLocalizedString("South Africa", comment: ""), capital: NSLocalizedString("Pretoria", comment: "")),
    CountryCapital(country: NSLocalizedString("South Sudan", comment: ""), capital: NSLocalizedString("Juba", comment: "")),
    CountryCapital(country: NSLocalizedString("Jamaica", comment: ""), capital: NSLocalizedString("Kingston", comment: "")),
    CountryCapital(country: NSLocalizedString("Japan", comment: ""), capital: NSLocalizedString("Tokyo", comment: "")),
    CountryCapital(country: NSLocalizedString("Palestine", comment: ""), capital: NSLocalizedString("Jerusalem", comment: ""))
  ]
  
  
  var arrayCountryAndCapital = [
    "Australia": "Canberra",
    "Andorra": "Andorra la Vella",
    "Austria": "Vienna",
    "Azerbaijan": "Baku",
    "Albania": "Tirana",
    "Algeria": "Algiers",
    "Angola": "Luanda",
    "Argentina": "Buenos Aires",
    "Armenia": "Yerevan",
    "Afghanistan": "Kabul",
    "Bahamas": "Nassau",
    "Bangladesh": "Dhaka",
    "Barbados": "Bridgetown",
    "Bahrain": "Manama",
    "Belize": "Belmopan",
    "Belarus": "Minsk",
    "Belgium": "Brussels",
    "Benin": "Porto-Novo",
    "Bulgaria": "Sofia",
    
    "Bolivia": "La Paz",
    "Bosnia and Herzegovina": "Sarajevo",
    "Botswana": "Gaborone",
    "Brazil": "Brasília",
    "Brunei": "Bandar Seri Begawan",
    "Burkina Faso": "Ouagadougou",
    "Burundi": "Bujumbura",
    "Bhutan": "Thimphu",
    "Vanuatu": "Port Vila",
    "United Kingdom": "London",
    "Hungary": "Budapest",
    "Venezuela": "Caracas",
    "East Timor": "Dili",
    "Vietnam": "Hanoi",
    "Gabon": "Libreville",
    "Haiti": "Port-au-Prince",
    "Guyana": "Georgetown",
    "Gambia": "Banjul",
    "Ghana": "Accra",
    
    "Guatemala": "Guatemala City",
    "Guinea": "Conakry",
    "Guinea-Bissau": "Bissau",
    "Germany": "Berlin",
    "Honduras": "Tegucigalpa",
    "Grenada": "St. George's",
    "Greece": "Athens",
    "Georgia": "Tbilisi",
    "Denmark": "Copenhagen",
    "Democratic Republic of the Congo": "Kinshasa",
    "Djibouti": "Djibouti",
    "Dominica": "Roseau",
    "Dominican Republic": "Santo Domingo",
    "Egypt": "Cairo",
    "Zambia": "Lusaka",
    "Zimbabwe": "Harare",
    "Israel": "Jerusalem",
    "India": "New Delhi",
    "Indonesia": "Jakarta",
    "Jordan": "Amman",
    "Iraq": "Baghdad",
    "Ireland": "Dublin",
    
    "Iceland": "Reykjavik",
    "Spain": "Madrid",
    "Italy": "Rome",
    "Yemen": "Sana'a",
    "Cape Verde": "Praia",
    "Kazakhstan": "Nur-Sultan",
    "Cambodia": "Phnom Penh",
    "Cameroon": "Yaounde",
    "Canada": "Ottawa",
    "Qatar": "Doha",
    "Kenya": "Nairobi",
    "Kyrgyzstan": "Bishkek",
    "China": "Beijing",
    "Colombia": "Bogotá",
    "Comoros": "Moroni",
    "Costa Rica": "San Jose",
    "Ivory Coast": "Yamoussoukro",
    "Cuba": "Havana",
    "Kuwait": "Kuwait City",
    "Laos": "Vientiane",
    "Latvia": "Riga",
    "Libya": "Tripoli",
    "Lithuania": "Vilnius",
    
    "Luxembourg": "Luxembourg City",
    "Mauritius": "Port Louis",
    "Mauritania": "Nouakchott",
    "Madagascar": "Antananarivo",
    "North Macedonia": "Skopje",
    "Malaysia": "Kuala Lumpur",
    "Mali": "Bamako",
    "Maldives": "Male",
    "Malta": "Valletta",
    "Morocco": "Rabat",
    "Mexico": "Mexico City",
    "Mozambique": "Maputo",
    "Moldova": "Chisinau",
    "Monaco": "Monaco",
    "Mongolia": "Ulaanbaatar",
    "Myanmar": "Naypyidaw",
    "Namibia": "Windhoek",
    "Niger": "Niamey",
    "Nigeria": "Abuja",
    "Netherlands": "Amsterdam",
    "Nicaragua": "Managua",
    "New Zealand": "Wellington",
    "Norway": "Oslo",
    
    "United Arab Emirates": "Abu Dhabi",
    "Oman": "Muscat",
    "Pakistan": "Islamabad",
    "Palau": "Ngerulmud",
    "Panama": "Panama City",
    "Papua New Guinea": "Port Moresby",
    "Paraguay": "Asuncion",
    "Peru": "Lima",
    "Poland": "Warsaw",
    "Portugal": "Lisbon",
    "Cyprus": "Nicosia",
    "Republic of the Congo": "Brazzaville",
    "South Korea": "Seoul",
    "Republic of Kosovo": "Pristina",
    "Russia": "Moscow",
    "Rwanda": "Kigali",
    "Romania": "Bucharest",
    "United States of America": "Washington, D.C.",
    "El Salvador": "San Salvador",
    "Samoa": "Apia",
    "San Marino": "San Marino",
    "Sao Tome and Principe": "São Tomé",
    "Saudi Arabia": "Riyadh",
    "Eswatini": "Mbabane",
    "North Korea": "Pyongyang",
    "Seychelles": "Victoria",
    
    "Senegal": "Dakar",
    "Saint Vincent and the Grenadines": "Kingstown",
    "Saint Kitts and Nevis": "Basseterre",
    "Saint Lucia": "Castries",
    "Serbia": "Belgrade",
    "Singapore": "Singapore",
    "Syria": "Damascus",
    "Slovakia": "Bratislava",
    "Slovenia": "Ljubljana",
    "Solomon Islands": "Honiara",
    "Somalia": "Mogadishu",
    "Sudan": "Khartoum",
    "Suriname": "Paramaribo",
    "Sierra Leone": "Freetown",
    "Tajikistan": "Dushanbe",
    "Thailand": "Bangkok",
    "Tanzania": "Dodoma",
    "Togo": "Lome",
    "Tonga": "Nuku'alofa",
    
    "Trinidad and Tobago": "Port of Spain",
    "Tunisia": "Tunis",
    "Turkmenistan": "Ashgabat",
    "Turkey": "Ankara",
    "Uganda": "Kampala",
    "Uzbekistan": "Tashkent",
    "Ukraine": "Kyiv",
    "Uruguay": "Montevideo",
    "Federated States of Micronesia": "Palikir",
    "Fiji": "Suva",
    "Philippines": "Manila",
    "Finland": "Helsinki",
    "France": "Paris",
    "Croatia": "Zagreb",
    
    "Central African Republic": "Bangui",
    "Chad": "N'Djamena",
    "Montenegro": "Podgorica",
    "Czech Republic": "Prague",
    "Chile": "Santiago",
    "Switzerland": "Bern",
    "Sweden": "Stockholm",
    "Sri Lanka": "Sri Jayawardenapura Kotte",
    "Ecuador": "Quito",
    "Equatorial Guinea": "Malabo",
    "Eritrea": "Asmara",
    "Estonia": "Tallinn",
    "Ethiopia": "Addis Ababa",
    "South Africa": "Pretoria",
    "South Sudan": "Juba",
    "Jamaica": "Kingston",
    "Japan": "Tokyo",
    "Palestine": "Jerusalem"
    
  ]
}
