-- use governdb;

-- INSERT INTO Users (Name, Email, PasswordHash, Role, DateCreated) VALUES
-- ('john_doe', 'john.doe@example.com', 'hashedpassword1', 'member', NOW()),
-- ('jane_smith', 'jane.smith@example.com', 'hashedpassword2', 'leader', NOW());

-- INSERT INTO CommunityMembers (MemberID, Name, Email, Address, Phone) VALUES
-- (1, 'Alice Johnson', 'alice.johnson@example.com', '123 Elm Street', '123-456-7890'),
-- (2, 'Bob Brown', 'bob.brown@example.com', '456 Oak Avenue', '234-567-8901');

-- INSERT INTO CommunityLeaders (LeaderID, Name, Email, Role, ContactInfo) VALUES
-- (1, 'Sarah Green', 'sarah.green@example.com', 'Community Organizer', '789-012-3456'),
-- (2, 'David White', 'david.white@example.com', 'Local Councillor', '890-123-4567');

-- INSERT INTO LocalFacilities (FacilityID, Name, Type, Location, ContactInfo) VALUES
-- (1, 'Community Center', 'Recreation', '789 Maple Street', '123-456-7890'),
-- (2, 'Public Library', 'Education', '101 Pine Road', '234-567-8901');

-- INSERT INTO EducationalInstitutions (InstitutionID, Name, Type, Location, ContactInfo) VALUES
-- (1, 'Midrand High School', 'High School', '123 School Lane', '345-678-9012'),
-- (2, 'Midrand University', 'University', '456 University Drive', '456-789-0123');



-- ALTER TABLE EngagementRecords MODIFY COLUMN Date DATETIME;
-- SELECT * FROM EngagementRecords;
-- DELETE FROM EngagementRecords WHERE RecordID IN (1, 2);

-- INSERT INTO EngagementRecords (RecordID, MemberID, LeaderID, FacilityID, InstitutionID, Date, EngagementType, Notes) VALUES
-- (3, 1, 1, 1, 1, NOW(), 'Volunteer Work', 'Participated in community cleanup event'),
-- (4, 2, 2, 2, 2, NOW(), 'Meeting', 'Attended local council meeting');


-- INSERT INTO AuthTokens (UserID, Token, ExpiryDate) VALUES
-- (1, 'token1234567890', DATE_ADD(NOW(), INTERVAL 1 DAY)),
-- (2, 'token0987654321', DATE_ADD(NOW(), INTERVAL 1 DAY));





