-- comment for state_ref table --

COMMENT ON TABLE aktivu.state_ref IS 'Reference table for states';
COMMENT ON COLUMN aktivu.state_ref.state_id IS 'State abbreviation';
COMMENT ON COLUMN aktivu.state_ref.state_name IS 'Name of state';

-- comment for status_ref table --

COMMENT ON TABLE aktivu.status_ref IS 'Reference table for different status levels';
COMMENT ON COLUMN aktivu.status_ref.status_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.status_ref.status IS 'Status level';

-- comment for organization table --

COMMENT ON TABLE aktivu.organization IS 'Stores information for organizations';
COMMENT ON COLUMN aktivu.organization.org_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.organization.org_name IS 'Name of the organization';
COMMENT ON COLUMN aktivu.organization.address_1 IS 'Street address of the organization';
COMMENT ON COLUMN aktivu.organization.address_2 IS 'Street address of the organization';
COMMENT ON COLUMN aktivu.organization.city IS 'Organization city';
COMMENT ON COLUMN aktivu.organization.state_id IS 'Foreign key reference from aktivu.state_ref table';
COMMENT ON COLUMN aktivu.organization.zip_code IS 'Organization zipcode';
COMMENT ON COLUMN aktivu.organization.logo_location IS 'Physical location of the organization logo';
COMMENT ON COLUMN aktivu.organization.initial_setup_done IS 'Tracks the initial set up of the organization';
COMMENT ON COLUMN aktivu.organization.sso_enabled IS 'Tracks the single sign on availability for the organization';
COMMENT ON COLUMN aktivu.organization.org_sso_endpoint IS 'Single sign on endpoint of the organization';
COMMENT ON COLUMN aktivu.organization.display_name IS 'Display name of organization';
COMMENT ON COLUMN aktivu.organization.modified_at IS 'Tracks record creation';

-- comment for department table --

COMMENT ON TABLE aktivu.department IS 'Stores information about the departments';
COMMENT ON COLUMN aktivu.department.department_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.department.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.department.department_name IS 'Name of the department';
COMMENT ON COLUMN aktivu.department.modified_at IS 'Tracks record creation';

-- comment for facility table --

COMMENT ON TABLE aktivu.facility IS 'Stores information about the facilities';
COMMENT ON COLUMN aktivu.facility.facility_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.facility.department_id IS 'Foreign key reference from aktivu.department table';
COMMENT ON COLUMN aktivu.facility.facility_name IS 'Name of facility';
COMMENT ON COLUMN aktivu.facility.address IS 'Street address of the facility';
COMMENT ON COLUMN aktivu.facility.city IS 'Facility city';
COMMENT ON COLUMN aktivu.facility.state_id IS 'Foreign key reference from aktivu.state_ref table';
COMMENT ON COLUMN aktivu.facility.zip_code IS 'Facility city';
COMMENT ON COLUMN aktivu.facility.facility_display_name IS 'Display name of facility';
COMMENT ON COLUMN aktivu.facility.modified_at IS 'Tracks record creation';

-- comment for org_category table --

COMMENT ON TABLE aktivu.org_category IS 'Stores organization category description';
COMMENT ON COLUMN aktivu.org_category.org_category_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.org_category.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.org_category.parent_category IS 'Stores heirarchy of categories';
COMMENT ON COLUMN aktivu.org_category.name IS 'Name of category';
COMMENT ON COLUMN aktivu.org_category.description IS 'Description of category';
COMMENT ON COLUMN aktivu.org_category.is_active IS 'Active/Inactive status';
COMMENT ON COLUMN aktivu.org_category.modified_at IS 'Tracks record creation';

-- comment for asset_group table --

COMMENT ON TABLE aktivu.asset_group IS 'Stores the asset groups';
COMMENT ON COLUMN aktivu.asset_group.group_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.asset_group.group_name IS 'Name of group';
COMMENT ON COLUMN aktivu.asset_group.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.asset_group.modified_at IS 'Tracks record creation';

-- comment for facility_category table --

