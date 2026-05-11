
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `session_id` varchar(64) DEFAULT NULL,
  `student_name` varchar(100) NOT NULL,
  `date` date DEFAULT curdate(),
  `subject` varchar(100) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `status` varchar(20) DEFAULT 'present',
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `attendance` (`id`, `session_id`, `student_name`, `date`, `subject`, `section`, `distance`, `status`, `timestamp`) VALUES
(19, '2742a38b5e6c5d4efe3a9a185606bba8', 'Steven Mercado', '2026-04-30', 'ADBMS', '2207', 3.74706, 'present', '2026-04-30 12:03:33'),
(20, '2742a38b5e6c5d4efe3a9a185606bba8', 'Mico Lazo', '2026-04-30', 'ADBMS', '2207', 3.77939, 'present', '2026-04-30 12:03:57'),
(21, '2742a38b5e6c5d4efe3a9a185606bba8', 'Glennford Talban', '2026-04-30', 'ADBMS', '2207', 2.73657, 'present', '2026-04-30 12:06:17'),
(22, 'eb9d5ba3d9d9540db5da71e80d12b83a', 'Shawn Tolentino', '2026-04-30', 'MATH', '2207', 15.9537, 'present', '2026-04-30 12:09:01'),
(23, 'a1c5f56f89c53f0d8ea55d127a33a4ad', 'Karl Petallo', '2026-04-30', 'Information Management', '2205', 10.6361, 'present', '2026-04-30 13:14:23'),
(24, '82fcc1c8e36cf6d3f541c933424d465b', 'John Denver', '2026-04-30', 'COMNET', '2209', 23.331, 'present', '2026-04-30 13:28:03');



CREATE TABLE `sessions` (
  `id` varchar(64) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `professor_name` varchar(255) DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `lng` decimal(11,8) DEFAULT NULL,
  `radius` float DEFAULT 50,
  `status` varchar(20) DEFAULT 'active',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `sessions` (`id`, `subject`, `section`, `professor_name`, `lat`, `lng`, `radius`, `status`, `created_at`) VALUES
('2742a38b5e6c5d4efe3a9a185606bba8', 'ADBMS', '2207', 'Aileen Suarez', 13.97994569, 121.16417945, 50, 'active', '2026-04-30 12:03:06'),
('82fcc1c8e36cf6d3f541c933424d465b', 'COMNET', '2209', 'Jonah Melo', 13.97999493, 121.16418440, 50, 'active', '2026-04-30 13:27:02'),
('a1c5f56f89c53f0d8ea55d127a33a4ad', 'Information Management', '2205', 'Lovely Hernandez', 13.97990245, 121.16421836, 50, 'active', '2026-04-30 13:13:49'),
('eb9d5ba3d9d9540db5da71e80d12b83a', 'MATH', '2207', 'Mikhael Cuenca', 13.97988803, 121.16416189, 50, 'active', '2026-04-30 12:08:22');


ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);
COMMIT;

SELECT 
    student_name, 
    subject, 
    COUNT(id) OVER(PARTITION BY subject, student_name) as session_count,
    DENSE_RANK() OVER(PARTITION BY subject ORDER BY COUNT(id) DESC) as attendance_rank
FROM attendance
GROUP BY student_name, subject;

WITH TotalSubjectSessions AS (
    SELECT subject, COUNT(*) as total FROM sessions GROUP BY subject
),
StudentCounts AS (
    SELECT student_name, subject, COUNT(*) as attended FROM attendance GROUP BY student_name, subject
)
SELECT s.student_name, s.subject
FROM StudentCounts s
JOIN TotalSubjectSessions t ON s.subject = t.subject
WHERE s.attended = t.total;


START TRANSACTION;
    UPDATE sessions SET status = 'completed' WHERE id = 'session_123';
COMMIT;

CREATE INDEX idx_session_timestamp ON attendance(session_id, timestamp);

CREATE INDEX idx_student_lookup ON attendance(student_name, session_id);

CREATE INDEX idx_session_status ON sessions(status);

EXPLAIN SELECT student_name, timestamp, distance 
FROM attendance 
WHERE session_id = 'your_session_hex_id' 
ORDER BY timestamp DESC;
