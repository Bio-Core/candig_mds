USE `TestJTree`

CREATE TABLE `patients` (
  `first_name` nvarchar(50) DEFAULT NULL,
  `last_name` nvarchar(50) DEFAULT NULL,
  `initials` nvarchar(50) DEFAULT NULL,
  `gender` nvarchar(50) DEFAULT NULL,
  `mrn` nvarchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `on_hcn` nvarchar(50) DEFAULT NULL,
  `clinical_history` nvarchar(255) DEFAULT NULL,
  `patient_type` nvarchar(50) DEFAULT NULL,
  `se_num` nvarchar(50) DEFAULT NULL,
  `patient_id` nvarchar(50) DEFAULT NULL,
  `sample_id` nvarchar(50) DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `referring_physican` nvarchar(150) DEFAULT NULL,
  `date_reported` date DEFAULT NULL,
  `surgical_date` date DEFAULT NULL,
  KEY `sample_id_idx` (`sample_id`),
  KEY `samples.sample_id_idx` (`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `samples` (
  `sample_id` nvarchar(50) DEFAULT NULL,
  `facility` nvarchar(255) DEFAULT NULL,
  `test_requested` nvarchar(50) DEFAULT NULL,
  `se_num` nvarchar(50) DEFAULT NULL,
  `date_collected` date DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `sample_type` nvarchar(50) DEFAULT NULL,
  `material_received` nvarchar(150) DEFAULT NULL,
  `material_received_num` nvarchar(150) DEFAULT NULL,
  `material_received_other` nvarchar(150) DEFAULT NULL,
  `volume_of_blood_marrow` float(5,1) DEFAULT NULL,
  `surgical_num` nvarchar(50) DEFAULT NULL,
  `tumor_site` nvarchar(255) DEFAULT NULL,
  `historical_diagnosis` nvarchar(255) DEFAULT NULL,
  `tumor_percnt_of_total` float(5,2) DEFAULT NULL,
  `tumor_percnt_of_circled` float(5,2) DEFAULT NULL,
  `reviewed_by` nvarchar(150) DEFAULT NULL,
  `h_e_slide_location` nvarchar(150) DEFAULT NULL,
  `non_uhn_id` nvarchar(50) DEFAULT NULL,
  `name_of_requestor` nvarchar(150) DEFAULT NULL,
  `dna_concentration` float(10,4) DEFAULT NULL,
  `dna_volume` float(5,1) DEFAULT NULL,
  `dna_location` nvarchar(255) DEFAULT NULL,
  `rna_concentration` float(10,4) DEFAULT NULL,
  `rna_volume` float(5,1) DEFAULT NULL,
  `rna_location` nvarchar(150) DEFAULT NULL,
  `wbc_location` nvarchar(50) DEFAULT NULL,
  `plasma_location` nvarchar(50) DEFAULT NULL,
  `cf_plasma_location` nvarchar(50) DEFAULT NULL,
  `pb_bm_location` nvarchar(50) DEFAULT NULL,
  `rna_lysate_location` nvarchar(50) DEFAULT NULL,
  `sample_size` nvarchar(50) DEFAULT NULL,
  `study_id` nvarchar(50) DEFAULT NULL,
  `sample_name` nvarchar(50) DEFAULT NULL,
  `date_submitted` date DEFAULT NULL,
  `container_type` nvarchar(50) DEFAULT NULL,
  `container_name` nvarchar(100) DEFAULT NULL,
  `container_id` nvarchar(100) DEFAULT NULL,
  `container_well` nvarchar(50) DEFAULT NULL,
  `copath_num` nvarchar(50) DEFAULT NULL,
  `other_identifier` nvarchar(50) DEFAULT NULL,
  `has_sample_files` tinyint(1) DEFAULT NULL,
  `dna_sample_barcode` nvarchar(50) DEFAULT NULL,
  `dna_extraction_date` date DEFAULT NULL,
  `dna_quality` nvarchar(255) DEFAULT NULL,
  `ffpe_qc_date` date DEFAULT NULL,
  `delta_ct_value` float(10,4) DEFAULT NULL,
  `comments` nvarchar(255) DEFAULT NULL,
  `rnase_p_date` date DEFAULT NULL,
  `dna_quality_by_rnase_p` float(10,4) DEFAULT NULL,
  `rna_quality` float(10,4) DEFAULT NULL,
  `rna_extraction_date` date DEFAULT NULL,
  KEY `sample_id_idx` (`sample_id`),
  CONSTRAINT `sample_id` FOREIGN KEY (`sample_id`) REFERENCES `patients` (`sample_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `experiments` (
  `experiment_id` nvarchar(255) NOT NULL,
  `study_id` nvarchar(50) DEFAULT NULL,
  `panel_assay_screened` int(11) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `chip_cartridge_barcode` nvarchar(50) DEFAULT NULL,
  `complete_date` date DEFAULT NULL,
  `pcr` nvarchar(50) DEFAULT NULL,
  `sample_id` nvarchar(50) DEFAULT NULL,
  `project_name` nvarchar(50) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `opened_date` date DEFAULT NULL,
  `project_id` nvarchar(50) DEFAULT NULL,
  `has_project_files` tinyint(1) DEFAULT NULL,
  `procedure_order_datetime` datetime DEFAULT NULL,
  KEY `sample_id_idx` (`sample_id`),
  CONSTRAINT `sample_id_ex` FOREIGN KEY (`sample_id`) REFERENCES `samples` (`sample_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

