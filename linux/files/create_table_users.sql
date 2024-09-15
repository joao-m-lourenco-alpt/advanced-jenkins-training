CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,  -- Auto-incrementing ID
    username VARCHAR(50) NOT NULL UNIQUE,  -- Unique username
    email VARCHAR(100) NOT NULL UNIQUE,  -- Unique email
    password VARCHAR(255) NOT NULL,  -- Password (hashed)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Timestamp for when the user was created
);