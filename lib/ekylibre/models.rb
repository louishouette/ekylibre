# Autogenerated from Ekylibre (`rake clean:models` or `rake clean`)
module Ekylibre
  mattr_reader :models, :references
  # List of all models
  @@models = [:account, :account_balance, :activity, :affair, :analytic_repartition, :animal, :animal_group, :animal_medicine, :area, :asset, :asset_depreciation, :bank_statement, :bioproduct, :building, :building_division, :campaign, :cash, :cash_transfer, :cultivable_land_parcel, :custom_field, :custom_field_choice, :department, :deposit, :deposit_item, :district, :document, :document_archive, :document_template, :easement, :entity, :entity_address, :entity_link, :equipment, :establishment, :event, :financial_year, :fungus, :immatter, :incident, :incoming_delivery, :incoming_delivery_item, :incoming_delivery_mode, :incoming_payment, :incoming_payment_mode, :inventory, :inventory_item, :journal, :journal_entry, :journal_entry_item, :land_parcel, :land_parcel_cluster, :land_parcel_group, :legal_entity, :listing, :listing_node, :listing_node_item, :log, :mandate, :matter, :medicine, :meeting, :meeting_nature, :meeting_participation, :mineral_matter, :observation, :operation, :operation_task, :organic_matter, :outgoing_delivery, :outgoing_delivery_item, :outgoing_delivery_mode, :outgoing_payment, :outgoing_payment_mode, :person, :plant, :plant_medicine, :preference, :prescription, :procedure, :procedure_variable, :product, :product_group, :product_indicator_datum, :product_link, :product_localization, :product_membership, :product_move, :product_nature, :product_nature_category, :product_nature_variant, :product_price, :product_price_listing, :product_price_template, :product_process, :product_process_phase, :production, :production_support, :profession, :property_title, :purchase, :purchase_item, :purchase_nature, :role, :sale, :sale_item, :sale_nature, :sequence, :service, :settlement, :sub_zone, :subscription, :subscription_nature, :tax, :tax_declaration, :tracking, :transfer, :transport, :user, :worker, :zone, :zone_property_title]

  # List of all references
  @@references = {
    :account => {
      :creator_id => :user,
      :updater_id => :user
    },
    :account_balance => {
      :account_id => :account,
      :creator_id => :user,
      :financial_year_id => :financial_year,
      :updater_id => :user
    },
    :activity => {
      :creator_id => :user,
      :parent_id => :activity,
      :updater_id => :user
    },
    :affair => {
      :creator_id => :user,
      :journal_entry_id => :journal_entry,
      :updater_id => :user
    },
    :analytic_repartition => {
      :creator_id => :user,
      :journal_entry_item_id => :journal_entry_item,
      :production_id => :production,
      :updater_id => :user
    },
    :animal => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :animal,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :animal_group => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :animal_group,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :animal_medicine => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :animal_medicine,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :area => {
      :creator_id => :user,
      :district_id => :district,
      :updater_id => :user
    },
    :asset => {
      :allocation_account_id => :account,
      :charges_account_id => :account,
      :creator_id => :user,
      :journal_id => :journal,
      :purchase_id => :purchase,
      :purchase_item_id => :purchase_item,
      :sale_id => :sale,
      :sale_item_id => :sale_item,
      :updater_id => :user
    },
    :asset_depreciation => {
      :asset_id => :asset,
      :creator_id => :user,
      :financial_year_id => :financial_year,
      :journal_entry_id => :journal_entry,
      :updater_id => :user
    },
    :bank_statement => {
      :cash_id => :cash,
      :creator_id => :user,
      :updater_id => :user
    },
    :bioproduct => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :bioproduct,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :building => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :building,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :building_division => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :building_division,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :campaign => {
      :creator_id => :user,
      :updater_id => :user
    },
    :cash => {
      :account_id => :account,
      :creator_id => :user,
      :journal_id => :journal,
      :updater_id => :user
    },
    :cash_transfer => {
      :creator_id => :user,
      :emitter_cash_id => :cash,
      :emitter_journal_entry_id => :journal_entry,
      :receiver_cash_id => :cash,
      :receiver_journal_entry_id => :journal_entry,
      :updater_id => :user
    },
    :cultivable_land_parcel => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :cultivable_land_parcel,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :custom_field => {
      :creator_id => :user,
      :updater_id => :user
    },
    :custom_field_choice => {
      :creator_id => :user,
      :custom_field_id => :custom_field,
      :updater_id => :user
    },
    :department => {
      :creator_id => :user,
      :parent_id => :department,
      :updater_id => :user
    },
    :deposit => {
      :cash_id => :cash,
      :creator_id => :user,
      :journal_entry_id => :journal_entry,
      :mode_id => :incoming_payment_mode,
      :responsible_id => :person,
      :updater_id => :user
    },
    :deposit_item => {
      :creator_id => :user,
      :deposit_id => :deposit,
      :updater_id => :user
    },
    :district => {
      :creator_id => :user,
      :updater_id => :user
    },
    :document => {
      :creator_id => :user,
      :updater_id => :user
    },
    :document_archive => {
      :creator_id => :user,
      :document_id => :document,
      :template_id => :template,
      :updater_id => :user
    },
    :document_template => {
      :creator_id => :user,
      :updater_id => :user
    },
    :easement => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :easement,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :entity => {
      :attorney_account_id => :account,
      :client_account_id => :account,
      :creator_id => :user,
      :payment_mode_id => :incoming_payment_mode,
      :proposer_id => :person,
      :responsible_id => :person,
      :sale_price_listing_id => :product_price_listing,
      :supplier_account_id => :account,
      :updater_id => :user
    },
    :entity_address => {
      :creator_id => :user,
      :entity_id => :entity,
      :mail_area_id => :area,
      :updater_id => :user
    },
    :entity_link => {
      :creator_id => :user,
      :entity_1_id => :entity,
      :entity_2_id => :entity,
      :updater_id => :user
    },
    :equipment => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :equipment,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :establishment => {
      :creator_id => :user,
      :updater_id => :user
    },
    :event => {
      :creator_id => :user,
      :meeting_nature_id => :meeting_nature,
      :procedure_id => :procedure,
      :updater_id => :user
    },
    :financial_year => {
      :creator_id => :user,
      :last_journal_entry_id => :journal_entry,
      :updater_id => :user
    },
    :fungus => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :fungus,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :immatter => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :immatter,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :incident => {
      :creator_id => :user,
      :target_id => "target_type",
      :updater_id => :user
    },
    :incoming_delivery => {
      :address_id => :entity_address,
      :creator_id => :user,
      :mode_id => :incoming_delivery_mode,
      :purchase_id => :purchase,
      :sender_id => :entity,
      :updater_id => :user
    },
    :incoming_delivery_item => {
      :container_id => :product,
      :creator_id => :user,
      :delivery_id => :incoming_delivery,
      :move_id => :product_move,
      :product_id => :product,
      :purchase_item_id => :purchase_item,
      :updater_id => :user
    },
    :incoming_delivery_mode => {
      :creator_id => :user,
      :updater_id => :user
    },
    :incoming_payment => {
      :affair_id => :affair,
      :commission_account_id => :account,
      :creator_id => :user,
      :deposit_id => :deposit,
      :journal_entry_id => :journal_entry,
      :mode_id => :incoming_payment_mode,
      :payer_id => :entity,
      :responsible_id => :person,
      :updater_id => :user
    },
    :incoming_payment_mode => {
      :attorney_journal_id => :journal,
      :cash_id => :cash,
      :commission_account_id => :account,
      :creator_id => :user,
      :depositables_account_id => :account,
      :depositables_journal_id => :journal,
      :updater_id => :user
    },
    :inventory => {
      :creator_id => :user,
      :journal_entry_id => :journal_entry,
      :responsible_id => :person,
      :updater_id => :user
    },
    :inventory_item => {
      :creator_id => :user,
      :inventory_id => :inventory,
      :move_id => :product_move,
      :product_id => :product,
      :tracking_id => :tracking,
      :updater_id => :user,
      :warehouse_id => :warehouse
    },
    :journal => {
      :creator_id => :user,
      :updater_id => :user
    },
    :journal_entry => {
      :creator_id => :user,
      :financial_year_id => :financial_year,
      :journal_id => :journal,
      :resource_id => "resource_type",
      :updater_id => :user
    },
    :journal_entry_item => {
      :account_id => :account,
      :bank_statement_id => :bank_statement,
      :creator_id => :user,
      :entry_id => :journal_entry,
      :journal_id => :journal,
      :updater_id => :user
    },
    :land_parcel => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :land_parcel,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :land_parcel_cluster => {
      :address_id => :address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :land_parcel_cluster,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :land_parcel_group => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :land_parcel_group,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :legal_entity => {
      :attorney_account_id => :account,
      :client_account_id => :account,
      :creator_id => :user,
      :payment_mode_id => :incoming_payment_mode,
      :proposer_id => :person,
      :responsible_id => :person,
      :sale_price_listing_id => :product_price_listing,
      :supplier_account_id => :account,
      :updater_id => :user
    },
    :listing => {
      :creator_id => :user,
      :updater_id => :user
    },
    :listing_node => {
      :creator_id => :user,
      :item_listing_id => :listing,
      :item_listing_node_id => :listing_node,
      :listing_id => :listing,
      :parent_id => :listing_node,
      :updater_id => :user
    },
    :listing_node_item => {
      :creator_id => :user,
      :node_id => :listing_node,
      :updater_id => :user
    },
    :log => {
      :creator_id => :user,
      :origin_id => "origin_type",
      :owner_id => "owner_type",
      :updater_id => :user
    },
    :mandate => {
      :creator_id => :user,
      :entity_id => :entity,
      :updater_id => :user
    },
    :matter => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :matter,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :medicine => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :medicine,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :meeting => {
      :creator_id => :user,
      :meeting_nature_id => :meeting_nature,
      :procedure_id => :procedure,
      :updater_id => :user
    },
    :meeting_nature => {
      :creator_id => :user,
      :updater_id => :user
    },
    :meeting_participation => {
      :creator_id => :user,
      :meeting_id => :meeting,
      :participant_id => :entity,
      :updater_id => :user
    },
    :mineral_matter => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :mineral_matter,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :observation => {
      :author_id => :user,
      :creator_id => :user,
      :subject_id => "subject_type",
      :updater_id => :user
    },
    :operation => {
      :creator_id => :user,
      :meeting_nature_id => :meeting_nature,
      :procedure_id => :procedure,
      :updater_id => :user
    },
    :operation_task => {
      :creator_id => :user,
      :indicator_datum_id => :product_indicator_datum,
      :operand_id => :product,
      :operation_id => :operation,
      :parent_id => :operation_task,
      :subject_id => :product,
      :updater_id => :user
    },
    :organic_matter => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :organic_matter,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :outgoing_delivery => {
      :address_id => :entity_address,
      :creator_id => :user,
      :mode_id => :outgoing_delivery_mode,
      :recipient_id => :entity,
      :sale_id => :sale,
      :transport_id => :transport,
      :transporter_id => :entity,
      :updater_id => :user
    },
    :outgoing_delivery_item => {
      :creator_id => :user,
      :delivery_id => :outgoing_delivery,
      :move_id => :product_move,
      :product_id => :product,
      :sale_item_id => :sale_item,
      :updater_id => :user
    },
    :outgoing_delivery_mode => {
      :creator_id => :user,
      :updater_id => :user
    },
    :outgoing_payment => {
      :affair_id => :affair,
      :cash_id => :cash,
      :creator_id => :user,
      :journal_entry_id => :journal_entry,
      :mode_id => :outgoing_payment_mode,
      :payee_id => :entity,
      :responsible_id => :person,
      :updater_id => :user
    },
    :outgoing_payment_mode => {
      :attorney_journal_id => :journal,
      :cash_id => :cash,
      :creator_id => :user,
      :updater_id => :user
    },
    :person => {
      :attorney_account_id => :account,
      :client_account_id => :account,
      :creator_id => :user,
      :payment_mode_id => :outoing_payment_mode,
      :proposer_id => :person,
      :responsible_id => :person,
      :sale_price_listing_id => :product_price_listing,
      :supplier_account_id => :account,
      :updater_id => :user
    },
    :plant => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :plant,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :plant_medicine => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :plant_medicine,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :preference => {
      :creator_id => :user,
      :record_value_id => "record_value_type",
      :updater_id => :user,
      :user_id => :user
    },
    :prescription => {
      :creator_id => :user,
      :document_id => :document,
      :prescriptor_id => :entity,
      :updater_id => :user
    },
    :procedure => {
      :creator_id => :user,
      :incident_id => :incident,
      :prescription_id => :prescription,
      :production_id => :production,
      :provisional_procedure_id => :procedure,
      :updater_id => :user
    },
    :procedure_variable => {
      :creator_id => :user,
      :procedure_id => :procedure,
      :target_id => :product,
      :updater_id => :user
    },
    :product => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :product,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :product_group => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :product_group,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :product_indicator_datum => {
      :creator_id => :user,
      :product_id => :product,
      :updater_id => :user
    },
    :product_link => {
      :carried_id => :product,
      :carrier_id => :product,
      :creator_id => :user,
      :operation_task_id => :operation_task,
      :updater_id => :user
    },
    :product_localization => {
      :container_id => :product,
      :creator_id => :user,
      :operation_task_id => :operation_task,
      :product_id => :product,
      :updater_id => :user
    },
    :product_membership => {
      :creator_id => :user,
      :group_id => :product_group,
      :member_id => :product,
      :operation_task_id => :operation_task,
      :updater_id => :user
    },
    :product_move => {
      :creator_id => :user,
      :product_id => :product,
      :updater_id => :user
    },
    :product_nature => {
      :asset_account_id => :account,
      :category_id => :product_nature_category,
      :charge_account_id => :account,
      :creator_id => :user,
      :product_account_id => :account,
      :stock_account_id => :account,
      :subscription_nature_id => :subscription_nature,
      :updater_id => :user
    },
    :product_nature_category => {
      :creator_id => :user,
      :parent_id => :product_nature_category,
      :updater_id => :user
    },
    :product_nature_variant => {
      :creator_id => :user,
      :nature_id => :product_nature,
      :updater_id => :user
    },
    :product_price => {
      :creator_id => :user,
      :product_id => :product,
      :supplier_id => :entity,
      :tax_id => :tax,
      :template_id => :product_price_template,
      :updater_id => :user
    },
    :product_price_listing => {
      :creator_id => :user,
      :updater_id => :user
    },
    :product_price_template => {
      :creator_id => :user,
      :listing_id => :listing,
      :product_nature_id => :product_nature,
      :supplier_id => :entity,
      :tax_id => :tax,
      :updater_id => :user
    },
    :product_process => {
      :creator_id => :user,
      :updater_id => :user
    },
    :product_process_phase => {
      :creator_id => :user,
      :process_id => :product_process,
      :updater_id => :user
    },
    :production => {
      :activity_id => :activity,
      :campaign_id => :campaign,
      :creator_id => :user,
      :product_nature_id => :product_nature,
      :updater_id => :user
    },
    :production_support => {
      :creator_id => :user,
      :production_id => :production,
      :storage_id => :product,
      :updater_id => :user
    },
    :profession => {
      :creator_id => :user,
      :updater_id => :user
    },
    :property_title => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :property_title,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :purchase => {
      :affair_id => :affair,
      :creator_id => :user,
      :delivery_address_id => :entity_address,
      :journal_entry_id => :journal_entry,
      :nature_id => :purchase_nature,
      :responsible_id => :person,
      :supplier_id => :entity,
      :updater_id => :user
    },
    :purchase_item => {
      :account_id => :account,
      :creator_id => :user,
      :price_id => :product_price,
      :price_template_id => :product_price_template,
      :product_id => :product,
      :purchase_id => :purchase,
      :tax_id => :tax,
      :tracking_id => :tracking,
      :updater_id => :user,
      :warehouse_id => :warehouse
    },
    :purchase_nature => {
      :creator_id => :user,
      :journal_id => :journal,
      :updater_id => :user
    },
    :role => {
      :creator_id => :user,
      :updater_id => :user
    },
    :sale => {
      :address_id => :entity_address,
      :affair_id => :affair,
      :client_id => :entity,
      :creator_id => :user,
      :delivery_address_id => :entity_address,
      :invoice_address_id => :entity_address,
      :journal_entry_id => :journal_entry,
      :nature_id => :sale_nature,
      :origin_id => :sale,
      :responsible_id => :person,
      :transporter_id => :entity,
      :updater_id => :user
    },
    :sale_item => {
      :account_id => :account,
      :creator_id => :user,
      :entity_id => :entity,
      :origin_id => :sale_item,
      :price_id => :product_price,
      :price_template_id => :product_price_template,
      :product_id => :product,
      :reduction_origin_id => :sale_item,
      :sale_id => :sale,
      :tax_id => :tax,
      :tracking_id => :tracking,
      :updater_id => :user,
      :warehouse_id => :warehouse
    },
    :sale_nature => {
      :creator_id => :user,
      :journal_id => :journal,
      :payment_mode_id => :incoming_payment_mode,
      :updater_id => :user
    },
    :sequence => {
      :creator_id => :user,
      :updater_id => :user
    },
    :service => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :service,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :settlement => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :settlement,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :sub_zone => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :sub_zone,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :subscription => {
      :address_id => :entity_address,
      :creator_id => :user,
      :nature_id => :subscription_nature,
      :product_nature_id => :product_nature,
      :sale_id => :sale,
      :sale_item_id => :sale_item,
      :subscriber_id => :entity,
      :updater_id => :user
    },
    :subscription_nature => {
      :creator_id => :user,
      :updater_id => :user
    },
    :tax => {
      :collected_account_id => :account,
      :creator_id => :user,
      :paid_account_id => :account,
      :updater_id => :user
    },
    :tax_declaration => {
      :creator_id => :user,
      :financial_year_id => :financial_year,
      :journal_entry_id => :journal_entry,
      :updater_id => :user
    },
    :tracking => {
      :creator_id => :user,
      :producer_id => :entity,
      :product_id => :product,
      :updater_id => :user
    },
    :transfer => {
      :affair_id => :affair,
      :client_id => :entity,
      :creator_id => :user,
      :journal_entry_id => :journal_entry,
      :updater_id => :user
    },
    :transport => {
      :creator_id => :user,
      :purchase_id => :purchase,
      :responsible_id => :person,
      :transporter_id => :entity,
      :updater_id => :user
    },
    :user => {
      :creator_id => :user,
      :department_id => :department,
      :establishment_id => :establishment,
      :person_id => :person,
      :profession_id => :profession,
      :role_id => :role,
      :updater_id => :user
    },
    :worker => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :worker,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :zone => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :zone,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    },
    :zone_property_title => {
      :address_id => :entity_address,
      :asset_id => :asset,
      :content_nature_id => :product_nature,
      :creator_id => :user,
      :father_id => :product,
      :mother_id => :product,
      :nature_id => :product_nature,
      :owner_id => :entity,
      :parent_id => :zone_property_title,
      :tracking_id => :tracking,
      :updater_id => :user,
      :variant_id => :product_nature_variant
    }
  }

end
