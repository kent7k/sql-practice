-- 所属学校データのシード
INSERT INTO schools (name, location) VALUES
('アビドス高等学校', '砂漠の学校'),
('トリニティ総合学園', '聖園'),
('ゲヘナ学園', '悪魔的な都市'),
('百鬼夜行連合学院', '鬼の都市'),
('ミレニアムサイエンススクール', '科学技術の最前線');

-- 役割データのシード
INSERT INTO roles (name) VALUES
('アタッカー'),
('ヒーラー'),
('タンク'),
('サポーター');

-- 武器データのシード
INSERT INTO weapons (name) VALUES
('アサルトライフル'),
('ハンドガン'),
('ショットガン'),
('スナイパーライフル');

-- 配置位置データのシード (ENUM型なのでデータ挿入不要)

-- レアリティデータのシード
INSERT INTO rarities (name) VALUES
('☆1'),
('☆2'),
('☆3'),
('☆4');

-- キャラクターデータのシード
INSERT INTO characters (
    name, school_id, role_id, weapon_id, position_name, rarity_id, age, birthday, voice_actor, description
) VALUES
-- トリニティ総合学園
('アズサ',
    (SELECT id FROM schools WHERE name = 'トリニティ総合学園'),
    (SELECT id FROM roles WHERE name = 'アタッカー'),
    (SELECT id FROM weapons WHERE name = 'ショットガン'),
    '中衛',
    (SELECT id FROM rarities WHERE name = '☆4'),
    17, '2024-02-22', '長縄まりあ', 'トリニティ総合学園所属、強力なスナイパー'),
('ヒビキ',
    (SELECT id FROM schools WHERE name = 'トリニティ総合学園'),
    (SELECT id FROM roles WHERE name = 'ヒーラー'),
    (SELECT id FROM weapons WHERE name = 'スナイパーライフル'),
    '後衛',
    (SELECT id FROM rarities WHERE name = '☆4'),
    18, '2024-07-07', '堀江由衣', 'トリニティ総合学園のサポーター、爆撃が得意'),

-- ゲヘナ学園
('アル',
    (SELECT id FROM schools WHERE name = 'ゲヘナ学園'),
    (SELECT id FROM roles WHERE name = 'アタッカー'),
    (SELECT id FROM weapons WHERE name = 'ハンドガン'),
    '後衛',
    (SELECT id FROM rarities WHERE name = '☆4'),
    16, '2024-01-01', '井口裕香', 'ゲヘナ学園所属、火力に特化したガンナー'),
('ムツキ',
    (SELECT id FROM schools WHERE name = 'ゲヘナ学園'),
    (SELECT id FROM roles WHERE name = 'ヒーラー'),
    (SELECT id FROM weapons WHERE name = 'ハンドガン'),
    '中衛',
    (SELECT id FROM rarities WHERE name = '☆3'),
    16, '2024-04-01', '釘宮理恵', 'ゲヘナ学園のトリッキーなサポーター'),

-- アビドス高等学校
('ホシノ',
    (SELECT id FROM schools WHERE name = 'アビドス高等学校'),
    (SELECT id FROM roles WHERE name = 'タンク'),
    (SELECT id FROM weapons WHERE name = 'ショットガン'),
    '前衛',
    (SELECT id FROM rarities WHERE name = '☆3'),
    17, '2024-11-11', '花守ゆみり', 'アビドス高等学校所属、タンクとして味方を守る'),
('セリカ',
    (SELECT id FROM schools WHERE name = 'アビドス高等学校'),
    (SELECT id FROM roles WHERE name = 'アタッカー'),
    (SELECT id FROM weapons WHERE name = 'アサルトライフル'),
    '中衛',
    (SELECT id FROM rarities WHERE name = '☆2'),
    16, '2024-09-30', '本渡楓', 'アビドス高等学校の火力要員で機動力が高い'),

-- 百鬼夜行連合学院
('イオリ',
    (SELECT id FROM schools WHERE name = '百鬼夜行連合学院'),
    (SELECT id FROM roles WHERE name = 'アタッカー'),
    (SELECT id FROM weapons WHERE name = 'ショットガン'),
    '中衛',
    (SELECT id FROM rarities WHERE name = '☆4'),
    17, '2024-03-10', '佐倉綾音', '百鬼夜行連合学院所属、近距離攻撃を得意とする'),

-- ミレニアムサイエンススクール
('アリス',
    (SELECT id FROM schools WHERE name = 'ミレニアムサイエンススクール'),
    (SELECT id FROM roles WHERE name = 'アタッカー'),
    (SELECT id FROM weapons WHERE name = 'アサルトライフル'),
    '後衛',
    (SELECT id FROM rarities WHERE name = '☆4'),
    15, '2024-05-25', '高野麻里佳', 'ミレニアムサイエンススクール所属、ロボットを駆使した遠距離攻撃');
