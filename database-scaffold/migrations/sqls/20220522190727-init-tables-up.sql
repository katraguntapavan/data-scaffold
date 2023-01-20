CREATE TABLE aktivu.state_ref (
	state_id VARCHAR(2) PRIMARY KEY,
	state_name VARCHAR(20) NOT NULL
);

CREATE TABLE aktivu.status_ref (
	status_id SERIAL PRIMARY KEY,
	status VARCHAR(20) NOT NULL
);

CREATE TABLE aktivu.organization (
	org_id SERIAL PRIMARY KEY,
	org_name VARCHAR(50) NOT NULL,
	address_1 VARCHAR(80) NOT NULL,
	address_2 VARCHAR(80),
	city VARCHAR(25) NOT NULL,
	state_id VARCHAR(2) NOT NULL,
	zip_code VARCHAR(10) NOT NULL,
	logo_location VARCHAR(1000),
	initial_setup_done BOOLEAN DEFAULT FALSE,
	sso_enabled BOOLEAN DEFAULT FALSE,
	org_sso_endpoint VARCHAR(1000),
	display_name VARCHAR(100) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	UNIQUE (org_name, display_name),
	CONSTRAINT fk_organization_state_ref
		FOREIGN KEY(state_id)
			REFERENCES aktivu.state_ref(state_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.department (
	department_id SERIAL PRIMARY KEY,
	org_id INT NOT NULL,
	department_name VARCHAR(50) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_department_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.facility (
	facility_id SERIAL PRIMARY KEY,
	department_id INT NOT NULL,
	facility_name VARCHAR(50) NOT NULL,
	address VARCHAR(80) NOT NULL,
	city VARCHAR(25) NOT NULL,
	state_id VARCHAR(2) NOT NULL,
	facility_display_name VARCHAR(100) NOT NULL,
	zip_code VARCHAR(10) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	UNIQUE (facility_name, facility_display_name),
	CONSTRAINT fk_facility_department
		FOREIGN KEY(department_id)
			REFERENCES aktivu.department(department_id) ON DELETE CASCADE,
	CONSTRAINT fk_facility_state_ref
		FOREIGN KEY(state_id)
			REFERENCES aktivu.state_ref(state_id) ON DELETE CASCADE
);


CREATE TABLE aktivu.org_category (
	org_category_id SERIAL PRIMARY KEY,
	org_id INT NOT NULL,
	parent_category INT,
	name VARCHAR(80) NOT NULL, 
	description VARCHAR(300) NOT NULL,
	is_active BOOLEAN DEFAULT TRUE,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_org_cat_type_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.asset_group (
	group_id SERIAL PRIMARY KEY,
	group_name VARCHAR(50) NOT NULL,
	org_id INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_asset_group_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.facility_category (
	category_id SERIAL PRIMARY KEY,
	org_category_id INT NOT NULL,
	facility_id INT NOT NULL,
	parent_category INT,
	facility_category_name VARCHAR(500) NOT NULL,
	description VARCHAR(300),
	is_active BOOLEAN DEFAULT TRUE,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_facility_category_org_category
		FOREIGN KEY(org_category_id)
			REFERENCES aktivu.org_category(org_category_id) ON DELETE CASCADE,
	CONSTRAINT fk_facility_category_facility
		FOREIGN KEY(facility_id)
			REFERENCES aktivu.facility(facility_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.pycube_product_type (
	product_type_id SERIAL PRIMARY KEY,
	product_type_name VARCHAR(50) NOT NULL,
	description VARCHAR(300) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL
);

CREATE TABLE aktivu.pycube_product (
	product_id SERIAL PRIMARY KEY,
	product_type_id INT NOT NULL,
	product_name VARCHAR(100) NOT NULL,
	description VARCHAR(300) NOT NULL,
	price INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_pycube_product_pycube_product_type
		FOREIGN KEY(product_type_id)
			REFERENCES aktivu.pycube_product_type(product_type_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.org_pycube_assets (
	asset_id SERIAL PRIMARY KEY,
	org_id INT NOT NULL,
	product_id INT NOT NULL,
	purchase_dt DATE NOT NULL,
	status_id INT NOT NULL,
	quantity INT NOT NULL,
	num_licenses INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_org_pycube_assets_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE,
	CONSTRAINT fk_org_pycube_assets_pycube_product
		FOREIGN KEY(product_id)
			REFERENCES aktivu.pycube_product(product_id) ON DELETE CASCADE,
	CONSTRAINT fk_org_pycube_assets_status_ref
		FOREIGN KEY(status_id)
			REFERENCES aktivu.status_ref(status_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.ui_module (
	ui_module_id SERIAL PRIMARY KEY,
	module_name VARCHAR(500) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL
);

CREATE TABLE aktivu.module_permission (
	permission_id SERIAL PRIMARY KEY,
	ui_module_id INT NOT NULL,
	permission_name VARCHAR(1000) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_module_permission_ui_module
		FOREIGN KEY(ui_module_id)
			REFERENCES aktivu.ui_module(ui_module_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.org_role (
	role_id SERIAL PRIMARY KEY,
	org_id INT NOT NULL,
	role_name VARCHAR(500) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_org_role_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.role_permission (
	permission_id INT,
	org_id INT NOT NULL,
	role_id INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	PRIMARY KEY (permission_id, org_id, role_id),
	CONSTRAINT fk_role_permission_module_permission
		FOREIGN KEY(permission_id)
			REFERENCES aktivu.module_permission(permission_id) ON DELETE CASCADE,
	CONSTRAINT fk_role_permission_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE,
	CONSTRAINT fk_role_permission_org_role
		FOREIGN KEY(role_id)
			REFERENCES aktivu.org_role(role_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.app_setting (
	setting_id SERIAL PRIMARY KEY,
	setting_name VARCHAR(500) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL
);

CREATE TABLE aktivu.org_app_setting (
	setting_id INT NOT NULL,
	org_id INT NOT NULL,
    PRIMARY KEY (setting_id, org_id),
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_org_app_setting_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE,
	CONSTRAINT fk_org_app_setting_app_setting
		FOREIGN KEY(setting_id)
			REFERENCES aktivu.app_setting(setting_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.app_module_ref (
	module_id SERIAL PRIMARY KEY,
	module_name VARCHAR(500) NOT NULL
);


CREATE TABLE aktivu.org_subscription (
	org_id INT NOT NULL,
	module_id INT NOT NULL,
	end_dt DATE NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
    PRIMARY KEY (org_id, module_id),
	CONSTRAINT fk_org_subscription_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE,
	CONSTRAINT fk_org_subscription_app_module_ref
		FOREIGN KEY(module_id)
			REFERENCES aktivu.app_module_ref(module_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.contact (
	contact_id SERIAL PRIMARY KEY,
	org_id INT NOT NULL,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	address_1 VARCHAR(80) NOT NULL,
	city VARCHAR(25) NOT NULL,
	state_id VARCHAR(2) NOT NULL,
	phone_number VARCHAR(15) NULL,
	is_employee BOOLEAN DEFAULT FALSE,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_contact_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE,
	CONSTRAINT fk_contact_state_ref
		FOREIGN KEY(state_id)
			REFERENCES aktivu.state_ref(state_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.vendor (
	vendor_id SERIAL PRIMARY KEY,
	org_id INT NOT NULL, 
	contact_id INT,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_vendor_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE,
	CONSTRAINT fk_vendor_contact
		FOREIGN KEY(contact_id)
			REFERENCES aktivu.contact(contact_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.employee (
	employee_id SERIAL PRIMARY KEY,
	contact_id INT NOT NULL, 
	is_user BOOLEAN DEFAULT FALSE,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_employee_contact
		FOREIGN KEY(contact_id)
			REFERENCES aktivu.contact(contact_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.org_user (
	user_id SERIAL PRIMARY KEY,
	email_address VARCHAR(50) NOT NULL,
	user_secret VARCHAR(500) NOT NULL,
	employee_id INT NOT NULL,
	is_active BOOLEAN DEFAULT TRUE,
	email_sent BOOLEAN DEFAULT FALSE,
	email_sent_ts TIMESTAMP,
	verification_code VARCHAR(6),
	reset_requested BOOLEAN DEFAULT FALSE,
	reset_completed BOOLEAN DEFAULT FALSE,
	api_key VARCHAR(200),
	api_key_dt timestamptz,
	key_slug VARCHAR(6),
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_org_user_employee
		FOREIGN KEY(employee_id)
			REFERENCES aktivu.employee(employee_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.user_organization (
	user_id INT,
	org_id INT,
	modified_at timestamptz DEFAULT now() NOT NULL,
	PRIMARY KEY (user_id, org_id),
	CONSTRAINT fk_user_organization_org_user
		FOREIGN KEY(user_id)
			REFERENCES aktivu.org_user(user_id) ON DELETE CASCADE,
	CONSTRAINT fk_user_organization_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.org_group (
	group_id SERIAL PRIMARY KEY,
	org_id INT NOT NULL,
	group_name VARCHAR(500) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_org_group_organization
		FOREIGN KEY(org_id)
			REFERENCES aktivu.organization(org_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.group_role (
	group_id INT,
	role_id INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	PRIMARY KEY (group_id, role_id),
	CONSTRAINT fk_group_role_org_group
		FOREIGN KEY(group_id)
			REFERENCES aktivu.org_group(group_id),
	CONSTRAINT fk_group_role_org_role
		FOREIGN KEY(role_id)
			REFERENCES aktivu.org_role(role_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.user_audit (
	audit_id  SERIAL PRIMARY KEY,
	user_id INT,
	user_log VARCHAR(4000) NOT NULL,
	time_stamp timestamptz DEFAULT now () NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_user_audit_org_user
		FOREIGN KEY(user_id)
			REFERENCES aktivu.org_user(user_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.user_role (
	user_id INT,
	role_id INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	PRIMARY KEY (user_id, role_id),
	CONSTRAINT fk_user_role_org_user
		FOREIGN KEY(user_id)
			REFERENCES aktivu.org_user(user_id),
	CONSTRAINT fk_user_role_org_role
		FOREIGN KEY(role_id)
			REFERENCES aktivu.org_role(role_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.user_permission (
	user_id INT,
	permission_id INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	PRIMARY KEY (user_id, permission_id),
	CONSTRAINT fk_user_permission_org_user
		FOREIGN KEY(user_id)
			REFERENCES aktivu.org_user(user_id) ON DELETE CASCADE,
	CONSTRAINT fk_user_permission_module_permission
		FOREIGN KEY(permission_id)
			REFERENCES aktivu.module_permission(permission_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.user_group (
	group_id INT,
	user_id INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	PRIMARY KEY (group_id, user_id),
	CONSTRAINT fk_user_group_org_group
		FOREIGN KEY(group_id)
			REFERENCES aktivu.org_group(group_id) ON DELETE CASCADE,
	CONSTRAINT fk_user_group_org_user
		FOREIGN KEY(user_id)
			REFERENCES aktivu.org_user(user_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.user_facility (
	user_id INT,
	facility_id INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	PRIMARY KEY (user_id, facility_id),
	CONSTRAINT fk_user_facility_org_user
		FOREIGN KEY(user_id)
			REFERENCES aktivu.org_user(user_id) ON DELETE CASCADE,
	CONSTRAINT fk_user_facility_facility
		FOREIGN KEY(facility_id)
			REFERENCES aktivu.facility(facility_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.product (
	product_id SERIAL PRIMARY KEY,
	vendor_id INT NOT NULL,
	product_name VARCHAR(50) NOT NULL,
	description VARCHAR(300) NOT NULL,
	parent_product_id INT,
	maintenance_frequency VARCHAR(100),
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_product_vendor
		FOREIGN KEY(vendor_id)
			REFERENCES aktivu.vendor(vendor_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.recall_type (
	recall_type_id SERIAL PRIMARY KEY,
	description VARCHAR(300) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL
);

CREATE TABLE aktivu.recall (
	recall_id SERIAL PRIMARY KEY,
	product_id INT NOT NULL,
	recall_type_id INT NOT NULL,
	recall_reason VARCHAR(1000) NOT NULL,
	recall_dt DATE NOT NULL,
	resolve_dt DATE,
	status_id INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_recall_product
		FOREIGN KEY(product_id)
			REFERENCES aktivu.product(product_id) ON DELETE CASCADE,
	CONSTRAINT fk_recall_recall_type
		FOREIGN KEY(recall_type_id)
			REFERENCES aktivu.recall_type(recall_type_id) ON DELETE CASCADE,
	CONSTRAINT fk_recall_status_ref
		FOREIGN KEY(status_id)
			REFERENCES aktivu.status_ref(status_id)
);

CREATE TABLE aktivu.facility_asset (
	facility_asset_id SERIAL PRIMARY KEY,
	facility_id INT NOT NULL,
	product_id INT NOT NULL,
	category_id INT NOT NULL,
	group_id INT NOT NULL,
	epc_code VARCHAR(100) NOT NULL,
	description VARCHAR(300) NOT NULL,
	purchase_dt DATE NOT NULL,
	inspection_dt DATE NOT NULL,
	pm_dt DATE NOT NULL,
	status_id INT NOT NULL,
	is_active BOOLEAN DEFAULT TRUE,
	serial_number INT NOT NULL,
	purchase_price INT NOT NULL,
	manufacturer VARCHAR(100) NOT NULL,
	last_reported_location VARCHAR(500) NOT NULL,
	location_reported_by VARCHAR (100) NOT NULL,
	modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_facility_asset_facility
		FOREIGN KEY(facility_id)
			REFERENCES aktivu.facility(facility_id),
	CONSTRAINT fk_facility_asset_product
		FOREIGN KEY(product_id)
			REFERENCES aktivu.product(product_id) ON DELETE CASCADE,
	CONSTRAINT fk_facility_asset_facility_category
		FOREIGN KEY(category_id)
			REFERENCES aktivu.facility_category(category_id) ON DELETE CASCADE,
	CONSTRAINT fk_facility_asset_asset_group
		FOREIGN KEY(group_id)
			REFERENCES aktivu.asset_group(group_id) ON DELETE CASCADE,
	CONSTRAINT fk_facility_asset_status_ref
		FOREIGN KEY(status_id)
			REFERENCES aktivu.status_ref(status_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.asset_recall (
	recall_id INT NOT NULL,
	facility_asset_id INT,
    modified_at timestamptz DEFAULT now() NOT NULL,
	PRIMARY KEY (recall_id, facility_asset_id),
	CONSTRAINT fk_asset_recall_facility_asset
		FOREIGN KEY(facility_asset_id)
			REFERENCES aktivu.facility_asset(facility_asset_id) ON DELETE CASCADE,
	CONSTRAINT fk_asset_recall_recall
		FOREIGN KEY(recall_id)
			REFERENCES aktivu.recall(recall_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.asset_part (
	asset_part_id SERIAL PRIMARY KEY,
	facility_asset_id INT NOT NULL,
	part_name VARCHAR(500) NOT NULL,
	part_number INT NOT NULL,
	part_description VARCHAR(300) NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_asset_part_facility_asset
		FOREIGN KEY(facility_asset_id)
			REFERENCES aktivu.facility_asset(facility_asset_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.maintenance_log (
	log_id SERIAL PRIMARY KEY,
	facility_asset_id INT NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	due_by timestamptz NOT NULL,
	description VARCHAR(2000) NOT NULL,
	status_id INT NOT NULL,
    modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_maintenance_log_facility_asset
		FOREIGN KEY(facility_asset_id)
			REFERENCES aktivu.facility_asset(facility_asset_id) ON DELETE CASCADE,
	CONSTRAINT fk_maintenance_log_status_ref
		FOREIGN KEY(status_id)
			REFERENCES aktivu.status_ref(status_id) ON DELETE CASCADE
);


CREATE TABLE aktivu.incident_type_ref (
	incident_type_id SERIAL PRIMARY KEY, 
	description VARCHAR(100) NOT NULL
);

CREATE TABLE aktivu.incident (
	incident_id SERIAL PRIMARY KEY,
	incident_type_id INT NOT NULL,
	incident_name VARCHAR(100) NOT NULL,
	description VARCHAR(500) NOT NULL,
	created_by VARCHAR(50) NOT NULL,
	incident_created_date timestamptz NOT NULL,
	incident_closed_date timestamptz,
	modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_incident_incident_type_ref
		FOREIGN KEY(incident_type_id)
			REFERENCES aktivu.incident_type_ref(incident_type_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.ticket_priority_ref (
	ticket_priority_id SERIAL PRIMARY KEY,
	ticket_priority_level VARCHAR (50) NOT NULL
);

CREATE TABLE aktivu.ticket_category_ref (
	ticket_category_id SERIAL PRIMARY KEY,
	description VARCHAR(50) NOT NULL
);

CREATE TABLE aktivu.ticket (
	ticket_id SERIAL PRIMARY KEY,
	incident_id INT NOT NULL,
	description VARCHAR(4000) NOT NULL,
	created_by VARCHAR(50) NOT NULL,
	user_id INT NOT NULL,
	group_id INT NOT NULL,
	status_id INT NOT NULL,
	ticket_priority_id INT NOT NULL,
	ticket_category_id INT NOT NULL,
	ticket_created_date timestamptz NOT NULL,
	ticket_closed_date timestamptz,
	modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_ticket_incident
		FOREIGN KEY(incident_id)
			REFERENCES aktivu.incident(incident_id) ON DELETE CASCADE,
	CONSTRAINT fk_ticket_org_user
		FOREIGN KEY(user_id)
			REFERENCES aktivu.org_user(user_id) ON DELETE CASCADE,
	CONSTRAINT fk_ticket_org_group
		FOREIGN KEY(group_id)
			REFERENCES aktivu.org_group(group_id) ON DELETE CASCADE,
	CONSTRAINT fk_ticket_status_ref
		FOREIGN KEY(status_id)
			REFERENCES aktivu.status_ref(status_id) ON DELETE CASCADE,
	CONSTRAINT fk_ticket_ticket_priority_ref
		FOREIGN KEY(ticket_priority_id)
			REFERENCES aktivu.ticket_priority_ref(ticket_priority_id) ON DELETE CASCADE,
	CONSTRAINT fk_ticket_ticket_category_ref
		FOREIGN KEY(ticket_category_id)
			REFERENCES aktivu.ticket_category_ref(ticket_category_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.ticket_asset (
	ticket_id INT,
	facility_asset_id INT NOT NULL,
	modified_at timestamptz DEFAULT now(),
	PRIMARY KEY (ticket_id, facility_asset_id),
	CONSTRAINT fk_ticket_asset_ticket
		FOREIGN KEY(ticket_id)
			REFERENCES aktivu.ticket(ticket_id) ON DELETE CASCADE,
	CONSTRAINT fk_ticket_asset_facility_asset
		FOREIGN KEY(facility_asset_id)
			REFERENCES aktivu.facility_asset(facility_asset_id) ON DELETE CASCADE

);

CREATE TABLE aktivu.facility_asset_charter_ref (
	charter_id SERIAL PRIMARY KEY,
	charter_type VARCHAR(20) NOT NULL
);

CREATE TABLE aktivu.facility_asset_charter_log (
	facility_asset_id INT,
	charter_id INT NOT NULL,
	charter_period VARCHAR(100) NOT NULL,
	charter_cost INT NOT NULL,
	charter_start_date timestamptz NOT NULL, 
	charter_end_date timestamptz NOT NULL,
	contact_id INT NOT NULL,
	modified_at timestamptz DEFAULT now(), 
	PRIMARY KEY (facility_asset_id, charter_id),
	CONSTRAINT fk_facility_asset_charter_log_contact
		FOREIGN KEY(contact_id)
			REFERENCES aktivu.contact(contact_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.product_detail (
	product_id INT NOT NULL,
	category_id INT NOT NULL,
	model_number INT NOT NULL,
	upc VARCHAR(100),
	warranty_period VARCHAR(200),
	image_location VARCHAR(1000),
	power_requirements VARCHAR(1000),
	height_in_inches INT,
	weight_in_pounds INT,
	width_in_inches INT,
	length_in_inches INT,
	end_of_life VARCHAR(100),
	additional_specs VARCHAR(4000),
	modified_at timestamptz DEFAULT now() NOT NULL,
	PRIMARY KEY (product_id, category_id),
	CONSTRAINT fk_product_detail_product
		FOREIGN KEY(product_id)
			REFERENCES aktivu.product(product_id) ON DELETE CASCADE,
	CONSTRAINT fk_product_detail_facility_category
		FOREIGN KEY(category_id)
			REFERENCES aktivu.facility_category(category_id) ON DELETE CASCADE
);

CREATE TABLE aktivu.product_attachment (
	attachment_id SERIAL PRIMARY KEY,
	product_id INT NOT NULL,
	attachment_description VARCHAR(2000),
	file_location VARCHAR(300) NOT NULL,
	file_type VARCHAR(8) NOT NULL,
	modified_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT fk_product_attachment_product
		FOREIGN KEY(product_id)
			REFERENCES aktivu.product(product_id) ON DELETE CASCADE
);

INSERT into aktivu.state_ref (state_id, state_name) values
('AK', 'Alaska'),
('AL', 'Alabama'),
('AZ', 'Arizona'),
('AR', 'Arkansas'),
('CA', 'California'),
('CO', 'Colorado'),
('CT', 'Connecticut'),
('DE', 'Delaware'),
('DC', 'District of Columbia'),
('FL', 'Florida'),
('GA', 'Georgia'),
('HI', 'Hawaii'),
('ID', 'Idaho'),
('IL', 'Illinois'),
('IN', 'Indiana'),
('IA', 'Iowa'),
('KS', 'Kansas'),
('KY', 'Kentucky'),
('LA', 'Louisiana'),
('ME', 'Maine'),
('MD', 'Maryland'),
('MA', 'Massachusetts'),
('MI', 'Michigan'),
('MN', 'Minnesota'),
('MS', 'Mississippi'),
('MO', 'Missouri'),
('MT', 'Montana'),
('NE', 'Nebraska'),
('NV', 'Nevada'),
('NH', 'New Hampshire'),
('NJ', 'New Jersey'),
('NM', 'New Mexico'),
('NY', 'New York'),
('NC', 'North Carolina'),
('ND', 'North Dakota'),
('OH', 'Ohio'),
('OK', 'Oklahoma'),
('OR', 'Oregon'),
('PA', 'Pennsylvania'),
('PR', 'Puerto Rico'),
('RI', 'Rhode Island'),
('SC', 'South Carolina'),
('SD', 'South Dakota'),
('TN', 'Tennessee'),
('TX', 'Texas'),
('UT', 'Utah'),
('VT', 'Vermont'),
('VA', 'Virginia'),
('WA', 'Washington'),
('WV', 'West Virginia'),
('WI', 'Wisconsin'),
('WY', 'Wyoming');