COMMENT ON TABLE aktivu.facility_category IS 'Stores information about categories by facility';
COMMENT ON COLUMN aktivu.facility_category.category_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.facility_category.org_category_id IS 'Foreign key reference from aktivu.org_category table';
COMMENT ON COLUMN aktivu.facility_category.facility_id IS 'Foreign key reference from aktivu.facility table';
COMMENT ON COLUMN aktivu.facility_category.parent_category IS 'Stores heirarchy of categories';
COMMENT ON COLUMN aktivu.facility_category.facility_category_name IS 'Name of facility category';
COMMENT ON COLUMN aktivu.facility_category.description IS 'Description of facility category';
COMMENT ON COLUMN aktivu.facility_category.is_active IS 'Active/Inactive status';
COMMENT ON COLUMN aktivu.facility_category.modified_at IS 'Tracks record creation';

-- comment for pycube_product_type table --

COMMENT ON TABLE aktivu.pycube_product_type IS 'Stores information about product type';
COMMENT ON COLUMN aktivu.pycube_product_type.product_type_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.pycube_product_type.product_type_name IS 'Name of product type';
COMMENT ON COLUMN aktivu.pycube_product_type.description IS 'Description of product type';
COMMENT ON COLUMN aktivu.pycube_product_type.modified_at IS 'Tracks record creation';

-- comment for pycube_product table --

COMMENT ON TABLE aktivu.pycube_product IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.pycube_product.product_type_id IS 'Foreign key reference from aktivu.pycube_product_type table';
COMMENT ON COLUMN aktivu.pycube_product.product_name IS 'Product name';
COMMENT ON COLUMN aktivu.pycube_product.description IS 'Description of product';
COMMENT ON COLUMN aktivu.pycube_product.price IS 'Price of product';
COMMENT ON COLUMN aktivu.pycube_product.modified_at IS 'Tracks record creation';

-- comment for org_pycube_assets table --

COMMENT ON TABLE aktivu.org_pycube_assets IS 'Stores information about pycube assets';
COMMENT ON COLUMN aktivu.org_pycube_assets.asset_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.org_pycube_assets.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.org_pycube_assets.product_id IS 'Foreign key reference from aktivu.pycube_product table';
COMMENT ON COLUMN aktivu.org_pycube_assets.purchase_dt IS 'Date of purchase';
COMMENT ON COLUMN aktivu.org_pycube_assets.status_id IS 'Foreign key reference from aktivu.status_ref table';
COMMENT ON COLUMN aktivu.org_pycube_assets.quantity IS 'Quantity of assets';
COMMENT ON COLUMN aktivu.org_pycube_assets.num_licenses IS 'Tracks number of licenses of a given product';
COMMENT ON COLUMN aktivu.org_pycube_assets.modified_at IS 'Tracks record creation';

-- comment for ui_module table --

COMMENT ON TABLE aktivu.ui_module IS 'Stores information about the ui module';
COMMENT ON COLUMN aktivu.ui_module.ui_module_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.ui_module.module_name IS 'Name of ui module';
COMMENT ON COLUMN aktivu.ui_module.modified_at IS 'Tracks record creation';

-- comment for module_permission table --

COMMENT ON TABLE aktivu.module_permission IS 'Stores ui module permissions';
COMMENT ON COLUMN aktivu.module_permission.permission_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.module_permission.ui_module_id IS 'Foreign key reference from aktivu.ui_module table';
COMMENT ON COLUMN aktivu.module_permission.permission_name IS 'Name of permission';
COMMENT ON COLUMN aktivu.module_permission.modified_at IS 'Tracks record creation';

-- comment for org_role table --

COMMENT ON TABLE aktivu.org_role IS 'Stores information about the organization roles';
COMMENT ON COLUMN aktivu.org_role.role_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.org_role.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.org_role.role_name IS 'Name of role';
COMMENT ON COLUMN aktivu.org_role.modified_at IS 'Tracks record creation';

-- comment for role_permission table --

COMMENT ON TABLE aktivu.role_permission IS 'Stores the role permissions';
COMMENT ON COLUMN aktivu.role_permission.permission_id IS 'Foreign key reference from aktivu.module_permission table';
COMMENT ON COLUMN aktivu.role_permission.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.role_permission.role_id IS 'Foreign key reference from aktivu.org_role table';
COMMENT ON COLUMN aktivu.role_permission.modified_at IS 'Tracks record creation';

