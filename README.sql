# Music Streaming Platform - SQL Database & Analytics

This project is a relational database designed for a music streaming service (Spotify style). It demonstrates database schema design, data manipulation, and advanced SQL querying techniques to extract business insights.

## 🛠️ Tech Stack Used
* *SQL* (MySQL / PostgreSQL compatible)
* Relational Database Design (Primary & Foreign Keys)
* Advanced SQL (JOINs, GROUP BY, CTEs, Window Functions)

## 📁 Project Structure
* schema.sql - Contains table definitions with constraints and foreign keys.
* seed_data.sql - Contains mock data for artists, albums, songs, users, and playlists.
* queries.sql - Contains analytical queries ranging from basic filtering to advanced window functions.

## 📊 Key Insights Extracted
1. Tracked top-streamed songs across the platform.
2. Analyzed total play counts per artist using aggregations and GROUP BY.
3. Used Window Functions (ROW_NUMBER()) to find the top song for each artist.
4. Filtered tracks performing above the platform's average play count using Subqueries.
