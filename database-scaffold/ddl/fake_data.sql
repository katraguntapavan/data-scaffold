-- fake data for aktivu.state_ref table

insert into aktivu.state_ref (state_id, state_name) values ('LA', 'Louisiana');
insert into aktivu.state_ref (state_id, state_name) values ('CA', 'California');
insert into aktivu.state_ref (state_id, state_name) values ('MD', 'Maryland');
insert into aktivu.state_ref (state_id, state_name) values ('MN', 'Minnesota');
insert into aktivu.state_ref (state_id, state_name) values ('VA', 'Virginia');
insert into aktivu.state_ref (state_id, state_name) values ('DC', 'Washington');
insert into aktivu.state_ref (state_id, state_name) values ('WI', 'Wisconsin');
insert into aktivu.state_ref (state_id, state_name) values ('FL', 'Florida');
insert into aktivu.state_ref (state_id, state_name) values ('OH', 'Ohio');
insert into aktivu.state_ref (state_id, state_name) values ('TX', 'Texas');
insert into aktivu.state_ref (state_id, state_name) values ('NE', 'Nebraska');
insert into aktivu.state_ref (state_id, state_name) values ('IL', 'Illinois');
insert into aktivu.state_ref (state_id, state_name) values ('CO', 'Colorado');
insert into aktivu.state_ref (state_id, state_name) values ('IA', 'Iowa');
insert into aktivu.state_ref (state_id, state_name) values ('MA', 'Massachusetts');
insert into aktivu.state_ref (state_id, state_name) values ('AK', 'Arkansas');
insert into aktivu.state_ref (state_id, state_name) values ('NM', 'New Mexico');
insert into aktivu.state_ref (state_id, state_name) values ('NC', 'North Carolina');
insert into aktivu.state_ref (state_id, state_name) values ('IN', 'Indiana');
insert into aktivu.state_ref (state_id, state_name) values ('CT', 'Connecticut');
insert into aktivu.state_ref (state_id, state_name) values ('NY', 'New York');
insert into aktivu.state_ref (state_id, state_name) values ('NJ', 'New Jersey');

-- fake data for aktivu.status_ref table

insert into aktivu.status_ref (status_id, status) values (1, 'Active');
insert into aktivu.status_ref (status_id, status) values (2, 'Inactive');
insert into aktivu.status_ref (status_id, status) values (3, 'Pending');
insert into aktivu.status_ref (status_id, status) values (4, 'Unopened');
insert into aktivu.status_ref (status_id, status) values (5, 'In Progress');
insert into aktivu.status_ref (status_id, status) values (6, 'Completed');
insert into aktivu.status_ref (status_id, status) values (7, 'Closed');

-- fake data for aktivu.organization table