-- comment for app_setting table --

COMMENT ON TABLE aktivu.app_setting IS 'Stores information about application settings';
COMMENT ON COLUMN aktivu.app_setting.setting_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.app_setting.setting_name IS 'Name of setting';
COMMENT ON COLUMN aktivu.app_setting.modified_at IS 'Tracks record creation';

-- comment for org_app_setting table --

COMMENT ON TABLE aktivu.org_app_setting IS 'Stores application settings by organization';
COMMENT ON COLUMN aktivu.org_app_setting.setting_id IS 'Foreign key reference from aktivu.org_app_setting table';
COMMENT ON COLUMN aktivu.org_app_setting.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.org_app_setting.modified_at IS 'Tracks record creation';

-- comment for app_module_ref table --

COMMENT ON TABLE aktivu.app_module_ref IS 'Reference table for application modules';
COMMENT ON COLUMN aktivu.app_module_ref.module_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.app_module_ref.module_name IS 'Name of module';

-- comment for org_subscription table --

COMMENT ON TABLE aktivu.org_subscription IS 'Stores organization subscriptions';
COMMENT ON COLUMN aktivu.org_subscription.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.org_subscription.module_id IS 'Foreign key reference from aktivu.app_module_ref table';
COMMENT ON COLUMN aktivu.org_subscription.end_dt IS 'Subscription end date';
COMMENT ON COLUMN aktivu.org_subscription.modified_at IS 'Tracks record creation';

-- comment for contact table --

COMMENT ON TABLE aktivu.contact IS 'Stores contact information';
COMMENT ON COLUMN aktivu.contact.contact_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.contact.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.contact.first_name IS 'First name of contact';
COMMENT ON COLUMN aktivu.contact.last_name IS 'Last name of contact';
COMMENT ON COLUMN aktivu.contact.address_1 IS 'Street address';
COMMENT ON COLUMN aktivu.contact.city IS 'Contact city';
COMMENT ON COLUMN aktivu.contact.state_id IS 'Foreign key reference from aktivu.state_ref table';
COMMENT ON COLUMN aktivu.contact.phone_number IS 'Contact phone number';
COMMENT ON COLUMN aktivu.contact.is_employee IS 'Tracks if contact is converted into an employee';
COMMENT ON COLUMN aktivu.contact.modified_at IS 'Tracks record creation';

-- comment for vendor table --

COMMENT ON TABLE aktivu.vendor IS 'Stores information about the vendors';
COMMENT ON COLUMN aktivu.vendor.vendor_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.vendor.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.vendor.contact_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.vendor.modified_at IS 'Tracks record creation';

-- comment for employee --

COMMENT ON TABLE aktivu.employee IS 'Stores employee information';
COMMENT ON COLUMN aktivu.employee.employee_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.employee.contact_id IS 'Foreign key reference from aktivu.contact table';
COMMENT ON COLUMN aktivu.employee.modified_at IS 'Tracks record creation';

-- comment for org_user --

COMMENT ON TABLE aktivu.org_user IS 'Stores information about the user';
COMMENT ON COLUMN aktivu.org_user.user_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.org_user.email_address IS 'User email';
COMMENT ON COLUMN aktivu.org_user.user_secret IS 'User password';
COMMENT ON COLUMN aktivu.org_user.employee_id IS 'Foreign key reference from aktivu.employee table';
COMMENT ON COLUMN aktivu.org_user.is_active IS 'Active/Inactive status';
COMMENT ON COLUMN aktivu.org_user.email_sent IS 'True/False if email has been sent or not';
COMMENT ON COLUMN aktivu.org_user.email_sent_ts IS 'Timestamp of when email is sent';
COMMENT ON COLUMN aktivu.org_user.verification_code IS '6 digit verification code sent through email';
COMMENT ON COLUMN aktivu.org_user.reset_requested IS 'Request to reset password';
COMMENT ON COLUMN aktivu.org_user.reset_completed IS 'True/False if password has been reset or not';
COMMENT ON COLUMN aktivu.org_user.api_key IS 'Encrypted hashing key';
COMMENT ON COLUMN aktivu.org_user.api_key_dt IS 'Timestamp of when key is created';
COMMENT ON COLUMN aktivu.org_user.key_slug IS 'Unique key';
COMMENT ON COLUMN aktivu.org_user.modified_at IS 'Tracks record creation';

