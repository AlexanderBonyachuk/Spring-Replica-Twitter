DELETE FROM user_role;
DELETE FROM usr;

INSERT INTO usr(id, active, password, username) VALUES
(1, true, '$2a$08$Py5.Ehuoikcm5qDbsnDGSuwNr0G/QrYrjNcp50/v1dsLCzLEJBpVK', 'sanya'),
(2, true, '$2a$08$Py5.Ehuoikcm5qDbsnDGSuwNr0G/QrYrjNcp50/v1dsLCzLEJBpVK', 'mike');

INSERT INTO user_role(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');