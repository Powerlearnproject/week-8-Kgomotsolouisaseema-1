-- SELECT * FROM CommunityMembers;
-- SELECT * FROM CommunityLeaders;
-- SELECT * FROM LocalFacilities;
-- SELECT * FROM LocalFacilities;
-- SELECT * FROM EngagementRecords;
-- SELECT * FROM EngagementRecords
-- WHERE MemberID = 1;
-- SELECT * FROM EngagementRecords
-- WHERE LeaderID = 1;

-- Count the number of engagement records by type:
-- SELECT EngagementType, COUNT(*) AS Count
-- FROM EngagementRecords
-- GROUP BY EngagementType;

-- Find the most recent engagement record for each member:
-- SELECT MemberID, MAX(Date) AS MostRecentEngagement
-- FROM EngagementRecords
-- GROUP BY MemberID;

-- Get the total number of records associated with each facility:
-- SELECT FacilityID, COUNT(*) AS TotalRecords
-- FROM EngagementRecords
-- GROUP BY FacilityID;

-- Find all community members who have had more than one type of engagement:
-- SELECT MemberID, COUNT(DISTINCT EngagementType) AS EngagementTypesCount
-- FROM EngagementRecords
-- GROUP BY MemberID
-- HAVING EngagementTypesCount > 1;

-- Retrieve all engagement records for a specific type, e.g., 'Meeting':
-- SELECT * FROM EngagementRecords
-- WHERE EngagementType = 'Meeting';