-- comment for user_organization --

COMMENT ON TABLE aktivu.user_organization IS 'Stores user and their related organizations';
COMMENT ON COLUMN aktivu.user_organization.user_id IS 'Foreign key reference from aktivu.org_user table';
COMMENT ON COLUMN aktivu.user_organization.org_id IS 'Foreign key reference from aktivu.organization table';

-- comment for org_group -- 

COMMENT ON TABLE aktivu.org_group IS 'Stores information about organization groups';
COMMENT ON COLUMN aktivu.org_group.group_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.org_group.org_id IS 'Foreign key reference from aktivu.organization table';
COMMENT ON COLUMN aktivu.org_group.group_name IS 'Name of the group';
COMMENT ON COLUMN aktivu.org_group.modified_at IS 'Tracks record creation';

-- comment for group_role  --

COMMENT ON TABLE aktivu.group_role IS 'Stores information about group roles';
COMMENT ON COLUMN aktivu.group_role.group_id IS 'Foreign key reference from aktivu.org_group table';
COMMENT ON COLUMN aktivu.group_role.role_id IS 'Foreign key reference from aktivu.org_role table';
COMMENT ON COLUMN aktivu.group_role.modified_at IS 'Tracks record creation';

-- comment for user_audit table --

COMMENT ON TABLE aktivu.user_audit IS 'Tracks the user activity';
COMMENT ON COLUMN aktivu.user_audit.user_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.user_audit.user_id IS 'Foreign key reference from aktivu.org_user table';
COMMENT ON COLUMN aktivu.user_audit.user_log IS 'Logs user activity in the application';
COMMENT ON COLUMN aktivu.user_audit.time_stamp IS 'Date time stamp of the activity';
COMMENT ON COLUMN aktivu.user_audit.modified_at IS 'Tracks record creation';

-- comment for user_role table --

COMMENT ON TABLE aktivu.user_role IS 'Stores roles for given user';
COMMENT ON COLUMN aktivu.user_role.user_id IS 'Foreign key reference from aktivu.org_user table';
COMMENT ON COLUMN aktivu.user_role.role_id IS 'Foreign key reference from aktivu.org_role table';
COMMENT ON COLUMN aktivu.user_role.modified_at IS 'Tracks record creation';

-- comment for user_permission table --

COMMENT ON TABLE aktivu.user_permission IS 'Stores permissions for given role';
COMMENT ON COLUMN aktivu.user_permission.user_id IS 'Foreign key reference from aktivu.org_user table';
COMMENT ON COLUMN aktivu.user_permission.permission_id IS 'Foreign key reference from aktivu.module_permission table';
COMMENT ON COLUMN aktivu.user_permission.modified_at IS 'Tracks record creation';

-- comment for user_group table --

COMMENT ON TABLE aktivu.user_group IS 'Stores information about groups and users';
COMMENT ON COLUMN aktivu.user_group.group_id IS 'Foreign key reference from aktivu.org_group table';
COMMENT ON COLUMN aktivu.user_group.user_id IS 'Foreign key reference from aktivu.org_user table';
COMMENT ON COLUMN aktivu.user_group.modified_at IS 'Tracks record creation';

-- comment for user_facility table --

COMMENT ON TABLE aktivu.user_facility IS 'Stores the details of user facility';
COMMENT ON COLUMN aktivu.user_facility.user_id IS 'Foreign key reference from aktivu.org_use table';
COMMENT ON COLUMN aktivu.user_facility.facility_id IS 'Foreign key reference from aktivu.facility table';
COMMENT ON COLUMN aktivu.user_facility.modified_at IS 'Tracks record creation';

-- comment for product table --

