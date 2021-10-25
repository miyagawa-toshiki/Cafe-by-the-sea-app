CREATE TABLE mytable(
   café        VARCHAR(22) NOT NULL PRIMARY KEY
  ,place       VARCHAR(4)
  ,latitude    NUMERIC(10,7)
  ,longitude   NUMERIC(11,7) 
  ,point       point
  ,wifi        integer 
  ,charging    integer 
  ,lunch_price INTEGER 
  ,meal        integer 
  ,sweet       integer  
  ,terrace     integer  
  ,parking     integer  
  ,smoking     integer 
  ,opening     INTEGER 
  ,closed      INTEGER 
  ,web         VARCHAR
);
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('江ノ島パンケーキ','神奈川県',35.3012029,139.4807105,'(1,4)',0,0,1000,0,1,1,0,0,12,17,'https://www.fujimi-chaya1854.com/');
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('サザンビーチカフェ','神奈川県',35.3183133,139.3992454,'(3,4)',1,0,2000,1,1,0,1,1,8,22,'https://www.southernbeachcafe.tpd-jo.co.jp/');
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('Pacific DRIVE-IN','神奈川県',35.3044391,139.5135383,'(4,4)',1,1,2000,1,1,1,1,0,9,20,'http://pacificdrivein.com/');
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('Minamicho Terrace','神奈川県',35.294894,139.557566,'(6,4)',0,0,2000,0,1,1,1,0,12,17,'https://www.minamicho-terrace.com/');
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('the surf ocean terrace','千葉県',35.6254238,140.0525058,'(13,8)',0,0,2000,1,1,1,1,1,11,21,'http://www.the-surf.jp/restaurant/');
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('SEA DAYS','千葉県',34.993625,139.8645626,'(11,3)',1,1,2000,1,0,1,1,0,10,15,'https://seadays.jp/');
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('Dining Bar RAGTIME','千葉県',35.1672102,140.3350949,'(17,4)',1,0,2000,1,0,0,1,0,11,23,'https://ragtime-katsuura.blog.jp/');
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('SEA BiRDS CAFÉ','茨城県',36.590736,140.6628573,'(17,15)',1,1,1000,1,1,0,1,0,7,22,'http://seabirdscafe.com/lunch/');
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('カフェ&ダイニング 海音','茨城県',36.6168336,140.6781424,'(17,20)',0,0,2000,1,0,1,1,0,11,16,'http://unoshima-villa.com/');
INSERT INTO mytable(café,place,latitude,longitude,point,wifi,charging,lunch_price,meal,sweet,terrace,parking,smoking,opening,closed,web) VALUES ('岬','千葉県',35.1467571,139.8332504,'(11,1)',0,0,1000,1,1,1,1,1,10,18,'http://ameblo.jp/m-flower-misaki-m/');

/*select kb_user.pt <-> cafe.point AS distance, cafe.café AS cafe FROM kb_user, cafe WHERE kb_user.name = 'miyagawa' ORDER BY distance ASC;*/
/*SELECT kb_user.pt, gis_distance(c1.location, c2.location) AS distance
FROM kb_user, cafe c1, cafe c2
WHERE kb_user.name = 'miyagawa'
ORDER BY distance ASC;*/
/*aicreation=# select * from kb_user;
 id |   name   |   pt    
----+----------+---------
 1  | miyagawa | (9,9)
 2  | takahasi | (5,8)
 3  | matuda   | (16,18)*/

DROP TABLE IF EXISTS kb_user;
CREATE TABLE kb_user
(
id text,
name text,
pt point,
location point
);
INSERT INTO kb_user (id, name, pt, location) VALUES ('1','miyagawa','(9,10)','(35.6672,139.8108)');
INSERT INTO kb_user (id, name, pt, location) VALUES ('2','takahasi','(5,8)', '(35.4660694,139.6226196)');

/*ここのクエリを通す*/
/*SELECT c2.*,kb_user.*, gis_distance(c1.location, c2.location) AS distance
FROM kb_user, cafe c1, cafe c2
WHERE c1.café = '江ノ島パンケーキ'
ORDER BY distance ASC;*/

