INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Green', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');
 
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-01-01T20:50:00Z', TIMESTAMP WITH TIME ZONE '2025-01-01T20:50:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-06-01T20:50:00Z', TIMESTAMP WITH TIME ZONE '2025-06-01T20:50:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 2, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos finalizar', 3, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2024-01-01T21:50:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2024-01-01T21:50:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1, Cap. 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de apoio: link', 'https://www.youtube.com/watch?v=HzExzmnmnyc'); 
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1, Cap. 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, '', 'https://www.youtube.com/watch?v=HzExzmnmnyc');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1, Cap. 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, '', 'https://www.youtube.com/watch?v=HzExzmnmnyc');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1, Cap. 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Fazer o trabalho', 10, 7, 1.0, TIMESTAMP WITH TIME ZONE '2024-02-01T00:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);