COMMENT ON TABLE aktivu.product IS 'Stores information about products';
COMMENT ON COLUMN aktivu.product.product_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.product.vendor_id IS 'Foreign key reference from aktivu.vendor table';
COMMENT ON COLUMN aktivu.product.product_name IS 'Name of the product';
COMMENT ON COLUMN aktivu.product.modified_at IS 'Tracks record creation';

-- comment for recall_type table --

COMMENT ON TABLE aktivu.recall_type IS 'Stores information about type of product recall';
COMMENT ON COLUMN aktivu.recall_type.recall_type_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.recall_type.description IS 'Description of recall type';
COMMENT ON COLUMN aktivu.recall_type.modified_at IS 'Tracks record creation';

-- comment for recall table --

COMMENT ON TABLE aktivu.recall IS 'Stores information about specific recall';
COMMENT ON COLUMN aktivu.recall.recall_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.recall.product_id IS 'Foreign key reference from aktivu.product table';
COMMENT ON COLUMN aktivu.recall.recall_type_id IS 'Foreign key reference from aktivu.recall_type table';
COMMENT ON COLUMN aktivu.recall.recall_reason IS 'Details on why product is on recall';
COMMENT ON COLUMN aktivu.recall.recall_dt IS 'Date of recall';
COMMENT ON COLUMN aktivu.recall.resolve_dt IS 'Date when recall is resolved';
COMMENT ON COLUMN aktivu.recall.status_id IS 'Foreign key reference from aktivu.status_ref table'; 
COMMENT ON COLUMN aktivu.recall.modified_at IS 'Tracks record creation';

-- comment for facility_asset table --

COMMENT ON TABLE aktivu.facility_asset IS 'Stores the assets for a given facility';
COMMENT ON COLUMN aktivu.facility_asset.facility_asset_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.facility_asset.facility_id IS 'Foreign key reference from aktivu.facility table';
COMMENT ON COLUMN aktivu.facility_asset.product_id IS 'Foreign key reference from aktivu.product table';
COMMENT ON COLUMN aktivu.facility_asset.category_id IS 'Foreign key reference from aktivu.facility_category table';
COMMENT ON COLUMN aktivu.facility_asset.group_id IS 'Foreign key reference from aktivu.asset_group table';
COMMENT ON COLUMN aktivu.facility_asset.epc_code IS 'Unique code that identifies an asset';
COMMENT ON COLUMN aktivu.facility_asset.description IS 'Stores asset description';
COMMENT ON COLUMN aktivu.facility_asset.purchase_dt IS 'Date of asset purchase';
COMMENT ON COLUMN aktivu.facility_asset.inspection_dt IS 'Date of asset inspection';
COMMENT ON COLUMN aktivu.facility_asset.pm_dt IS 'Preventative Maintenance date';
COMMENT ON COLUMN aktivu.facility_asset.status_id IS 'Foreign key reference from aktivu.status_ref table';
COMMENT ON COLUMN aktivu.facility_asset.is_active IS 'Active/Inactive status';
COMMENT ON COLUMN aktivu.facility_asset.modified_at IS 'Tracks record creation';

-- comment for asset_recall table --

COMMENT ON TABLE aktivu.asset_recall IS 'Stores assets affected by recall';
COMMENT ON COLUMN aktivu.asset_recall.facility_asset_id IS 'Foreign key reference from aktivu.facility_asset table';
COMMENT ON COLUMN aktivu.asset_recall.recall_id IS 'Foreign key reference from aktivu.recall table';
COMMENT ON COLUMN aktivu.asset_recall.modified_at IS 'Tracks record creation';

-- comment for asset_part table --

COMMENT ON TABLE aktivu.asset_part IS 'Stores information about asset parts';
COMMENT ON COLUMN aktivu.asset_part.asset_part_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.asset_part.facility_asset_id IS 'Foreign key reference from aktivu.facility_asset table';
COMMENT ON COLUMN aktivu.asset_part.part_number IS 'Part number';
COMMENT ON COLUMN aktivu.asset_part.part_description IS 'Description of part';
COMMENT ON COLUMN aktivu.asset_part.modified_at IS 'Tracks record creation';

-- comment for maintenance_log table --

