--  CREATE DATABASE GovernDB;

-- STEP 2: uSE THE NEWLY CREATED DB --
-- USE governdb;

-- Step 3: Create the Authentication and User Management Tables

-- Table to store user accounts
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,  -- Stores a hashed password
    Role VARCHAR(20) DEFAULT 'Member',  -- Roles like 'Member', 'Admin'
    DateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table to store authentication tokens (for sessions or JWT)
CREATE TABLE AuthTokens (
    TokenID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Token VARCHAR(255),
    ExpiryDate TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Step 4: Create Community Engagement Tables

-- Table for community members
CREATE TABLE CommunityMembers (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,  -- Reference to the Users table
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255),
    Phone VARCHAR(15),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Table for community leaders
CREATE TABLE CommunityLeaders (
    LeaderID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Role VARCHAR(50),
    ContactInfo VARCHAR(255)
);

-- Table for local facilities
CREATE TABLE LocalFacilities (
    FacilityID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Location VARCHAR(255),
    ContactInfo VARCHAR(255)
);

-- Table for educational institutions
CREATE TABLE EducationalInstitutions (
    InstitutionID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Location VARCHAR(255),
    ContactInfo VARCHAR(255)
);

-- Table for engagement records
CREATE TABLE EngagementRecords (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    LeaderID INT,
    FacilityID INT,
    InstitutionID INT,
    Date DATE,
    EngagementType VARCHAR(50),
    Notes TEXT,
    FOREIGN KEY (MemberID) REFERENCES CommunityMembers(MemberID),
    FOREIGN KEY (LeaderID) REFERENCES CommunityLeaders(LeaderID),
    FOREIGN KEY (FacilityID) REFERENCES LocalFacilities(FacilityID),
    FOREIGN KEY (InstitutionID) REFERENCES EducationalInstitutions(InstitutionID)
);