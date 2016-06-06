-- ���ݿ��ʼ���ű�
create DATABASE seckill;

-- ʹ�����ݿ�
use seckill;

-- ������ɱ����
create table seckill (
	`seckill_id` bigint NOT NULL AUTO_INCREMENT COMMENT '��Ʒ���id',
	`name` varchar(120) NOT NULL COMMENT '��Ʒ����',
	`number` int NOT NULL COMMENT '�������',
	`start_time` timestamp NOT NULL COMMENT '��ɱ����ʱ��',
	`end_time` timestamp NOT NULL COMMENT '��ɱ����ʱ��',
	`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��'
	PRIMARY KEY (seckill_id),
	key idx_start_time(start_time),
	key idx_end_time(end_time),
	key idx_create_time(create_time)
)engine=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='��ɱ����'

-- ��ʼ������
insert into 
	seckill(name, number, start_time, end_time)
values
	('1000Ԫ��ɱiphone6',100, '2016-11-01 00:00:00', '2016-11-02 00:00:00'),
	('200Ԫ��ɱiphone4',100, '2016-11-01 00:00:00', '2016-11-02 00:00:00'),
	('1000Ԫ��ɱiphone5',100, '2016-11-01 00:00:00', '2016-11-02 00:00:00'),
	('2000Ԫ��ɱmac',100, '2016-11-01 00:00:00', '2016-11-02 00:00:00');

-- ��ɱ�ɹ���ϸ��
-- �û���¼��֤�����Ϣ
create table success_killed(
	`seckill_id` bigint NOT NULL COMMENT '��ɱ��Ʒid',
	`user_phone` bigint NOT NULL COMMENT '�û��ֻ���',
	`state` tinyint NOT NULL DEFAULT -1 COMMENT '״̬��ʶ��-1����Ч��0���ɹ���1���Ѹ���',
	'create_time' timestamp NOT NULL COMMENT '����ʱ��'��
	PRIMARY key(seckill_id, user_phone), /*��������*/
	key idx_create_time (create_time)
)engine=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ɱ�ɹ���ϸ��'