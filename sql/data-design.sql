ALTER DATABASE hmiltenberger CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS heart;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS profile;

CREATE TABLE profile(
	profileId BINARY(16) NOT NULL,
	profileActivationToken CHAR(32),
	profileDateOfBirth DATE NOT NULL,
	profileEmail VARCHAR(128) NOT NULL,
	profileGender VARCHAR(32),
	profileHash CHAR(97) NOT NULL,
	profileUsername VARCHAR(32) NOT NULL,
	UNIQUE(profileEmail),
	UNIQUE(profileUsername),
	PRIMARY KEY(profileId)
);

CREATE TABLE post(
   postCaption VARCHAR(140) NOT NULL ,
   postDate DATETIME(6) NOT NULL,
   postId BINARY(16) NOT NULL,
   postLocation VARCHAR(32),
   postPicture VARCHAR(32) NOT NULL,
   postProfileId BINARY(16) NOT NULL,
	INDEX(postProfileId),
	FOREIGN KEY(postProfileId) REFERENCES profile(profileId),
	PRIMARY KEY(postId)
);

CREATE TABLE heart(
   heartDate DATETIME(6) NOT NULL,
   heartPostId BINARY(16),
   heartProfileId BINARY(16),
   INDEX(heartProfileId),
   INDEX(heartPostId),
   FOREIGN KEY(heartProfileId) REFERENCES profile(profileId),
   FOREIGN KEY(heartPostId) REFERENCES post(postId),
   PRIMARY KEY(heartProfileId, heartPostId)
);

/*don't forget the index for foreign keys/*