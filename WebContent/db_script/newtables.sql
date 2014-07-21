create table tbl_application_request_unique_idnumbers(
	id bigint auto_increment,
	applicant_id bigint not null,
	generated_id_number varchar(100) not null,
	primary key(id),
	foreign key(applicant_id) references tbl_applicant(id)
);

create table tbl_attendance_grid(
	id bigint auto_increment,
	teacher_id int not null,
	section_id int not null,
	date_taken datetime not null,
	attendance_session varchar(20) not null,
	student_id bigint not null,
	tardi boolean not null,
	absent boolean not null,
	primary key(id)
);