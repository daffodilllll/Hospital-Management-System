-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2019 at 09:55 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(100) NOT NULL,
  `img_url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
(72, 'uploads/favicon7.png', 'Mr. Accountant', 'accountant@hms.com', 'New York, USA', '+9975 6765 7654', '', '112');

-- --------------------------------------------------------

--
-- Table structure for table `alloted_bed`
--

CREATE TABLE `alloted_bed` (
  `id` int(100) NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `a_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `d_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 NOT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bankb`
--

CREATE TABLE `bankb` (
  `id` int(100) NOT NULL,
  `group` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankb`
--

INSERT INTO `bankb` (`id`, `group`, `status`) VALUES
(1, 'A+', '0 Bags'),
(2, 'A-', '0 Bags'),
(3, 'B+', '0 Bags'),
(4, 'B-', '0 Bags'),
(5, 'AB+', '0 Bags'),
(6, 'AB-', '0 Bags'),
(7, 'O+', '0 Bags'),
(8, 'O-', '0 Bags');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `last_a_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `last_d_time` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bed_category`
--

CREATE TABLE `bed_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_category`
--

INSERT INTO `bed_category` (`id`, `category`, `description`) VALUES
(6, 'Icu', '10 beds'),
(7, 'Ccu', '10 beds'),
(8, 'Children', '5 beds'),
(10, 'General Ward', '50 beds'),
(14, 'rwerwe', 'werwerw');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `x` varchar(10) CHARACTER SET utf8 NOT NULL,
  `y` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `x`, `y`) VALUES
(12, 'Cardiology', '<p>This department provides medical care to patients who have problems with their heart or circulation. It treats people on an inpatient and outpatient basis. </p>\n', '', ''),
(15, 'Diagnostic imaging', 'Formerly known as X-ray, this department provides a full range of diagnostic imaging services including:\n\n', '', ''),
(17, 'Ear nose and throat (ENT)', 'Ear nose and throat (ENT)\nThe ENT department provides care for patients with a variety of problems, including:\ngeneral ear, nose and throat diseases\nneck lumps\ncancers of the head and neck area\ntear duct problems\nfacial skin lesions\nbalance and hearing disorders\nsnoring and sleep apnoea\nENT allergy problems\nsalivary gland diseases\nvoice disorders.\n', '', ''),
(20, 'General surgery', 'The general surgery ward covers a wide range of surgery.', '', ''),
(23, 'Maternity departments', 'Women now have a choice of who leads their maternity care and where they give birth. Care can be led by a consultant, a GP or a midwife.\n\n', '', ''),
(24, 'Microbiology', 'The microbiology department looks at all aspects of microbiology, such as bacterial and viral infections.\n\n', '', ''),
(26, 'Nephrology', 'This department monitors and assesses patients with kidney (renal) problems.\n', '', ''),
(27, 'Neurology', 'This unit deals with disorders of the nervous system, including the brain and spinal cord. It\'s run by doctors who specialise in this area (neurologists) and their staff.\n\n', '', ''),
(28, 'Nutrition and dietetics', 'Trained dieticians and nutritionists provide specialist advice on diet for hospital wards and outpatient clinics, forming part of a multidisciplinary team.\n\n', '', ''),
(32, 'Occupational therapy', 'This profession helps people who are physically or mentally impaired, including temporary disability after medical treatment. It practices in the fields of both healthcare and social care.\n\n', '', ''),
(33, 'Oncology', 'This department provides radiotherapy and a full range of chemotherapy treatments for cancerous tumours and blood disorders.\n\n', '', ''),
(34, 'Ophthalmology', 'Eye departments provide a range of ophthalmic services for adults and children,\n\n', '', ''),
(35, 'Orthopaedics', 'Orthopaedic departments treat problems that affect your musculoskeletal system. That\'s your muscles, joints, bones, ligaments, tendons and nerves.\n\n', '', ''),
(36, 'Pain management clinics', 'Usually run by consultant anaesthetists, these clinics aim to help treat patients with severe long-term pain that appears resistant to normal treatments.\n', '', ''),
(38, 'Physiotherapy', 'Physiotherapists promote body healing, for example after surgery, through therapies such as exercise and manipulation.\n\n', '', ''),
(39, 'Radiotherapy', 'Radiotherapy\nRun by a combination of consultant doctors and specially trained radiotherapists, this department provides radiotherapy (X-ray) treatment for conditions such as malignant tumours and cancer.\n\n', '', ''),
(40, 'Renal unit', 'Closely linked with nephrology teams at hospitals, these units provide haemodialysis treatment for patients with kidney failure. Many of these patients are on waiting lists for a kidney transplant.\n\n', '', ''),
(41, 'Rheumatology', 'Specialist doctors called rheumatologists run the unit and are experts in the field of musculoskeletal disorders (bones, joints, ligaments, tendons, muscles and nerves).\n\n', '', ''),
(42, 'Sexual health (genitourinary medicine)', 'This department provides a free and confidential service offering:\nadvice, testing and treatment for all sexually transmitted infections (STIs)\nfamily planning care (including emergency contraception and free condoms)\npregnancy testing and advice.\nIt also provides care and support for other sexual and genital problems.\nPatients are usually able to phone the department directly for an appointment and don\'t need a referral letter from their GP.\n\n\n', '', ''),
(43, 'Urology', 'The urology department is run by consultant urology surgeons and their surgical teams. It investigates all areas linked to kidney and bladder-based problems.\n\n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_report`
--

CREATE TABLE `diagnostic_report` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `invoice` varchar(100) CHARACTER SET utf8 NOT NULL,
  `report` varchar(10000) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `department` varchar(100) CHARACTER SET utf8 NOT NULL,
  `profile` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `department`, `profile`, `x`, `y`, `ion_user_id`) VALUES