COMMENT ON TABLE aktivu.maintenance_log IS 'Stores maintenance logs for facility assets';
COMMENT ON COLUMN aktivu.maintenance_log.log_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.maintenance_log.facility_asset_id IS 'Foreign key reference from aktivu.facility_asset table';
COMMENT ON COLUMN aktivu.maintenance_log.created_at IS 'Date and timestamp that log is created at';
COMMENT ON COLUMN aktivu.maintenance_log.due_by IS 'Date that maintenance request is due by';
COMMENT ON COLUMN aktivu.maintenance_log.description IS 'Stores asset maintenance history';
COMMENT ON COLUMN aktivu.maintenance_log.status_id IS 'Foreign key reference from aktivu.status_ref table';
COMMENT ON COLUMN aktivu.maintenance_log.modified_at IS 'Tracks record creation';

-- comment for incident_type_ref table --

COMMENT ON TABLE aktivu.incident_type_ref IS 'Stores information about incident type';
COMMENT ON COLUMN aktivu.incident_type_ref.incident_type_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.incident_type_ref.description IS 'Stores incident type description';

-- comment for incident table --

COMMENT ON TABLE aktivu.incident IS 'Stores information about specific incidents';
COMMENT ON COLUMN aktivu.incident.incident_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.incident.incident_type_id IS 'Foreign key reference from aktivu.incident_type_ref table';
COMMENT ON COLUMN aktivu.incident.incident_name IS 'Name of specific incident';
COMMENT ON COLUMN aktivu.incident.description IS 'Stores description about specific incident';
COMMENT ON COLUMN aktivu.incident.created_by IS 'Contact of person that created the incident';
COMMENT ON COLUMN aktivu.incident.incident_created_date IS 'Date incident is created';
COMMENT ON COLUMN aktivu.incident.incident_closed_date IS 'Date incident is closed';
COMMENT ON COLUMN aktivu.incident.modified_at IS 'Tracks record creation';

-- comment for ticket_priority_ref table --

COMMENT ON TABLE aktivu.ticket_priority_ref IS 'Reference table for ticket priority';
COMMENT ON COLUMN aktivu.ticket_priority_ref.ticket_priority_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.ticket_priority_ref.ticket_priority_level IS 'Different levels of priority';

-- comment for ticket_category_ref table --

COMMENT ON TABLE aktivu.ticket_category_ref IS 'Reference table for what category a ticket belongs under';
COMMENT ON COLUMN aktivu.ticket_category_ref.ticket_category_id IS 'Auto generated serial identifer';
COMMENT ON COLUMN aktivu.ticket_category_ref.description IS 'Description of the ticket category';

-- comment for ticket table --

COMMENT ON TABLE aktivu.ticket IS 'Stores information about specific tickets';
COMMENT ON COLUMN aktivu.ticket.ticket_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.ticket.incident_id IS 'Foreign key reference from aktivu.incident table';
COMMENT ON COLUMN aktivu.ticket.description IS 'Description of ticket details';
COMMENT ON COLUMN aktivu.ticket.created_by IS 'Contact of person that created the ticket';
COMMENT ON COLUMN aktivu.ticket.user_id IS 'User that the ticket is assigned to';
COMMENT ON COLUMN aktivu.ticket.group_id IS 'Foreign key reference from aktivu.org_group table';
COMMENT ON COLUMN aktivu.ticket.status_id IS 'Foreign key reference from aktivu.status_ref table';
COMMENT ON COLUMN aktivu.ticket.ticket_priority_id IS 'Foreign key reference from aktivu.ticket_priority_ref table';
COMMENT ON COLUMN aktivu.ticket.ticket_category_id IS 'Foreign key reference from aktivu.ticket_category_ref table';
COMMENT ON COLUMN aktivu.ticket.ticket_created_date IS 'Date ticket is created';
COMMENT ON COLUMN aktivu.ticket.ticket_closed_date IS 'Date ticket is closed';
COMMENT ON COLUMN aktivu.ticket.modified_at IS 'Tracks record creation';

-- comment for ticket_asset table --

