-- insert default state
INSERT INTO aktivu.state_ref (state_id, state_name) VALUES ('VA', 'Virginia');

-- create a default organizatiion
INSERT INTO aktivu.organization (org_name, display_name, address_1, city, state_id, zip_code, logo_location,
								initial_setup_done, sso_enabled)
			VALUES('pycube', 'Pycube Inc.', '21525 Ridgetop Cir', 'Sterling', 'VA', 20166, 's3://', true, false);

-- create a new contact
INSERT INTO aktivu.contact
    (   
        org_id, 
        first_name, 
        last_name, 
        address_1, 
        city, 
        state_id, 
        phone_number, 
        is_employee
    ) VALUES (1, 'Admin', 'Pycube', '1 Admin Way', 'Leesburg', 'VA', '703-000-0000', true);

-- create a new employee 
INSERT INTO aktivu.employee(contact_id, is_user) VALUES (1, true);

-- create a new org_user 
INSERT INTO aktivu.org_user(email_address, user_secret, employee_id, is_active) VALUES ('admin@pycube.com', crypt('password', gen_salt('bf')), 1, true);