(133, '', 'Mr Doctor', 'doctor@hms.com', 'Collegepara, Rajbari', '+0123456789', 'Cardiology', 'MD Cardiology', '', '', '652');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `group` varchar(10) CHARACTER SET utf8 NOT NULL,
  `age` varchar(10) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ldd` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'Accountant', 'For Financial Activities'),
(4, 'Doctor', ''),
(5, 'Patient', ''),
(6, 'Nurse', ''),
(7, 'Pharmacist', ''),
(8, 'Laboratorist', ''),
(10, 'Receptionist', 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `report` varchar(10000) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_phone` varchar(100) NOT NULL,
  `patient_address` varchar(100) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `date_string` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratorist`
--

CREATE TABLE `laboratorist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratorist`
--

INSERT INTO `laboratorist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
(3, 'uploads/favicon1.png', 'Mr Laboratorist', 'laboratorist@hms.com', 'Tampa, Florida, USA', '+9976 65443 76547', '', '', '111');

-- --------------------------------------------------------

--
-- Table structure for table `lab_category`
--

CREATE TABLE `lab_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `reference_value` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_category`
--

INSERT INTO `lab_category` (`id`, `category`, `description`, `reference_value`) VALUES
(35, 'Troponin-I', 'Pathological Test', ''),
(36, 'CBC (DIGITAL)', 'Pathological Test', ''),
(37, 'Eosinophil', 'Pathological Test', ''),
(38, 'Platelets', 'Pathological Test', ''),
(39, 'Malarial Parasites (MP)', 'Pathological Test', ''),
(40, 'BT/ CT', 'Pathological Test', ''),
(41, 'ASO Titre', 'Pathological Test', ''),
(42, 'CRP', 'Pathological Test', ''),
(43, 'R/A test', 'Pathological Test', ''),
(44, 'VDRL', 'Pathological Test', ''),
(45, 'TPHA', 'Pathological Test', ''),
(46, 'HBsAg (Screening)', 'Pathological Test', ''),
(47, 'HBsAg (Confirmatory)', 'Pathological Test', ''),
(48, 'CFT for Kala Zar', 'Pathological Test', ''),
(49, 'CFT for Filaria', 'Pathological Test', ''),
(50, 'Pregnancy Test', 'Pathological Test', ''),
(51, 'Blood Grouping', 'Pathological Test', ''),
(52, 'Widal Test', 'Pathological Test', '(70-110)mg/dl'),
(53, 'RBS', 'Pathological Test', ''),
(54, 'Blood Urea', 'Pathological Test', ''),
(55, 'S. Creatinine', 'Pathological Test', ''),
(56, 'S. cholesterol', 'Pathological Test', ''),
(57, 'Fasting Lipid Profile', 'Pathological Test', ''),
(58, 'S. Bilirubin', 'Pathological Test', ''),
(59, 'S. Alkaline Phosohare', 'Pathological Test', ''),
(61, 'S. Calcium', 'Pathological Test', ''),
(62, 'RBS with CUS', 'Pathological Test', ''),
(63, 'SGPT', 'Pathological Test', ''),
(64, 'SGOT', 'Pathological Test', ''),
(65, 'Urine for R/E', 'Pathological Test', ''),
(66, 'Urine C/S', 'Pathological Test', ''),
(67, 'Stool for R/E', 'Pathological Test', ''),
(68, 'Semen Analysis', 'Pathological Test', ''),
(69, 'S. Electrolyte', 'Pathological Test', ''),
(70, 'S. T3/ T4/ THS', 'Pathological Test', ''),
(71, 'MT', 'Pathological Test', ''),
(106, 'ESR', 'Patho Test', ''),
(107, 'FBS CUS', 'Pathological test', ''),
(108, 'Hb%', 'Pathological test', ''),
(114, '2HABF', 'Pathological test', ''),
(113, 'FBS', 'Pathological test', ''),
(115, 'S. TSH', 'Pathological test', ''),
(116, 'S. T3', 'Pathological test', ''),
(117, 'DC', 'Pathological test', ''),
(118, 'TC', 'Pathological test', ''),
(120, 'S. Uric acid', 'Pathological test', ''),
(126, 'eosinphil', 'Pathology Test', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `id` int(100) NOT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8 NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_address` varchar(500) NOT NULL,
  `patient_phone` varchar(100) NOT NULL,
  `img_url` varchar(500) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` varchar(100) CHARACTER SET utf8 NOT NULL,
  `box` varchar(100) CHARACTER SET utf8 NOT NULL,
  `s_price` varchar(100) CHARACTER SET utf8 NOT NULL,
  `quantity` int(100) NOT NULL,
  `generic` varchar(100) CHARACTER SET utf8 NOT NULL,
  `company` varchar(100) CHARACTER SET utf8 NOT NULL,
  `effects` varchar(100) CHARACTER SET utf8 NOT NULL,
  `e_date` varchar(70) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL,
  `z` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`) VALUES
(8, 'uploads/favicon4.png', 'Mrs Nurse', 'nurse@hms.com', 'Uttara, Dhaka', '+88 6878654335678', '', '', '', '109');

-- --------------------------------------------------------

--
-- Table structure for table `ot_payment`
--

CREATE TABLE `ot_payment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_c_s` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_a_s_1` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_a_s_2` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_anaes` varchar(100) CHARACTER SET utf8 NOT NULL,
  `n_o_o` varchar(100) CHARACTER SET utf8 NOT NULL,
  `c_s_f` varchar(100) CHARACTER SET utf8 NOT NULL,
  `a_s_f_1` varchar(100) CHARACTER SET utf8 NOT NULL,
  `a_s_f_2` varchar(11) CHARACTER SET utf8 NOT NULL,
  `anaes_f` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ot_charge` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cab_rent` varchar(100) CHARACTER SET utf8 NOT NULL,
  `seat_rent` varchar(100) CHARACTER SET utf8 NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 NOT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_fees` varchar(100) CHARACTER SET utf8 NOT NULL,
  `hospital_fees` varchar(100) CHARACTER SET utf8 NOT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 NOT NULL,
  `flat_discount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ot_payment`
--

INSERT INTO `ot_payment` (`id`, `patient`, `doctor_c_s`, `doctor_a_s_1`, `doctor_a_s_2`, `doctor_anaes`, `n_o_o`, `c_s_f`, `a_s_f_1`, `a_s_f_2`, `anaes_f`, `ot_charge`, `cab_rent`, `seat_rent`, `others`, `discount`, `date`, `amount`, `doctor_fees`, `hospital_fees`, `gross_total`, `flat_discount`, `amount_received`, `status`, `user`) VALUES
(85, '451', 'None', '123', 'None', '125', 'dbdbd', '', '1000', '0', '1000', '', '', '', '', '', '1506195494', '2000', '2000', '0', '2000', '', '1000', 'unpaid', '614');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(100) CHARACTER SET utf8 NOT NULL,
  `birthdate` varchar(100) CHARACTER SET utf8 NOT NULL,
  `age` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bloodgroup` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `how_added` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `img_url`, `name`, `email`, `doctor`, `address`, `phone`, `sex`, `birthdate`, `age`, `bloodgroup`, `ion_user_id`, `patient_id`, `add_date`, `how_added`) VALUES
