-- 所属学校テーブル
CREATE TABLE schools (
    school_id INT AUTO_INCREMENT PRIMARY KEY,
    school_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(100) NULL COMMENT '学校の所在地や特徴'
);

-- 役割テーブル
CREATE TABLE roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'アタッカー、ヒーラーなど'
);

-- 武器タイプテーブル
CREATE TABLE weapons (
    weapon_id INT AUTO_INCREMENT PRIMARY KEY,
    weapon_name VARCHAR(50) NOT NULL UNIQUE COMMENT '武器の種類'
);

-- 配置位置テーブル
CREATE TABLE positions (
    position_id INT AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(50) NOT NULL UNIQUE COMMENT '前衛、中衛、後衛'
);

-- レアリティテーブル
CREATE TABLE rarities (
    rarity_id INT AUTO_INCREMENT PRIMARY KEY,
    rarity_name VARCHAR(10) NOT NULL UNIQUE COMMENT '☆1、☆2、☆3など'
);

-- キャラクターテーブル
CREATE TABLE characters (
    character_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL COMMENT 'キャラクター名',
    school_id INT NOT NULL COMMENT '所属学校ID',
    role_id INT NOT NULL COMMENT '役割ID',
    weapon_id INT NOT NULL COMMENT '武器ID',
    position_id INT NOT NULL COMMENT '配置ID',
    rarity_id INT NOT NULL COMMENT 'レアリティID',
    age INT NULL COMMENT 'キャラクターの年齢',
    birthday DATE NULL COMMENT '誕生日',
    voice_actor VARCHAR(100) NULL COMMENT '声優名',
    description TEXT NULL COMMENT 'キャラクターの説明',
    FOREIGN KEY (school_id) REFERENCES schools(school_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id),
    FOREIGN KEY (weapon_id) REFERENCES weapons(weapon_id),
    FOREIGN KEY (position_id) REFERENCES positions(position_id),
    FOREIGN KEY (rarity_id) REFERENCES rarities(rarity_id)
);
