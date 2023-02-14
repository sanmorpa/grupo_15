DROP SCHEMA IF EXISTS grupo_15 CASCADE;
CREATE SCHEMA grupo_15 AUTHORIZATION mkfdlyfp;

CREATE TABLE grupo_15.neighbourhood_groups
(
	id INT NOT NULL,
	neighbourhood_group VARCHAR(50) NOT NULL,
	CONSTRAINT neighbourhood_groups_pk PRIMARY KEY(id)
);

CREATE TABLE grupo_15.neighbourhoods
(
	id INT NOT NULL,
	neighbourhood VARCHAR(50) NOT NULL,
	id_neighbourhood_group INT NOT NULL,
	CONSTRAINT neighbourhoods_pk PRIMARY KEY(id),
	CONSTRAINT neighbourhood_groups_fk FOREIGN KEY(id_neighbourhood_group) REFERENCES grupo_15.neighbourhood_groups(id)
);

CREATE TABLE grupo_15.property_types
(
	id INT NOT NULL,
	property_type VARCHAR(50) NOT NULL,
	CONSTRAINT property_types_pk PRIMARY KEY(id)
);

CREATE TABLE grupo_15.room_types
(
	id INT NOT NULL,
	room_type VARCHAR(50) NOT NULL,
	CONSTRAINT room_types_pk PRIMARY KEY(id)
);

CREATE TABLE grupo_15.bed_types
(
	id INT NOT NULL,
	bed_type VARCHAR(50) NOT NULL,
	CONSTRAINT bed_types_pk PRIMARY KEY(id)
);

CREATE TABLE grupo_15.response_times
(
	id INT NOT NULL,
	response_time VARCHAR(50),
	CONSTRAINT response_times_pk PRIMARY KEY(id)
);

CREATE TABLE grupo_15.hosts
(
	id INT NOT NULL,
	since DATE,
	id_response_time INT,
	response_rate INT,
	listings_count INT,
	CONSTRAINT hosts_pk PRIMARY KEY(id),
	CONSTRAINT response_times_fk FOREIGN KEY(id_response_time) REFERENCES grupo_15.response_times(id)
);

CREATE TABLE grupo_15.cancellation_policies
(
	id INT NOT NULL,
	cancellation_policy VARCHAR(50) NOT NULL,
	CONSTRAINT cancellation_policies_pk PRIMARY KEY(id)
);

CREATE TABLE grupo_15.features
(
	id INT NOT NULL,
	feature VARCHAR(50) NOT NULL,
	CONSTRAINT features_pk PRIMARY KEY(id)
);

CREATE TABLE grupo_15.amenities
(
	id INT NOT NULL,
	amenity VARCHAR(50) NOT NULL,
	CONSTRAINT amenities_pk PRIMARY KEY(id)
);

CREATE TABLE grupo_15.reviews
(
	id INT NOT NULL,
	number_reviews INT,
	first_review DATE,
	last_review DATE,
	scores_rating INT,
	scores_accuracy INT,
	scores_cleanliness INT,
	scores_checkin INT,
	scores_communication INT,
	scores_location INT,
	scores_value INT,
	reviews_per_month DECIMAL,
	CONSTRAINT reviews_pk PRIMARY KEY(id)
);

CREATE TABLE grupo_15.listings
(
	id INT NOT NULL,
	id_host INT NOT NULL,
	id_neighbourhood INT NOT NULL,
	zipcode INT,
	latitude DECIMAL,
	longitude DECIMAL,
	id_property_type INT NOT NULL,
	id_room_type INT NOT NULL,
	id_bed_type INT NOT NULL,
	accommodates INT,
	bathrooms DECIMAL,
	bedrooms INT,
	beds INT,
	price INT,
	security_deposit INT,
	cleaning_fee INT,
	extra_people INT,
	minimum_nights INT,
	maximum_nights INT,
	id_cancellation_policy INT NOT NULL,
	id_review INT NOT NULL,
	CONSTRAINT listings_pk PRIMARY KEY(id),
	CONSTRAINT hosts_fk FOREIGN KEY(id_host) REFERENCES grupo_15.hosts(id),
	CONSTRAINT neighborhoods_fk FOREIGN KEY(id_neighbourhood) REFERENCES grupo_15.neighbourhoods(id),
	CONSTRAINT property_types_fk FOREIGN KEY(id_property_type) REFERENCES grupo_15.property_types(id),
	CONSTRAINT room_types_fk FOREIGN KEY(id_room_type) REFERENCES grupo_15.room_types(id),
	CONSTRAINT bed_types_fk FOREIGN KEY(id_bed_type) REFERENCES grupo_15.bed_types(id),
	CONSTRAINT cancellation_policies_fk FOREIGN KEY(id_cancellation_policy) REFERENCES grupo_15.cancellation_policies(id),
	CONSTRAINT reviews_fk FOREIGN KEY(id_review) REFERENCES grupo_15.reviews(id)
);

CREATE TABLE grupo_15.rel_amenities_listings
(
	id INT NOT NULL,
	id_amenity INT,
	id_listing INT NOT NULL,
	CONSTRAINT rel_amenities_listings_pk PRIMARY KEY(id),
	CONSTRAINT amenities_fk FOREIGN KEY(id_amenity) REFERENCES grupo_15.amenities(id),
	CONSTRAINT listings_fk FOREIGN KEY(id_listing) REFERENCES grupo_15.listings(id)
);

CREATE TABLE grupo_15.rel_features_listings
(
	id INT NOT NULL,
	id_feature INT,
	id_listing INT NOT NULL,
	CONSTRAINT rel_features_listings_pk PRIMARY KEY(id),
	CONSTRAINT features_fk FOREIGN KEY(id_feature) REFERENCES grupo_15.features(id),
	CONSTRAINT listings_fk FOREIGN KEY(id_listing) REFERENCES grupo_15.listings(id)
);
