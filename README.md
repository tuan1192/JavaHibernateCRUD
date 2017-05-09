# JavaHibernateCRUD
JavaHibernateCRUD

Tạo các bản dữ liệu:
Ở đây là tạo bản Employee và bản Project quan hệ nhiều nhiều

```sql
CREATE TABLE `Employee`(
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `telephone` VARCHAR(45) NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 25 DEFAULT CHARSET = utf8 COLLATE utf8_general_ci; 

CREATE TABLE `Project`(
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `project_name` VARCHAR(45) NOT NULL,
  `project_des` VARCHAR(500) NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 25 DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `ProjectMemberShip` (
    `emp_id` INT NOT NULL,
    `pro_id` INT NOT NULL,
    PRIMARY KEY (`emp_id`, `pro_id`),
    CONSTRAINT `Constr_ProjectMembership_Employee_fk`
        FOREIGN KEY `Employee_fk` (`emp_id`) REFERENCES `Employee` (`id`)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `Constr_ProjectMembership_Project_fk`
        FOREIGN KEY `Project_fk` (`pro_id`) REFERENCES `Project` (`id`)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;
```
