-- 所属学校テーブル
CREATE TABLE schools (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(100) NULL COMMENT '学校の所在地や特徴'
);

-- 役割テーブル
CREATE TABLE roles (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(50) NOT NULL UNIQUE COMMENT 'アタッカー、ヒーラーなど'
);

-- 武器タイプテーブル
CREATE TABLE weapons (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(50) NOT NULL UNIQUE COMMENT '武器の種類'
);

-- 配置位置 (ENUM利用)
CREATE TABLE positions (
    name ENUM('前衛', '中衛', '後衛') PRIMARY KEY COMMENT '配置: 前衛, 中衛, 後衛'
);

-- レアリティテーブル
CREATE TABLE rarities (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(10) NOT NULL UNIQUE COMMENT '☆1、☆2、☆3など'
);

-- キャラクターテーブル
CREATE TABLE characters (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(100) NOT NULL COMMENT 'キャラクター名',
    school_id CHAR(36) NOT NULL,
    role_id CHAR(36) NOT NULL,
    weapon_id CHAR(36) NOT NULL,
    position_name ENUM('前衛', '中衛', '後衛') NOT NULL COMMENT '配置名',
    rarity_id CHAR(36) NOT NULL,
    age INT NULL COMMENT 'キャラクターの年齢',
    birthday DATE NULL COMMENT '誕生日',
    voice_actor VARCHAR(100) NULL COMMENT '声優名',
    description TEXT NULL COMMENT 'キャラクターの説明',
    FOREIGN KEY (school_id) REFERENCES schools(id),
    FOREIGN KEY (role_id) REFERENCES roles(id),
    FOREIGN KEY (weapon_id) REFERENCES weapons(id),
    FOREIGN KEY (position_name) REFERENCES positions(name),
    FOREIGN KEY (rarity_id) REFERENCES rarities(id)
);