(2476, 'uploads/download_(2).png', 'Mr Patient', 'patient@hms.com', '', 'Collegepara, Rajbari', '+0123456789', 'Male', '26-06-2018', '', 'A+', '679', '760238', '06/26/18', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient_deposit`
--

CREATE TABLE `patient_deposit` (
  `id` int(10) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `payment_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `deposited_amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount_received_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_material`
--

CREATE TABLE `patient_material` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_address` varchar(100) NOT NULL,
  `patient_phone` varchar(100) NOT NULL,
  `url` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_string` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `x_ray` varchar(100) CHARACTER SET utf8 NOT NULL,
  `flat_vat` varchar(100) CHARACTER SET utf8 NOT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `hospital_amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor_amount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category_amount` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_phone` varchar(100) NOT NULL,
  `patient_address` varchar(100) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `date_string` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paymentgateway`
--

CREATE TABLE `paymentgateway` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `merchant_key` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL,
  `status` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentgateway`
--

INSERT INTO `paymentgateway` (`id`, `name`, `merchant_key`, `salt`, `x`, `y`, `status`) VALUES
(1, 'Pay U Money', '0KWJATSQ', '8nBhndVz04', '', '', 'test'),
(2, 'Paypal', '0KWJATSQ', '8nBhndVz04', '', '', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `d_commission` int(100) NOT NULL,
  `h_commission` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_category`
--

INSERT INTO `payment_category` (`id`, `category`, `description`, `c_price`, `type`, `d_commission`, `h_commission`) VALUES
(16, 'E.C.G', 'Payments from E.C.G', '250', 'diagnostic', 30, 0),
(78, 'USG - Pregnancy Pro', 'USG - Pregnancy Pro', '400', 'diagnostic', 30, 0),
(19, 'Ward Fee', 'Deposits from ward', '400', 'others', 0, 0),
(20, 'Admission Fees', 'Patient Admission Fees', '100', 'others', 0, 0),
(23, 'Oxyzen', 'Income From Oxyzen', '0', 'others', 0, 0),
(24, 'Nebulizer', 'Income From Nebulizer', '60', 'others', 0, 0),
(25, 'Newspaper sell', 'Income From selling old newspaper', '0', 'others', 0, 0),
(33, 'Ambulance', 'Ambulance er vara', '0', 'others', 0, 0),
(34, 'HbAIc', 'gfdsegfdgd', '800', 'diagnostic', 30, 0),
(35, 'Troponin-I', 'Pathological Test', '1000', 'diagnostic', 30, 0),
(36, 'CBC (DIGITAL)', 'Pathological Test', '450', 'diagnostic', 30, 0),
(37, 'Eosinophil', 'Pathological Test', '100', 'diagnostic', 30, 0),
(38, 'Platelets', 'Pathological Test', '200', 'diagnostic', 30, 0),
(39, 'Malarial Parasites (MP)', 'Pathological Test', '100', 'diagnostic', 30, 0),
(40, 'BT/ CT', 'Pathological Test', '200', 'diagnostic', 30, 0),
(41, 'ASO Titre', 'Pathological Test', '250', 'diagnostic', 30, 0),
(42, 'CRP', 'Pathological Test', '400', 'diagnostic', 30, 0),
(43, 'R/A test', 'Pathological Test', '300', 'diagnostic', 30, 0),
(44, 'VDRL', 'Pathological Test', '200', 'diagnostic', 30, 0),
(45, 'TPHA', 'Pathological Test', '350', 'diagnostic', 30, 0),
(46, 'HBsAg (Screening)', 'Pathological Test', '300', 'diagnostic', 30, 0),
(47, 'HBsAg (Confirmatory)', 'Pathological Test', '600', 'diagnostic', 30, 0),
(48, 'CFT for Kala Zar', 'Pathological Test', '0', 'diagnostic', 0, 0),
(49, 'CFT for Filaria', 'Pathological Test', '0', 'diagnostic', 0, 0),
(50, 'Pregnancy Test', 'Pathological Test', '150', 'diagnostic', 30, 0),
(51, 'Blood Grouping', 'Pathological Test', '100', 'diagnostic', 30, 0),
(52, 'Widal Test', 'Pathological Test', '300', 'diagnostic', 30, 0),
(53, 'RBS', 'Pathological Test', '100', 'diagnostic', 30, 0),
(54, 'Blood Urea', 'Pathological Test', '250', 'diagnostic', 30, 0),
(55, 'S. Creatinine', 'Pathological Test', '250', 'diagnostic', 30, 0),
(56, 'S. cholesterol', 'Pathological Test', '250', 'diagnostic', 30, 0),
(57, 'Fasting Lipid Profile', 'Pathological Test', '850', 'diagnostic', 30, 0),
(58, 'S. Bilirubin', 'Pathological Test', '150', 'diagnostic', 30, 0),
(59, 'S. Alkaline Phosohare', 'Pathological Test', '300', 'diagnostic', 30, 0),
(60, 'S. Albumin', 'Pathological Test', '250', 'diagnostic', 30, 0),
(61, 'S. Calcium', 'Pathological Test', '350', 'diagnostic', 30, 0),
(62, 'RBS with CUS', 'Pathological Test', '160', 'diagnostic', 30, 0),
(63, 'SGPT', 'Pathological Test', '300', 'diagnostic', 30, 0),
(64, 'SGOT', 'Pathological Test', '300', 'diagnostic', 30, 0),
(65, 'Urine for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0),
(66, 'Urine C/S', 'Pathological Test', '350', 'diagnostic', 30, 0),
(67, 'Stool for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0),
(68, 'Semen Analysis', 'Pathological Test', '300', 'diagnostic', 30, 0),
(69, 'S. Electrolyte', 'Pathological Test', '800', 'diagnostic', 30, 0),
(70, 'S. T3/ T4/ THS', 'Pathological Test', '1000', 'diagnostic', 30, 0),
(71, 'MT', 'Pathological Test', '150', 'diagnostic', 30, 0),
(77, 'USG - Whole Abdomen ', 'USG - Whole Abdomen ', '400', 'diagnostic', 30, 0),
(73, 'ECHO Normal', 'ksdjkfsd', '700', 'diagnostic', 30, 0),
(76, 'x-ray chest', 'Normal', '200', 'diagnostic', 10, 0),
(79, 'USG - KUB', 'USG - KUB', '500', 'diagnostic', 20, 0),
(80, 'USG - Liver', 'USG - Liver', '400', 'diagnostic', 30, 0),
(81, 'USG - Breast (Left)', 'USG - Breast (Left)', '400', 'diagnostic', 30, 0),
(82, 'USG - Breast (Right)', 'USG - Breast (Right)', '400', 'diagnostic', 30, 0),
(83, 'X-RAY - Ba MealS+D  ', 'X-RAY - Ba MealS+D  ', '1400', 'diagnostic', 20, 0),
(84, 'X-RAY - Ba Swallo Oesopha', 'X-RAY - Ba Swallo Oesopha', '1000', 'diagnostic', 20, 0),
(85, 'X-RAY - KUB                         ', 'X-RAY - KUB ', '500', 'diagnostic', 20, 0),
(86, 'X-RAY - Leg Joint(B/V)(L/R)', 'X-RAY - Leg Joint(B/V)(L/R)', '500', 'diagnostic', 20, 0),
(87, 'X-RAY -Knee Joint(L/R)', 'X-RAY -Knee Joint(L/R)', '500', 'diagnostic', 20, 0),
(88, 'X-RAY - Finger(B/V) ', 'X-RAY - Finger(B/V) ', '350', 'diagnostic', 20, 0),
(89, 'X-RAY - Wrist(B/V)(L/R) ', 'X-RAY - Wrist(B/V)(L/R) ', '350', 'diagnostic', 20, 0),
(90, 'X-RAY - Hand(B/V)(L/R)                   ', 'X-RAY - Hand(B/V)(L/R)       ', '350', 'diagnostic', 20, 0),
(91, 'X-RAY - Elbow(B/V)(L/R)', 'X-RAY - Elbow(B/V)(L/R)', '350', 'diagnostic', 20, 0),
(92, 'X-RAY - Erm(B/V)(L/R )', 'X-RAY - Erm(B/V)(L/R )', '350', 'diagnostic', 20, 0),
(93, 'X-RAY - Shoulder Joint (B/V)', 'X-RAY - Shoulder Joint (B/V)', '500', 'diagnostic', 20, 0),
(94, 'X-RAY - Shoulder Joint (A/P)', 'X-RAY - Shoulder Joint (A/P)', '350', 'diagnostic', 20, 0),
(95, 'X-RAY - Foot (B/V)', 'X-RAY - Foot (B/V)', '350', 'diagnostic', 20, 0),
(96, 'X-RAY - Thigh(B/V)', 'X-RAY - Thigh(B/V)', '500', 'diagnostic', 20, 0),
(97, 'X-RAY - Ankle(B/V)', 'X-RAY - Ankle(B/V)', '350', 'diagnostic', 20, 0),
(98, 'X-RAY - Hip Joint(A/P)', 'X-RAY - Hip Joint(A/P)', '350', 'diagnostic', 20, 0),
(99, 'X-RAY - Pelvis(A/P)', 'X-RAY - Pelvis(A/P)', '500', 'diagnostic', 20, 0),
(100, 'X-RAY - L/S(B/V)(Lamber Spine)', 'X-RAY - L/S(B/V)(Lamber Spine)', '500', 'diagnostic', 20, 0),
(101, 'X-RAY - L/S(A/P)(LamberSpine)', 'X-RAY - L/S(A/P)(LamberSpine)', '500', 'diagnostic', 20, 0),
(102, 'X-RAY - D/L(A/P)(Thoracic)', 'X-RAY - D/L(A/P)(Thoracic)', '500', 'diagnostic', 20, 0),
(103, 'X-RAY - Mandable(B/V)', 'X-RAY - Mandable(B/V)', '500', 'diagnostic', 20, 0),
(104, 'X-RAY -C/S(AP)(Carvicai)', 'X-RAY -C/S(AP)(Carvicai)', '500', 'diagnostic', 20, 0),
(105, 'X-RAY - PNS (AP)', 'X-RAY - PNS (AP)', '350', 'diagnostic', 20, 0),
(106, 'ESR', 'Patho Test', '150', 'diagnostic', 30, 0),
(107, 'FBS CUS', 'Pathological test', '160', 'diagnostic', 30, 0),
(108, 'Hb%', 'Pathological test', '100', 'diagnostic', 30, 0),
(109, 'Physio-Therapy', 'Therapy', '1000', '', 0, 0),
(114, '2HABF', 'Pathological test', '100', 'diagnostic', 30, 0),
(113, 'FBS', 'Pathological test', '100', 'diagnostic', 30, 0),
(115, 'S. TSH', 'Pathological test', '400', 'diagnostic', 30, 0),
(116, 'S. T3', 'Pathological test', '400', 'diagnostic', 30, 0),
(117, 'DC', 'Pathological test', '200', 'diagnostic', 30, 0),
(118, 'TC', 'Pathological test', '200', 'diagnostic', 30, 0),
(119, 'X-Ray CXR (Digital)', 'X-Ray', '500', 'diagnostic', 20, 0),
(120, 'S. Uric acid', 'Pathological test', '250', 'diagnostic', 30, 0),
(122, 'U.S.G OF L/A ', 'U.S.G', '400', 'diagnostic', 30, 0),
(125, 'Rt knee joient b/v', 'X-Ray', '500', 'diagnostic', 20, 0),
(126, 'eosinphil', 'Pathology Test', '100', 'diagnostic', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
(7, 'uploads/favicon6.png', 'Mr. Pharmacist', 'pharmacist@hms.com', 'Pottersbar, Hertfordshire, UK', '+4479 5665 543367', '', '', '110');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense`
--

CREATE TABLE `pharmacy_expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense_category`
--

CREATE TABLE `pharmacy_expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment`
--

CREATE TABLE `pharmacy_payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `x_ray` varchar(100) NOT NULL,
  `flat_vat` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) NOT NULL,
  `gross_total` varchar(100) NOT NULL,
  `hospital_amount` varchar(100) NOT NULL,
  `doctor_amount` varchar(100) NOT NULL,
  `category_amount` varchar(1000) NOT NULL,
  `category_name` varchar(1000) NOT NULL,
  `amount_received` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy_payment`
--

INSERT INTO `pharmacy_payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `status`) VALUES
(1964, '', '0', '', '1528180801', '2', '0', '', '', '', '', '2', '', '', '', '2855*2*1*1', '0', 'unpaid'),
(1965, '', '0', '', '1528180814', '20', '0', '', '', '', '', '20', '', '', '', '2855*2*10*1', '0', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment_category`
--

CREATE TABLE `pharmacy_payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `c_price` varchar(100) NOT NULL,
  `d_commission` int(100) NOT NULL,
  `h_commission` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `symptom` varchar(100) CHARACTER SET utf8 NOT NULL,
  `advice` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `state` varchar(100) CHARACTER SET utf8 NOT NULL,
  `dd` varchar(100) CHARACTER SET utf8 NOT NULL,
  `medicine` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `validity` varchar(100) CHARACTER SET utf8 NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
(7, '', 'Mr Receptionist', 'receptionist@hms.com', 'Collegepara, Rajbari', '+0123456789', '', '614');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(100) NOT NULL,
  `report_type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `system_vendor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `currency` varchar(100) CHARACTER SET utf8 NOT NULL,
  `language` varchar(100) CHARACTER SET utf8 NOT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL,
  `login_title` varchar(100) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `invoice_logo` varchar(500) NOT NULL,
  `codec_username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `codec_purchase_code` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `language`, `discount`, `vat`, `login_title`, `logo`, `invoice_logo`, `codec_username`, `codec_purchase_code`) VALUES
(1, 'Hospital Management System', 'Hospital', 'Boropool, Rajbari-7700', '+0123456789', 'admin@demo.com', '#', '$', 'english', 'flat', 'percentage', 'Login Title', 'uploads/logo-nonetext.png', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message` varchar(100) CHARACTER SET utf8 NOT NULL,
  `recipient` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(100) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `api_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `username`, `password`, `api_id`, `user`) VALUES
(1, 'rizviplabon', '', '3570596', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '$2y$08$Kxx3I5sZnuDuNUSiIqppdOWmb7CahV/3jdriBFhrM/.RRosZflVdW', '', 'admin@hms.com', '', 'eX0.Bq6nP57EuXX4hJkPHO973e7a4c25f1849d3a', 1511432365, 'zCeJpcj78CKqJ4sVxVbxcO', 1268889823, 1550566382, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(109, '113.11.74.192', 'Mrs Nurse', '$2y$08$39.Xmk5YWAEUIGvMeX6IC.7jnkNO46y9E9ChkRK29xMbG0GIg9aku', NULL, 'nurse@hms.com', NULL, NULL, NULL, NULL, 1435082243, 1530794667, 1, NULL, NULL, NULL, NULL),
(110, '113.11.74.192', 'Mr. Pharmacist', '$2y$08$BLfsIyBRkxP7dB3FyiDbsO0t6.bRsDMTN6mMzgTMhU8hxmjXvTIsS', NULL, 'pharmacist@hms.com', NULL, NULL, NULL, 'mbeMop6vTuscFYmD2M4Iqu', 1435082359, 1528106850, 1, NULL, NULL, NULL, NULL),
(111, '113.11.74.192', 'Mr Laboratorist', '$2y$08$P/ZooIfaGGwilRRkihgKt.h7UpW8TNdO4bO0xN5pbkg.zpHaMECN6', NULL, 'laboratorist@hms.com', NULL, NULL, NULL, NULL, 1435082438, 1532345333, 1, NULL, NULL, NULL, NULL),
(112, '113.11.74.192', 'Mr. Accountant', '$2y$08$boktQWX.EbuUj7OkCh7mTe80HkKhARKIIKq6NLBFDq8CnCUrSTlam', NULL, 'accountant@hms.com', NULL, NULL, NULL, NULL, 1435082637, 1530794651, 1, NULL, NULL, NULL, NULL),
(610, '103.231.162.58', 'sdhsjgj', '$2y$08$JBdbYvWr0BaswifulhauLOBizxRMnx1XZeuaUNJ6utt4AqH.7c/je', NULL, 'jgjjhjgjh', NULL, NULL, NULL, NULL, 1505800387, NULL, 1, NULL, NULL, NULL, NULL),
(611, '103.231.162.58', 'vsgdvfds', '$2y$08$N3qoioTmznb7./7dhrfXp.ZAp7H1Vu2rU.EWdFUx5z7ECcm.la7Ee', NULL, 'hfhgfhfhgf', NULL, NULL, NULL, NULL, 1505800659, NULL, 1, NULL, NULL, NULL, NULL),
(612, '103.231.162.58', 'vsgdvfds1', '$2y$08$rjDLi21IP2Dncaz/FgXkJ.DYoxoYigHOjgkv4MgQby.2UQ5G61qVm', NULL, 'hfhgfhfhgfefeer', NULL, NULL, NULL, NULL, 1505800739, NULL, 1, NULL, NULL, NULL, NULL),
(614, '103.231.162.58', 'Mr Receptionist', '$2y$08$wQYyg.si3cE6O3TG8h7TmO1HWeT7YN0bfdSZMVgyGBO0gZDuZT1lm', NULL, 'receptionist@hms.com', NULL, NULL, NULL, NULL, 1505800835, 1506230902, 1, NULL, NULL, NULL, NULL),
(652, '103.231.162.58', 'Mr Doctor', '$2y$08$Q9gNbCo6S1ncG0yG/ElV4OoJHEPk6suhzt/1IC59BNmwxIvAYtEA.', NULL, 'doctor@hms.com', NULL, NULL, NULL, NULL, 1510865807, 1550566364, 1, NULL, NULL, NULL, NULL),
(679, '103.231.160.119', 'Mr Patient', '$2y$08$9mgZCr2u743h2w4NWBH/iOBj0yzQHIZ9Ac2J7HrSgW5ik0tStk/A2', NULL, 'patient@hms.com', NULL, NULL, NULL, NULL, 1530016310, 1530461152, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(111, 109, 6),
(112, 110, 7),
(113, 111, 8),
(114, 112, 3),
(613, 611, 10),
(614, 612, 10),
(616, 614, 10),
(654, 652, 4),
(681, 679, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankb`
--
ALTER TABLE `bankb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_category`
--
ALTER TABLE `bed_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratorist`
--
ALTER TABLE `laboratorist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_category`
--
ALTER TABLE `lab_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ot_payment`
--
ALTER TABLE `ot_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_material`
--
ALTER TABLE `patient_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `bankb`
--
ALTER TABLE `bankb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bed_category`
--
ALTER TABLE `bed_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1889;

--
-- AUTO_INCREMENT for table `laboratorist`
--
ALTER TABLE `laboratorist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lab_category`
--
ALTER TABLE `lab_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2856;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ot_payment`
--
ALTER TABLE `ot_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2483;

--
-- AUTO_INCREMENT for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1486;

--
-- AUTO_INCREMENT for table `patient_material`
--
ALTER TABLE `patient_material`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1876;

--
-- AUTO_INCREMENT for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1966;

--
-- AUTO_INCREMENT for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=680;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