COMMENT ON TABLE aktivu.ticket_asset IS 'Stores asset and corresponding ticket';
COMMENT ON COLUMN aktivu.ticket_asset.ticket_id IS 'Foreign key reference from aktivu.ticket table';
COMMENT ON COLUMN aktivu.ticket_asset.facility_asset_id IS 'Foreign key reference from aktivu.facility_asset table';
COMMENT ON COLUMN aktivu.ticket_asset.modified_at IS 'Tracks record creation';

-- comment for facility_asset_charter_ref --

COMMENT ON TABLE aktivu.facility_asset_charter_ref IS 'Reference table for charter types';
COMMENT ON COLUMN aktivu.facility_asset_charter_ref.charter_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.facility_asset_charter_ref.charter_type IS 'Type of charter (rent/lease)';

-- comment for facility_asset_charter_log table --

COMMENT ON TABLE aktivu.facility_asset_charter_log IS 'Stores information about charter details for a given asset';
COMMENT ON COLUMN aktivu.facility_asset_charter_log.facility_asset_id IS 'Foreign key reference from aktivu.facility_asset table';
COMMENT ON COLUMN aktivu.facility_asset_charter_log.charter_id IS 'Foreign key reference from aktivu.facility_asset_charter_ref table';
COMMENT ON COLUMN aktivu.facility_asset_charter_log.charter_period IS 'Length of charter';
COMMENT ON COLUMN aktivu.facility_asset_charter_log.charter_cost IS 'Cost of charter';
COMMENT ON COLUMN aktivu.facility_asset_charter_log.charter_start_date IS 'Date charter begins';
COMMENT ON COLUMN aktivu.facility_asset_charter_log.charter_end_date IS 'Date charter ends';
COMMENT ON COLUMN aktivu.facility_asset_charter_log.contact_id IS 'Foreign key reference from aktivu.contact table';
COMMENT ON COLUMN aktivu.facility_asset_charter_log.modified_at IS 'Tracks record creation';

-- comment for product_detail table --

COMMENT ON TABLE aktivu.product_detail IS 'Stores specific details around a given product';
COMMENT ON COLUMN aktivu.product_detail.product_id IS 'Foreign key reference from aktivu.product table';
COMMENT ON COLUMN aktivu.product_detail.category_id IS 'Foreign key reference from aktivu.facility_category table';
COMMENT ON COLUMN aktivu.product_detail.model_number IS 'Product model number';
COMMENT ON COLUMN aktivu.product_detail.upc IS 'Unique code that is stored in product';
COMMENT ON COLUMN aktivu.product_detail.warranty_period IS 'Stores information on product warranty and its length of time';
COMMENT ON COLUMN aktivu.product_detail.image_location IS 'URL';
COMMENT ON COLUMN aktivu.product_detail.power_requirements IS 'Power requirements for given product';
COMMENT ON COLUMN aktivu.product_detail.height_in_inches IS 'Height of product in inches';
COMMENT ON COLUMN aktivu.product_detail.weight_in_pounds IS 'Weight of product in pounds';
COMMENT ON COLUMN aktivu.product_detail.width_in_inches IS 'Width of product in inches';
COMMENT ON COLUMN aktivu.product_detail.length_in_inches IS 'Length of product in inches';
COMMENT ON COLUMN aktivu.product_detail.end_of_life IS 'Product end of life';
COMMENT ON COLUMN aktivu.product_detail.additional_specs IS 'Any additional specifications regarding the product';
COMMENT ON COLUMN aktivu.product_detail.modified_at IS 'Tracks record creation';

-- comment for product_attachment table --

COMMENT ON TABLE aktivu.product_attachment IS 'Stores any additional attachments related to a given product';
COMMENT ON COLUMN aktivu.product_attachment.attachment_id IS 'Auto generated serial identifier';
COMMENT ON COLUMN aktivu.product_attachment.product_id IS 'Foreign key reference from aktivu.product table';
COMMENT ON COLUMN aktivu.product_attachment.attachment_description IS 'Description about image/file';
COMMENT ON COLUMN aktivu.product_attachment.file_location IS 'Location of file';
COMMENT ON COLUMN aktivu.product_attachment.file_type IS 'Type of file';
COMMENT ON COLUMN aktivu.product_attachment.modified_at IS 'Tracks record creation';