insert into aktivu.organization (org_id, org_name, address_1, address_2, city, state_id, zip_code, logo_location, initial_setup_done, sso_enabled, org_sso_endpoint, display_name, modified_at) values (1, 'Turcotte, Quitzon and Heidenreich', '6 Mendota Junction', '90 Carberry Road', 'Washington', 'DC', '20414', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', true, false, 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', 'T, Q & H', '8/31/2021');
insert into aktivu.organization (org_id, org_name, address_1, address_2, city, state_id, zip_code, logo_location, initial_setup_done, sso_enabled, org_sso_endpoint, display_name, modified_at) values (2, 'Kilback-Borer', '039 Dennis Terrace', '6156 Nevada Parkway', 'Madison', 'WI', '53785', 'a odio in hac habitasse platea dictumst maecenas ut massa quis augue', false, false, 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac', 'Kil-Bor', '11/6/2021');
insert into aktivu.organization (org_id, org_name, address_1, address_2, city, state_id, zip_code, logo_location, initial_setup_done, sso_enabled, org_sso_endpoint, display_name, modified_at) values (3, 'Vandervort, Moen and Swift', '677 Beilfuss Avenue', '31944 Bunting Terrace', 'Lake Worth', 'FL', '33467', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', false, true, 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'V, M & S', '10/6/2021');
insert into aktivu.organization (org_id, org_name, address_1, address_2, city, state_id, zip_code, logo_location, initial_setup_done, sso_enabled, org_sso_endpoint, display_name, modified_at) values (4, 'Schulist, Kunde and Schmidt', '0 Wayridge Street', '3400 Prairie Rose Park', 'Dayton', 'OH', '45408', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit', true, false, 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas', 'S, K & S', '10/26/2021');
insert into aktivu.organization (org_id, org_name, address_1, address_2, city, state_id, zip_code, logo_location, initial_setup_done, sso_enabled, org_sso_endpoint, display_name, modified_at) values (5, 'Pagac-Wiza', '95457 Crescent Oaks Pass', '9519 Marquette Plaza', 'Austin', 'TX', '78769', 'pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', true, false, 'nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus', 'Paga & Wiz', '4/1/2022');

-- fake data for aktivu.department

insert into aktivu.department (department_id, org_id, department_name, modified_at) values (1, 2, 'Radiology', '8/18/2021');
insert into aktivu.department (department_id, org_id, department_name, modified_at) values (2, 1, 'Cardiology', '8/15/2021');
insert into aktivu.department (department_id, org_id, department_name, modified_at) values (3, 3, 'ICU', '9/4/2021');
insert into aktivu.department (department_id, org_id, department_name, modified_at) values (4, 5, 'Neurology', '7/10/2021');
insert into aktivu.department (department_id, org_id, department_name, modified_at) values (5, 4, 'Obstetrics', '12/2/2021');

-- fake data for aktivu.facility

insert into aktivu.facility (facility_id, department_id, facility_name, address, city, state_id, facility_display_name, zip_code, modified_at) values (1, 3, 'Shockley Trauma Center', '92 Graceland Hill', 'Lincoln', 'NE', 'Aktivu.Shockley', '68510', '9/20/2021');
insert into aktivu.facility (facility_id, department_id, facility_name, address, city, state_id, facility_display_name, zip_code, modified_at) values (2, 3, 'Hillside Baptiste Medical Center', '805 Morning Way', 'Bloomington', 'IL', 'Aktivu.Hillside', '61709', '5/5/2022');
insert into aktivu.facility (facility_id, department_id, facility_name, address, city, state_id, facility_display_name, zip_code, modified_at) values (3, 2, 'Greenleaf Health Hospital', '15055 Londonderry Trail', 'Colorado Springs', 'CO', 'Aktivu.Greenleaf', '80951', '9/28/2021');
insert into aktivu.facility (facility_id, department_id, facility_name, address, city, state_id, facility_display_name, zip_code, modified_at) values (4, 1, 'Smith & Barrick Health', '0558 Hallows Drive', 'Colorado Springs', 'CO', 'Aktivu.Smith-Barrick', '80951', '9/24/2021');
insert into aktivu.facility (facility_id, department_id, facility_name, address, city, state_id, facility_display_name, zip_code, modified_at) values (5, 5, 'Bayside Fertility Center', '11 Burrows Way', 'Des Moines', 'IA', 'Aktivu.Bayside', '50936', '5/9/2022');

-- fake data for aktivu.org_category

insert into aktivu.org_category (org_category_id, org_id, parent_category, name, description, is_active, modified_at) values (1, 1, null, 'Medical', 'For medical purposes', true, '5/12/2022');
insert into aktivu.org_category (org_category_id, org_id, parent_category, name, description, is_active, modified_at) values (2, 1, null, 'Non-Medical', 'For non-medical purposes', true, '1/24/2022');

-- fake data for aktivu.asset_group

insert into aktivu.asset_group (group_id, group_name, org_id, modified_at) values (1, 'Technical', 1, '9/30/2021');
insert into aktivu.asset_group (group_id, group_name, org_id, modified_at) values (2, 'Administrative', 2, '8/4/2021');
insert into aktivu.asset_group (group_id, group_name, org_id, modified_at) values (3, 'Human Resources ', 3, '12/19/2021');
insert into aktivu.asset_group (group_id, group_name, org_id, modified_at) values (4, 'Interns', 4, '8/6/2021');
insert into aktivu.asset_group (group_id, group_name, org_id, modified_at) values (5, 'Maintenance', 5, '2/16/2022');
insert into aktivu.asset_group (group_id, group_name, org_id, modified_at) values (6, 'Product Management', 5, '2/16/2022');

-- fake data for aktivu.facility_category

insert into aktivu.facility_category (category_id, org_category_id, facility_id, parent_category, facility_category_name, description, is_active, modified_at) values (1, 1, 1, null, 'Wheelchair', 'Wheelchair used to transport patient', true, '12/16/2020');
insert into aktivu.facility_category (category_id, org_category_id, facility_id, parent_category, facility_category_name, description, is_active, modified_at) values (2, 1, 2, null, 'Telemetry Device', 'A portable device that monitors the status of a patient', true, '2/17/2022');
insert into aktivu.facility_category (category_id, org_category_id, facility_id, parent_category, facility_category_name, description, is_active, modified_at) values (3, 1, 3, null, 'Infusion Pump', 'Pump that delivers medicine/fluids to patient', true, '3/24/2022');
insert into aktivu.facility_category (category_id, org_category_id, facility_id, parent_category, facility_category_name, description, is_active, modified_at) values (4, 2, 3, null, 'Conference Room Table', 'Table for conference room', true, '5/31/2021');
insert into aktivu.facility_category (category_id, org_category_id, facility_id, parent_category, facility_category_name, description, is_active, modified_at) values (5, 2, 4, null, 'Conference Room Chair', 'Chair for conference room', false, '4/22/2021');

-- fake data for aktivu.pycube_product_type

insert into aktivu.pycube_product_type (product_type_id, product_type_name, description, modified_at) values (1, 'Scanner Gun', 'Gun that scans tags', '8/9/2021');
insert into aktivu.pycube_product_type (product_type_id, product_type_name, description, modified_at) values (2, 'Infusion Pump', 'Pump for infusion', '2/13/2022');
insert into aktivu.pycube_product_type (product_type_id, product_type_name, description, modified_at) values (3, 'Safety Syringes', 'Syringes for administering mediation', '4/3/2022');
insert into aktivu.pycube_product_type (product_type_id, product_type_name, description, modified_at) values (4, 'Germicidal Disposable Wipes', 'Strong disinfecting medical grade wipes', '1/25/2022');
insert into aktivu.pycube_product_type (product_type_id, product_type_name, description, modified_at) values (5, 'Gowns', 'Durable hospital gowns for patient care', '12/4/2021');

-- fake data for aktivu.pycube_product

insert into aktivu.pycube_product (product_id, product_type_id, product_name, description, price, modified_at) values (1, 1, 'Scanner Gun 1', 'A type of scanner gun', 250, '4/24/2022');
insert into aktivu.pycube_product (product_id, product_type_id, product_name, description, price, modified_at) values (2, 1, 'Scanner Gun 2', 'A type of scanner gun', 275, '8/31/2021');
insert into aktivu.pycube_product (product_id, product_type_id, product_name, description, price, modified_at) values (3, 3, 'Safety Syringe 1', 'A long type of safety syringe (box of 50)', 30, '2/5/2022');
insert into aktivu.pycube_product (product_id, product_type_id, product_name, description, price, modified_at) values (4, 3, 'Safety Syringe 2', 'A short type of safety syringe (box of 50)', 25, '7/9/2021');
insert into aktivu.pycube_product (product_id, product_type_id, product_name, description, price, modified_at) values (5, 4, 'Germicidal Disposable Wipes 1', 'A type of medical grade wipes (box of 500)', 45, '10/31/2021');

-- fake data for aktivu.org_pycube_assets 

insert into aktivu.org_pycube_assets (asset_id, org_id, product_id, purchase_dt, status_id, quantity, num_licenses, modified_at) values (1, 1, 1, '9/21/2020', 1, '1000', 500, '10/24/2020');
insert into aktivu.org_pycube_assets (asset_id, org_id, product_id, purchase_dt, status_id, quantity, num_licenses, modified_at) values (2, 1, 4, '6/24/2021', 1, '500', 0, '7/28/2021');
insert into aktivu.org_pycube_assets (asset_id, org_id, product_id, purchase_dt, status_id, quantity, num_licenses, modified_at) values (3, 2, 1, '2/2/2022', 3, '250', 100, '2/11/2022');
insert into aktivu.org_pycube_assets (asset_id, org_id, product_id, purchase_dt, status_id, quantity, num_licenses, modified_at) values (4, 2, 5, '7/15/2020', 2, '500', 0, '7/30/2020');
insert into aktivu.org_pycube_assets (asset_id, org_id, product_id, purchase_dt, status_id, quantity, num_licenses, modified_at) values (5, 4, 3, '2/14/22022', 2, '1000', 0, '3/29/2022');

-- fake data for aktivu.ui_module

insert into aktivu.ui_module (ui_module_id, module_name, modified_at) values (1, 'Organization', '5/30/2022');
insert into aktivu.ui_module (ui_module_id, module_name, modified_at) values (2, 'Incidents', '5/19/2022');
insert into aktivu.ui_module (ui_module_id, module_name, modified_at) values (3, 'Tickets', '1/21/2022');
insert into aktivu.ui_module (ui_module_id, module_name, modified_at) values (4, 'Products', '6/3/2022');
insert into aktivu.ui_module (ui_module_id, module_name, modified_at) values (5, 'Assets', '11/3/2021');
insert into aktivu.ui_module (ui_module_id, module_name, modified_at) values (6, 'Facility', '11/21/2021');
insert into aktivu.ui_module (ui_module_id, module_name, modified_at) values (7, 'Department', '9/10/2021');
insert into aktivu.ui_module (ui_module_id, module_name, modified_at) values (8, 'Roles', '1/15/2021');

-- fake data for aktivu.module_permission 

insert into aktivu.module_permission (permission_id, ui_module_id, permission_name, modified_at) values (1, 1, 'CREATE', '11/29/2021');
insert into aktivu.module_permission (permission_id, ui_module_id, permission_name, modified_at) values (2, 3, 'READ', '5/27/2022');
insert into aktivu.module_permission (permission_id, ui_module_id, permission_name, modified_at) values (3, 3, 'DELETE', '3/27/2022');
insert into aktivu.module_permission (permission_id, ui_module_id, permission_name, modified_at) values (4, 5, 'CREATE', '11/1/2021');
insert into aktivu.module_permission (permission_id, ui_module_id, permission_name, modified_at) values (5, 7, 'UPDATE', '11/22/2021');

-- fake data for aktivu.org_role

insert into aktivu.org_role (role_id, org_id, role_name, modified_at) values (1, 1, 'Admin', '6/1/2022');
insert into aktivu.org_role (role_id, org_id, role_name, modified_at) values (2, 1, 'Technician', '8/19/2021');
insert into aktivu.org_role (role_id, org_id, role_name, modified_at) values (3, 2, 'Department Chief', '5/12/2022');
insert into aktivu.org_role (role_id, org_id, role_name, modified_at) values (4, 4, 'Product Manager', '5/31/2022');
insert into aktivu.org_role (role_id, org_id, role_name, modified_at) values (5, 4, 'Marketing Intern', '11/20/2021');

-- fake data for role_permission

insert into aktivu.role_permission (permission_id, org_id, role_id, modified_at) values (1, 1, 1, '10/6/2021');
insert into aktivu.role_permission (permission_id, org_id, role_id, modified_at) values (2, 1, 2, '1/2/2022');
insert into aktivu.role_permission (permission_id, org_id, role_id, modified_at) values (2, 3, 1, '2/24/2022');
insert into aktivu.role_permission (permission_id, org_id, role_id, modified_at) values (3, 4, 5, '5/3/2022');
insert into aktivu.role_permission (permission_id, org_id, role_id, modified_at) values (4, 5, 4, '6/5/2022');

-- fake data for aktivu.app_setting

insert into aktivu.app_setting (setting_id, setting_name, modified_at) values (1, 'Dark Mode', '2/14/2022');
insert into aktivu.app_setting (setting_id, setting_name, modified_at) values (2, 'Light Mode', '1/6/2022');
insert into aktivu.app_setting (setting_id, setting_name, modified_at) values (3, 'Tab Color - Red', '10/27/2021');
insert into aktivu.app_setting (setting_id, setting_name, modified_at) values (4, 'Tab Color - Blue', '3/14/2022');
insert into aktivu.app_setting (setting_id, setting_name, modified_at) values (5, 'Arrow Color - White', '4/3/2022');
insert into aktivu.app_setting (setting_id, setting_name, modified_at) values (6, 'Arrow Color - Black', '4/3/2022');
insert into aktivu.app_setting (setting_id, setting_name, modified_at) values (7, 'Scroll Speed - Slow', '5/21/2021');
insert into aktivu.app_setting (setting_id, setting_name, modified_at) values (8, 'Scroll Speed - Moderate', '5/21/2021');
insert into aktivu.app_setting (setting_id, setting_name, modified_at) values (9, 'Scroll Speed - Fast', '5/21/2021');

-- fake data for aktivu.org_app_setting

insert into aktivu.org_app_setting (setting_id, org_id, modified_at) values (2, 1, '9/18/2021');
insert into aktivu.org_app_setting (setting_id, org_id, modified_at) values (1, 2, '2/23/2022');
insert into aktivu.org_app_setting (setting_id, org_id, modified_at) values (5, 4, '12/12/2021');
insert into aktivu.org_app_setting (setting_id, org_id, modified_at) values (7, 4, '3/22/2022');
insert into aktivu.org_app_setting (setting_id, org_id, modified_at) values (8, 5, '8/29/2021');

-- fake data for aktivu.app_module_ref

insert into aktivu.app_module_ref (module_id, module_name) values (1, 'Tracer Mod');
insert into aktivu.app_module_ref (module_id, module_name) values (2, 'Product Mod');
insert into aktivu.app_module_ref (module_id, module_name) values (4, 'Ticket Mod');
insert into aktivu.app_module_ref (module_id, module_name) values (5, 'Incident Mod');

-- fake data for aktivu.org_subscription

insert into aktivu.org_subscription (org_id, module_id, end_dt, modified_at) values (2, 1, '6/2/2022', '3/31/2022');
insert into aktivu.org_subscription (org_id, module_id, end_dt, modified_at) values (3, 2, '5/14/2022', '9/7/2021');
insert into aktivu.org_subscription (org_id, module_id, end_dt, modified_at) values (5, 5, '1/8/2022', '4/29/2021');

-- fake data for aktivu.contact

insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (1, 2, 'Teri', 'Brakespear', '0 Longview Plaza', 'Chicago', 'IL', '312-237-2346', false, '5/7/2022');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (2, 3, 'Cicely', 'Lalevee', '8 Goodland Center', 'Waltham', 'MA', '617-254-0006', false, '5/3/2022');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (3, 1, 'Kip', 'Warfield', '0 Warrior Trail', 'Fairbanks', 'AK', '907-141-0590', false, '3/25/2022');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (4, 5, 'Dasya', 'Naish', '52 Bay Court', 'Dallas', 'TX', '214-724-1605', true, '2/24/2022');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (5, 5, 'Milly', 'Edwicker', '0441 Crescent Oaks Plaza', 'Albuquerque', 'NM', '505-207-0387', true, '7/26/2021');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (6, 1, 'Siouxie', 'Grey', '553 Saint Paul Crossing', 'Albuquerque', 'NM', '505-332-1727', false, '7/31/2021');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (7, 3, 'Kaila', 'Leatherland', '7176 Valley Edge Trail', 'Charlotte', 'NC', '704-741-8641', true, '11/27/2021');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (8, 4, 'Lenora', 'Ilchenko', '96 Dottie Alley', 'Naples', 'FL', '239-944-6994', true, '9/15/2021');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (9, 3, 'Becky', 'Matson', '612 Golf Pass', 'Washington', 'DC', '202-524-6602', false, '3/24/2022');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (10, 3, 'Mirabel', 'Kippin', '705 Derek Court', 'Indianapolis', 'IN', '317-556-5970', false, '6/2/2022');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (11, 2, 'Darcey', 'Anchor', '90 Dawn Street', 'Houston', 'TX', '713-173-1423', true, '7/8/2021');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (12, 1, 'Osmond', 'Wilderspoon', '43 Kenwood Alley', 'New Haven', 'CT', '203-281-0930', false, '2/18/2022');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (13, 2, 'Kelwin', 'Markham', '3366 Upham Road', 'Staten Island', 'NY', '718-317-7355', true, '6/13/2021');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (14, 4, 'Cassaundra', 'Wherrit', '350 Pawling Crossing', 'Lubbock', 'TX', '806-944-5982', true, '12/17/2021');
insert into aktivu.contact (contact_id, org_id, first_name, last_name, address_1, city, state_id, phone_number, is_employee, modified_at) values (15, 5, 'Joy', 'Tracey', '71900 Autumn Leaf Crossing', 'Pasadena', 'CA', '626-408-6530', true, '9/28/2021');

-- fake data for aktivu.vendor

insert into aktivu.vendor (vendor_id, org_id, contact_id, modified_at) values (1, 2, 1, '1/16/2022');
insert into aktivu.vendor (vendor_id, org_id, contact_id, modified_at) values (2, 5, 5, '8/1/2021');
insert into aktivu.vendor (vendor_id, org_id, contact_id, modified_at) values (3, 5, 4, '5/15/2022');

-- fake data for aktivu.employee

insert into aktivu.employee (employee_id, contact_id, is_user) values (1, 4, true);
insert into aktivu.employee (employee_id, contact_id, is_user) values (2, 5, true);
insert into aktivu.employee (employee_id, contact_id, is_user) values (3, 2, false);
insert into aktivu.employee (employee_id, contact_id, is_user) values (4, 7, true);
insert into aktivu.employee (employee_id, contact_id, is_user) values (5, 8, true);

-- fake data for aktivu.org_user

insert into aktivu.org_user (user_id, email_address, user_secret, employee_id, is_active, email_sent, email_sent_ts, verification_code, reset_requested, reset_completed, api_key, api_key_dt, key_slug, modified_at) values (1, 'das.nais10@webmd.com', 'mxf1TGjeH9r', 1, false, false, null, 012345, true, true, '12345678', '11/22/2021', 'abcdef', '11/23/2021');
insert into aktivu.org_user (user_id, email_address, user_secret, employee_id, is_active, email_sent, email_sent_ts, verification_code, reset_requested, reset_completed, api_key, api_key_dt, key_slug, modified_at) values (2, 'millyedwicker270@about.com', 'cKOLTQ5O0', 2, true, true, '1/20/2022', 678910, true, true, '910111213', '8/28/2021', 'ghijkl', '9/1/2021');
insert into aktivu.org_user (user_id, email_address, user_secret, employee_id, is_active, email_sent, email_sent_ts, verification_code, reset_requested, reset_completed, api_key, api_key_dt, key_slug, modified_at) values (3, 'k.leatherland24@joomla.org', 'r9bvhf74', 4, false, false, null, 111213, false, false, '14151617', '4/17/2022', 'mnopqr', '5/30/2022');
insert into aktivu.org_user (user_id, email_address, user_secret, employee_id, is_active, email_sent, email_sent_ts, verification_code, reset_requested, reset_completed, api_key, api_key_dt, key_slug, modified_at) values (4, 'ilchenknora475@printfriendly.com', '9qGoPbOm', 5, false, false, null, 141516, false, false, '18192021', '9/1/2021', 'stuvwx', '9/9/2021');

-- fake data for aktivu.user_organization

insert into aktivu.user_organization (user_id, org_id, modified_at) values (1, 2, '7/4/2021');
insert into aktivu.user_organization (user_id, org_id, modified_at) values (1, 3, '10/30/2021');
insert into aktivu.user_organization (user_id, org_id, modified_at) values (4, 5, '11/17/2021');

-- fake data for aktivu.org_group

insert into aktivu.org_group (group_id, org_id, group_name, modified_at) values (1, 1, 'Admin', '3/27/2022');
insert into aktivu.org_group (group_id, org_id, group_name, modified_at) values (2, 2, 'Technical', '6/24/2021');
insert into aktivu.org_group (group_id, org_id, group_name, modified_at) values (3, 2, 'Admission', '7/16/2021');
insert into aktivu.org_group (group_id, org_id, group_name, modified_at) values (4, 3, 'Accounting', '1/24/2022');
insert into aktivu.org_group (group_id, org_id, group_name, modified_at) values (5, 4, 'Public Relations', '4/19/2022');
insert into aktivu.org_group (group_id, org_id, group_name, modified_at) values (6, 4, 'Doctor', '4/19/2021');
insert into aktivu.org_group (group_id, org_id, group_name, modified_at) values (7, 1, 'Nurse', '4/19/2021');

-- fake data for aktivu.group_role

insert into aktivu.group_role (group_id, role_id, modified_at) values (1, 1, '4/23/2022');
insert into aktivu.group_role (group_id, role_id, modified_at) values (4, 2, '3/10/2022');
insert into aktivu.group_role (group_id, role_id, modified_at) values (1, 3, '10/24/2021');
insert into aktivu.group_role (group_id, role_id, modified_at) values (5, 3, '10/21/2021');
insert into aktivu.group_role (group_id, role_id, modified_at) values (3, 4, '2/27/2022');

-- fake data for aktivu.user_audit

insert into aktivu.user_audit (audit_id, user_id, user_log, time_stamp, modified_at) values (1, 1, 'Logged into system to check status updates', '11/22/2021', '10/16/2020');
insert into aktivu.user_audit (audit_id, user_id, user_log, time_stamp, modified_at) values (2, 2, 'Logged into system to change personal information i.e birthdate and home address', '10/7/2020', '8/1/2021');
insert into aktivu.user_audit (audit_id, user_id, user_log, time_stamp, modified_at) values (3, 2, 'Logged into system to view latest correspondences', '9/11/2021', '4/27/2021');
insert into aktivu.user_audit (audit_id, user_id, user_log, time_stamp, modified_at) values (4, 3, 'Logged into system to input new information', '3/11/2021', '2/5/2022');
insert into aktivu.user_audit (audit_id, user_id, user_log, time_stamp, modified_at) values (5, 4, 'Logged into system to send a new correspondence', '8/9/2020', '12/6/2021');

-- fake data for aktivu.user_role 

insert into aktivu.user_role (user_id, role_id, modified_at) values (1, 3, '10/4/2021');
insert into aktivu.user_role (user_id, role_id, modified_at) values (2, 4, '9/24/2020');
insert into aktivu.user_role (user_id, role_id, modified_at) values (3, 1, '1/8/2022');
insert into aktivu.user_role (user_id, role_id, modified_at) values (4, 5, '6/12/2021');

-- fake data for aktivu.user_permission

insert into aktivu.user_permission (user_id, permission_id, modified_at) values (1, 1, '2/14/2022');
insert into aktivu.user_permission (user_id, permission_id, modified_at) values (1, 3, '10/18/2021');
insert into aktivu.user_permission (user_id, permission_id, modified_at) values (2, 2, '5/24/2022');
insert into aktivu.user_permission (user_id, permission_id, modified_at) values (3, 5, '12/3/2021');

-- fake data for aktivu.user_group

insert into aktivu.user_group (group_id, user_id, modified_at) values (5, 1, '1/23/2022');
insert into aktivu.user_group (group_id, user_id, modified_at) values (5, 2, '7/27/2021');
insert into aktivu.user_group (group_id, user_id, modified_at) values (1, 3, '4/11/2022');
insert into aktivu.user_group (group_id, user_id, modified_at) values (2, 4, '12/15/2021');

-- fake data for aktivu.user_facility

insert into aktivu.user_facility (user_id, facility_id, modified_at) values (1, 1, '4/9/2022');
insert into aktivu.user_facility (user_id, facility_id, modified_at) values (2, 1, '9/5/2020');
insert into aktivu.user_facility (user_id, facility_id, modified_at) values (3, 2, '10/31/2021');
insert into aktivu.user_facility (user_id, facility_id, modified_at) values (4, 3, '1/22/2022');

-- fake data for aktivu.product

insert into aktivu.product (product_id, vendor_id, product_name, description, parent_product_id, maintenance_frequency, modified_at) values (1, 1, 'Heart Rate Cuff', 'Wrist cuff used to measure heart rate', null, 'Quarterly', '1/17/2021');
insert into aktivu.product (product_id, vendor_id, product_name, description, parent_product_id, maintenance_frequency, modified_at) values (2, 1, 'Stethescope', 'Instrument used to listen to heartbeat', null, 'Monthly', '1/20/2021');
insert into aktivu.product (product_id, vendor_id, product_name, description, parent_product_id, maintenance_frequency, modified_at) values (3, 2, 'Hand Sanitizer', 'Sanitizing gel for hands', null, 'Replace when empty', '1/25/2021');
insert into aktivu.product (product_id, vendor_id, product_name, description, parent_product_id, maintenance_frequency, modified_at) values (4, 3, 'Blade', 'Box of 10 sterile blades', null, 'Replace when  box is empty', '1/25/2021');
insert into aktivu.product (product_id, vendor_id, product_name, description, parent_product_id, maintenance_frequency, modified_at) values (5, 3, 'Gauze pad', 'Box of 50 individually wrapped gauze', 3, 'Replace when box is empty', '2/12/2021');
insert into aktivu.product (product_id, vendor_id, product_name, description, parent_product_id, maintenance_frequency, modified_at) values (6, 3, 'Insulin Pump', 'Pump that delivers insulin to patient', null, 'Monthly', '2/14/2021');

-- fake data for aktivu.recall_type 

insert into aktivu.recall_type (recall_type_id, description, modified_at) values (1, 'Power not working', '2/13/2021');
insert into aktivu.recall_type (recall_type_id, description, modified_at) values (2, 'Broken part', '1/13/2022');
insert into aktivu.recall_type (recall_type_id, description, modified_at) values (3, 'Missing part', '11/4/2021');
insert into aktivu.recall_type (recall_type_id, description, modified_at) values (4, 'Defective', '4/6/2022');
insert into aktivu.recall_type (recall_type_id, description, modified_at) values (5, 'Violates FDA regulations', '8/20/2020');

-- fake data for aktivu.recall

insert into aktivu.recall (recall_id, product_id, recall_type_id, recall_reason, recall_dt, resolve_dt, status_id, modified_at) values (1, 1, 1, 'Power does not turn on', '8/4/2021', null, 4,'9/19/2021');
insert into aktivu.recall (recall_id, product_id, recall_type_id, recall_reason, recall_dt, resolve_dt, status_id, modified_at) values (2, 1, 4, 'Does not work properly', '6/16/2021', null, 5, '12/13/2021');
insert into aktivu.recall (recall_id, product_id, recall_type_id, recall_reason, recall_dt, resolve_dt, status_id, modified_at) values (3, 2, 4, 'Does not work properly', '7/19/2020', null, 5, '7/11/2021');
insert into aktivu.recall (recall_id, product_id, recall_type_id, recall_reason, recall_dt, resolve_dt, status_id, modified_at) values (4, 3, 2, 'Blade is broken', '7/9/2021', '8/22/2021', 6, '12/4/2021');
insert into aktivu.recall (recall_id, product_id, recall_type_id, recall_reason, recall_dt, resolve_dt, status_id, modified_at) values (5, 5, 5, 'Does not pass FDA regulations', '6/30/2021', '8/12/2021', 6, '2/14/2021');

-- fake data for aktivu.facility_asset

insert into aktivu.facility_asset (facility_asset_id, facility_id, product_id, category_id, group_id, epc_code, description, purchase_dt, inspection_dt, pm_dt, status_id, is_active, serial_number, purchase_price, manufacturer, last_reported_location, location_reported_by, modified_at) values (1, 1, 2, 1, 2, '139180313190139719', '1 single stethescope', '3/15/2021', '3/21/2021', '11/17/2020', 1, 'True', 417-829-735-807-270, 350, 'Parisian Group', 'Nurses Station', 'Andrew Solvang', '1/19/2022');
insert into aktivu.facility_asset (facility_asset_id, facility_id, product_id, category_id, group_id, epc_code, description, purchase_dt, inspection_dt, pm_dt, status_id, is_active, serial_number, purchase_price, manufacturer, last_reported_location, location_reported_by, modified_at) values (2, 2, 2, 1, 2, '217033504747206396', '1 single stethescope', '9/7/2021', '9/12/2021', '9/30/2021', 2, 'True', 524-801-936-420-173, 350, 'Parisian Group', 'Nurses Station', 'Annalee Sugard', '1/1/2022');
insert into aktivu.facility_asset (facility_asset_id, facility_id, product_id, category_id, group_id, epc_code, description, purchase_dt, inspection_dt, pm_dt, status_id, is_active, serial_number, purchase_price, manufacturer, last_reported_location, location_reported_by, modified_at) values (3, 1, 3, 2, 4, '269596526107822634', '1 single 8 oz bottle of hand sanitizer', '2/22/2021', '3/21/2022', '1/24/2022', 1, 'False', 120-553-506-409-416, 8, 'Reichel Inc', 'Patient Room 1', 'Dustin Malhoney', '5/14/2021');
insert into aktivu.facility_asset (facility_asset_id, facility_id, product_id, category_id, group_id, epc_code, description, purchase_dt, inspection_dt, pm_dt, status_id, is_active, serial_number, purchase_price, manufacturer, last_reported_location, location_reported_by, modified_at) values (4, 4, 3, 2, 4, '677632140036173808', '1 single 8 oz bottle of hand sanitizer', '3/24/2021', '3/27/2021', '3/30/2021', 1, 'True', 485-598-553-793-359, 8, 'Reichel Inc', 'Storage Closet 8', 'Kesha DeSooter', '12/27/2020');
insert into aktivu.facility_asset (facility_asset_id, facility_id, product_id, category_id, group_id, epc_code, description, purchase_dt, inspection_dt, pm_dt, status_id, is_active, serial_number, purchase_price, manufacturer, last_reported_location, location_reported_by, modified_at) values (5, 5, 4, 1, 1, '824256442879339290', '1 single box of 10 individually wrapped sterile blades', '3/4/2022', '5/23/2022', '4/3/2021', 2, 'False', 278-583-644-613-991, 40, 'Macejkovic, Gleason and Heidenreich', 'Operating Room', 'Jonathan Belhop', '2/11/2022');
insert into aktivu.facility_asset (facility_asset_id, facility_id, product_id, category_id, group_id, epc_code, description, purchase_dt, inspection_dt, pm_dt, status_id, is_active, serial_number, purchase_price, manufacturer, last_reported_location, location_reported_by, modified_at) values (6, 1, 6, 1, 1, '324519457291835819', '1 single infusion pump', '6/12/2022', '6/27/202', '7/4/2022', 1, 'True', 347-765-345-235-656, 1500, 'Parisian Group', 'Patient Room 6', 'Kelly Zombardi', '8/22/2022');

-- fake data for aktivu.asset_recall

insert into aktivu.asset_recall (recall_id, facility_asset_id, modified_at) values (4, 5, '2/7/2022');
insert into aktivu.asset_recall (recall_id, facility_asset_id, modified_at) values (3, 1, '4/4/2022');


-- fake data for aktivu.asset_part

insert into aktivu.asset_part (asset_part_id, facility_asset_id, part_name, part_number, part_description, modified_at) values (1, 1, 'Chest Piece', '524859', 'Piece that is used to pick up heartbeat', '11/27/2021');
insert into aktivu.asset_part (asset_part_id, facility_asset_id, part_name, part_number, part_description, modified_at) values (2, 2, 'Tubing', '737931', 'Tube that connects to ear pieces of stethescope', '11/25/2021');
insert into aktivu.asset_part (asset_part_id, facility_asset_id, part_name, part_number, part_description, modified_at) values (3, 6, 'Red blink light', '026581', 'Light indicates low battery', '11/25/2021');
insert into aktivu.asset_part (asset_part_id, facility_asset_id, part_name, part_number, part_description, modified_at) values (4, 4, 'Infuser', '066115', 'Part of infusion pump', '5/23/2021');

-- fake data for aktivu.maintenance_log

insert into aktivu.maintenance_log (log_id, facility_asset_id, created_at, due_by, description, status_id, modified_at) values (1, 2, '2/19/2022', '3/17/2021', 'Power button is stuck', 4, '12/14/2020');
insert into aktivu.maintenance_log (log_id, facility_asset_id, created_at, due_by, description, status_id, modified_at) values (2, 4, '12/20/2020', '4/12/2021', 'Gauge is stuck at green level indication', 6, '5/17/2022');


-- fake data for aktivu.incident_type_ref

insert into aktivu.incident_type_ref (incident_type_id, description) values (1, 'Front End Aktivu');
insert into aktivu.incident_type_ref (incident_type_id, description) values (2, 'Back End Aktivu');
insert into aktivu.incident_type_ref (incident_type_id, description) values (3, 'Products');
insert into aktivu.incident_type_ref (incident_type_id, description) values (4, 'Assets');
insert into aktivu.incident_type_ref (incident_type_id, description) values (5, 'User Portal');

-- fake data for aktivu.incident

insert into aktivu.incident (incident_id, incident_type_id, incident_name, description, created_by, incident_created_date, incident_closed_date, modified_at) values (1, 3, 'Asset not working', 'Infusion pump is not delivering fluids', 'Dasya Naish', '11/8/2021', '1/9/2022', '6/30/2021');
insert into aktivu.incident (incident_id, incident_type_id, incident_name, description, created_by, incident_created_date, incident_closed_date, modified_at) values (2, 2, 'Database crashing', 'Data is overloading and causing database to crash', 'Kaila Leatherland', '3/27/2022', '11/11/2021', '10/23/2021');
insert into aktivu.incident (incident_id, incident_type_id, incident_name, description, created_by, incident_created_date, incident_closed_date, modified_at) values (3, 5, 'User cannot login', 'User is trying to log in and is not able to', 'Lenora Ilchenko', '2/1/2022', '12/10/2021', '1/12/2022');
insert into aktivu.incident (incident_id, incident_type_id, incident_name, description, created_by, incident_created_date, incident_closed_date, modified_at) values (4, 5, 'Gauze Pad boxes', 'Boxes that hold gauze pad came with less than 50 (4 boxes)', 'Milly Edwicker', '3/9/2022', '9/19/2021', '1/4/2022');
insert into aktivu.incident (incident_id, incident_type_id, incident_name, description, created_by, incident_created_date, incident_closed_date, modified_at) values (5, 1, 'Aktivu Website not loading', 'Users are trying to use Aktivu website and it is taking 10 minutes to load each screen', 'Darcey Anchor', '8/2/2021', '10/23/2021', '9/12/2021');

-- fake data for aktivu.ticket_priority_ref

insert into aktivu.ticket_priority_ref (ticket_priority_id, ticket_priority_level) values (1, 'Critical');
insert into aktivu.ticket_priority_ref (ticket_priority_id, ticket_priority_level) values (2, 'Important');
insert into aktivu.ticket_priority_ref (ticket_priority_id, ticket_priority_level) values (3, 'Normal');
insert into aktivu.ticket_priority_ref (ticket_priority_id, ticket_priority_level) values (4, 'Low');

-- fake data for aktivu.ticket_category_ref

insert into aktivu.ticket_category_ref (ticket_category_id, description) values (1, 'Medically related');
insert into aktivu.ticket_category_ref (ticket_category_id, description) values (2, 'Non Medically related');
--insert into aktivu.ticket_category_ref (ticket_category_id, description) values (3, '');
--insert into aktivu.ticket_category_ref (ticket_category_id, description) values (4, '');
--insert into aktivu.ticket_category_ref (ticket_category_id, description) values (5, '');

-- fake data for aktivu.ticket

insert into aktivu.ticket (ticket_id, incident_id, description, created_by, user_id, group_id, status_id, ticket_priority_id, ticket_category_id, ticket_created_date, ticket_closed_date, modified_at) values (1, 2, 'Analyze database and figure out why it is crashing', 'Kaila Leatherland', 3, 1, 5, 1, 2, '7/8/2021', null, '10/28/2021');
insert into aktivu.ticket (ticket_id, incident_id, description, created_by, user_id, group_id, status_id, ticket_priority_id, ticket_category_id, ticket_created_date, ticket_closed_date, modified_at) values (2, 3, 'User login is blocking multiple users from logging in, needs troubleshooting', 'Lenora Ilchenko', 4, 1, 5, 1, 2, '3/27/2022', null, '12/17/2021');
insert into aktivu.ticket (ticket_id, incident_id, description, created_by, user_id, group_id, status_id, ticket_priority_id, ticket_category_id, ticket_created_date, ticket_closed_date, modified_at) values (3, 4, 'Contact vendor and inquire about missing guaze pads', 'Milly Edwicker', 2, 5, 6, 3, 2, '6/9/2022', '6/13/2022', '1/13/2022');
insert into aktivu.ticket (ticket_id, incident_id, description, created_by, user_id, group_id, status_id, ticket_priority_id, ticket_category_id, ticket_created_date, ticket_closed_date, modified_at) values (4, 4, 'Order replacement gauze pads', 'Milly Edwicker', 2, 5, 4, 2, 1, '11/10/2020', null, '11/23/2021');
insert into aktivu.ticket (ticket_id, incident_id, description, created_by, user_id, group_id, status_id, ticket_priority_id, ticket_category_id, ticket_created_date, ticket_closed_date, modified_at) values (5, 5, 'Troubleshoot website loading screens', 'Dasya Naish', 1, 2, 5, 1, 2, '8/12/2021', null, '5/19/2022');

-- fake data for aktivu.ticket_asset

insert into aktivu.ticket_asset (ticket_id, facility_asset_id, modified_at) values (1, 2, '9/12/2021');
insert into aktivu.ticket_asset (ticket_id, facility_asset_id, modified_at) values (2, 3, '9/12/2021');
insert into aktivu.ticket_asset (ticket_id, facility_asset_id, modified_at) values (3, 4, '7/28/2021');

-- fake data for aktivu.facility_asset_charter_ref

insert into aktivu.facility_asset_charter_ref  (charter_id, charter_type) values (1, 'Rent');
insert into aktivu.facility_asset_charter_ref  (charter_id, charter_type) values (2, 'Lease');

-- fake data for aktivu.facility_asset_charter_log

insert into aktivu.facility_asset_charter_log (facility_asset_id, charter_id, charter_period, charter_cost, charter_start_date, charter_end_date, contact_id, modified_at) values (1, 1, '12 Months', 1250, '6/4/2021', '6/4/2022', 1, '5/29/2021');
insert into aktivu.facility_asset_charter_log (facility_asset_id, charter_id, charter_period, charter_cost, charter_start_date, charter_end_date, contact_id, modified_at) values (6, 2, '3 years', 3000, '7/11/2020', '7/11/2023', 14, '6/26/2020');

-- fake data for aktivu.product_details

insert into aktivu.product_detail (product_id, category_id, model_number, upc, warranty_period, image_location, power_requirements, height_in_inches, weight_in_pounds, width_in_inches, length_in_inches, end_of_life, additional_specs, modified_at) values (1, 1, 214910, 'VHNQ-896-3279-36793-1626', '12 months from purchase date', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAKdSURBVDjLjZP9S1NRGMdH9GckFFT6Q5ZhWVGZEGhFSFmaoiCB72VJxYwowSAhKUqY0gZplOR+MQqCwtQSC19wXcXFfjF1zXa3u817d+927t2Lfjv3xF6Eoi58fjrn+dzn+XIeAwCDDv22UHIpef9gK2VTsi5NkKtpmhSLxdbi8Tj+BD2HyWTqSpcYbGdLnbMFeTFX+aF1ofkIxKYs+K8fhRLwIRwOIxgMQhRFeL1eJuF5Ht3d3UmJYTJzO5bqjk+bKvONisMGiRuH0n4YwR8LUFUViqJAkiQIgsAEhBCEQiGYzebfkm/HsrBy/1ydPp9+IRKJgAych+xeRscbB1oH7ajumUSblaMjRDeMxDLxlGdj4VZ+WUIQi6iIDJZC8brQ/HwO3KIfjmUvLlmmsLjsZp243e6UQLqYhaU7Jw8mBDqipREabbP91TyUsMrCu/bsKwT/KssjEAikBL7GvevEeCBOHhbFyJNiyL0tUEY6ockSjNZ5GF/acLWfQ1PvHERJZpnIspwSKN8tm93jhZmXq3eUaSEX4lGCqOpjF0JklYYmg6gifNISwqrCQtRJCjThcY06tQ2e8WLinSiBMFUFYaISGi3sG6uBebQKlk9V6BktxQ3rCRayPlJK4DTXyJ+zYe6ob0tksMo1IEo7eTJ6AW+5e6CPCxP292i2FLLiDQKy2Fcf+JiNm42nGxKCsL0YROFhGi6BdeY2gqEARmYHUPuggIqjjKRgZaar2vthN770V9idti74HI9AJneByDz6xzrR8qIIrU/P4IrpFGrvFrFudJIC7nX7Ts/QfoF/lwNhKAf+4T0QpytoBgr7k8fvBu/7CRfvREDypz+kNSZIW6Z9NKCwfvC3ZUovpncVtr1pggxd8h/rnEBf/Yxfiwq9OE8N8XAAAAAASUVORK5CYII=', 'Battery or plugged into wall', null, .5, 6, 12, '10 years', null, '7/12/2021');
insert into aktivu.product_detail (product_id, category_id, model_number, upc, warranty_period, image_location, power_requirements, height_in_inches, weight_in_pounds, width_in_inches, length_in_inches, end_of_life, additional_specs, modified_at) values (2, 1, 878684, 'DUQP-770-3986-28414-9146', '36 months from purchase date', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHnSURBVDjLpZM/a1RRFMTPfXv3L5sYIXYSxMbCWsTCOo1JGlPYWKeyshE7v4JNwCZfQRBBBBsLERsbv4K1hGz23TMz91i8t4muleQ0h1vM3B/MnBQRdpVJz78c3Y8wq5KJMlJGyOg0OAyrXbr9/tmnr38a5IjYFOtnUUawE+NvkZfVGw/XCTIhE5Ums/GL0WRklZckWCM5P1vuHBzvPuhJXvUGNEJpPB3d8sLXgoYEh6IGdGYAGc4Gjrw4XbbD0eA7Ch5fEMBpdCY4Ex2T2cb0TcQ4VSqRSiQToUSnTefTiailt37t4Hj3GxyWUWBwNMTY4Byb2Z2zX4uXVdoi61zSlqg5wZkv/UatsShLH1iynyjYz966oSMwFI4IWUS9LdWNKm0ImhEYwzV050xSeMHALBovsFzajgAFqRSfEDSx3hQ1AzShYwTnAI4BWh+SGnoLC4uKQusJcK9dtNuL0+XdzetzK63vEMwXwi7GhAITa+PFI8IqHJbfHn34aGZ2eLL3pMnNDxRYlYogEWzgSl0KNDgrnIHOgAQtr+LoSR5569ae+7YXJDhq/3ugIAAanQFnNTMQtLR+C4cnewHHOxQEHOGFtTOg4BBBsaMLUU/zejUvSMpllVf3QO+r3re1Sv8S/O80dsX5DaeOJ5G2UDDRAAAAAElFTkSuQmCC', 'Battery operated', 0, 1, 6, 12, '5 years', null, '10/11/2022');
insert into aktivu.product_detail (product_id, category_id, model_number, upc, warranty_period, image_location, power_requirements, height_in_inches, weight_in_pounds, width_in_inches, length_in_inches, end_of_life, additional_specs, modified_at) values (6, 1, 388858, 'ZORI-998-4038-78404-7193', 'Lifetime warranty', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIcSURBVDjLjZO/T1NhFIafc+/trdRaYk1KUEEWjXHRaCSik+E/cDHGzYXB2YHRhMRFY1SYmRgYHZ3VxIRFDYMraMC2hrbQXm7v9+M4UGobiOEk7/adN+9zvnNEVQEQkYvAGBDy/6oBm6rqAVBVeia30jRtGmOctVaPU5qmuri4+AaYAgJVHTKYNsa4drutnU6nr1arpY1GQ6vVqlprdXt7W5eWlvomMv/uw6tSofB4p+NOF0biYtc48tEAhXiuTZzh/s1xyuUyWZbhvWdlZeXt3Nzca14sf6zW6nXf7uzrcfq9s6sLy5+1Xq8fQQKmo1ZCvlAoyo+tXT5tPGO09IckM2zWznH3/AJ3rl5ACInjmGazifceay2VSgWASISSBaz3FIs1RnJlPF18vEG1keDVk1lLFEWICM45wvAfYqTKriqje0lGI01x2qFtuuwkKQ26oEKcCwnDEBFBRA6HfmBw8JWwl3o2ti7j8+u0TUKzcYkrY/n+wyAIEJEjSxEglLyH5r7j+tg8T1oVZr8GzE69JIoiFMiM7zeHYUgQBAMJVBGU77+eYoxhLcvIxnNk6w8xxvDo3hqH+yIieO+HEkQB/qe6bPL5g/cckCkDiBhjOJULhlCGDJIkXX2z+m3GeW4UCnExyxxxHIIOLNLk2WP5AaQXTYDb1tovgHCy8lEUzQS9g1LAO+f2AX+SZudcAjgZOOeJ3jkHJ0zggNpfYEZnU63wHeoAAAAASUVORK5CYII=', 'Plugged into wall', null, .5, 3, 4, '1 year', null, '7/26/2021');

-- fake data for aktivu.product_attachment

insert into aktivu.product_attachment (attachment_id, product_id, attachment_description, file_location, file_type, modified_at) values (1, 2, 'User Manual attachment can be viewed when file is downloaded', 'folder manual/product/stethescope', '.txt', '1/17/2021');
insert into aktivu.product_attachment (attachment_id, product_id, attachment_description, file_location, file_type, modified_at) values (2, 6, 'User Manual attachment can be viewed when file is downloaded', 'folder manual/product/insulin_pump', '.txt', '2/14/2021');    
