-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 13 Des 2014 pada 03.22
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `manageservice`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `address_person`
--

CREATE TABLE IF NOT EXISTS `address_person` (
  `id_a` int(11) NOT NULL AUTO_INCREMENT,
  `street` text NOT NULL,
  `no` int(11) NOT NULL,
  `id_person` int(11) NOT NULL,
  PRIMARY KEY (`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `address_worker`
--

CREATE TABLE IF NOT EXISTS `address_worker` (
  `id_a` int(11) NOT NULL AUTO_INCREMENT,
  `street` text NOT NULL,
  `id_wk` int(11) NOT NULL,
  PRIMARY KEY (`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `citizenship_person`
--

CREATE TABLE IF NOT EXISTS `citizenship_person` (
  `id_citizenship` int(11) NOT NULL AUTO_INCREMENT,
  `id_passport` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_person` int(11) NOT NULL,
  PRIMARY KEY (`id_citizenship`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `citizenship_worker`
--

CREATE TABLE IF NOT EXISTS `citizenship_worker` (
  `id_citizenship` int(11) NOT NULL AUTO_INCREMENT,
  `id_passport` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_wk` int(11) NOT NULL,
  PRIMARY KEY (`id_citizenship`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_mechanism_party`
--

CREATE TABLE IF NOT EXISTS `contact_mechanism_party` (
  `id_cmp` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `idcontact` text NOT NULL,
  PRIMARY KEY (`id_cmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_mechanism_person`
--

CREATE TABLE IF NOT EXISTS `contact_mechanism_person` (
  `id_cmper` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `idcontact` text NOT NULL,
  PRIMARY KEY (`id_cmper`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_mechanism_worker`
--

CREATE TABLE IF NOT EXISTS `contact_mechanism_worker` (
  `id_cmw` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `idcontact` text NOT NULL,
  PRIMARY KEY (`id_cmw`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `country_person`
--

CREATE TABLE IF NOT EXISTS `country_person` (
  `id_country` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `country_worker`
--

CREATE TABLE IF NOT EXISTS `country_worker` (
  `id_country` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `good`
--

CREATE TABLE IF NOT EXISTS `good` (
  `id_g` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  PRIMARY KEY (`id_g`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory_item`
--

CREATE TABLE IF NOT EXISTS `inventory_item` (
  `id_ii` int(11) NOT NULL AUTO_INCREMENT,
  `total` int(11) NOT NULL,
  `description` text NOT NULL,
  `id_wh` int(11) NOT NULL,
  `id_iist` int(11) NOT NULL,
  PRIMARY KEY (`id_ii`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory_item_standart_type`
--

CREATE TABLE IF NOT EXISTS `inventory_item_standart_type` (
  `id_iist` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`id_iist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id_l` int(11) NOT NULL AUTO_INCREMENT,
  `id_wh` int(11) NOT NULL,
  `id_lt` int(11) NOT NULL,
  PRIMARY KEY (`id_l`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `location_type`
--

CREATE TABLE IF NOT EXISTS `location_type` (
  `id_lt` int(11) NOT NULL AUTO_INCREMENT,
  `description` int(11) NOT NULL,
  PRIMARY KEY (`id_lt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mechanic_skill_standart`
--

CREATE TABLE IF NOT EXISTS `mechanic_skill_standart` (
  `id_mss` int(11) NOT NULL AUTO_INCREMENT,
  `estimated_duration` time NOT NULL,
  `estimated_num_people` int(11) NOT NULL,
  `id_st` int(11) NOT NULL,
  `id_wms` int(11) NOT NULL,
  PRIMARY KEY (`id_mss`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `non_serialized_inventory_item`
--

CREATE TABLE IF NOT EXISTS `non_serialized_inventory_item` (
  `id_ii` int(11) NOT NULL,
  `quality_on_hand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party`
--

CREATE TABLE IF NOT EXISTS `party` (
  `id_party` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id_party`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_contact_mechanism_party`
--

CREATE TABLE IF NOT EXISTS `party_contact_mechanism_party` (
  `id_pcmp` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `id_party` int(11) NOT NULL,
  `id_cmp` int(11) NOT NULL,
  PRIMARY KEY (`id_pcmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_contact_mechanism_person`
--

CREATE TABLE IF NOT EXISTS `party_contact_mechanism_person` (
  `id_pcmpe` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `id_person` int(11) NOT NULL,
  `id_comper` int(11) NOT NULL,
  PRIMARY KEY (`id_pcmpe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_contact_mechanism_worker`
--

CREATE TABLE IF NOT EXISTS `party_contact_mechanism_worker` (
  `id_pcmw` int(11) NOT NULL AUTO_INCREMENT,
  `comment` int(11) NOT NULL,
  `id_wk` int(11) NOT NULL,
  `id_cmw` int(11) NOT NULL,
  PRIMARY KEY (`id_pcmw`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `passport_person`
--

CREATE TABLE IF NOT EXISTS `passport_person` (
  `id_passport` int(11) NOT NULL AUTO_INCREMENT,
  `expiration_date` date NOT NULL,
  `issue_date` date NOT NULL,
  `passport_num` int(11) NOT NULL,
  `id_citizenship` int(11) NOT NULL,
  PRIMARY KEY (`id_passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `passport_worker`
--

CREATE TABLE IF NOT EXISTS `passport_worker` (
  `id_passport` int(11) NOT NULL AUTO_INCREMENT,
  `expiration_date` date NOT NULL,
  `issue_date` date NOT NULL,
  `passport_num` int(11) NOT NULL,
  `id_citizenship` int(11) NOT NULL,
  PRIMARY KEY (`id_passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id_person` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `birthday` date NOT NULL,
  `description` text NOT NULL,
  `id_party` int(11) NOT NULL,
  PRIMARY KEY (`id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id_we` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `serialized_inventory_item`
--

CREATE TABLE IF NOT EXISTS `serialized_inventory_item` (
  `id_ii` int(11) NOT NULL,
  `serial_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id_s` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`id_s`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `skill_type`
--

CREATE TABLE IF NOT EXISTS `skill_type` (
  `id_st` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `id_wk` int(11) NOT NULL,
  PRIMARY KEY (`id_st`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `standart_work_good_mechanic`
--

CREATE TABLE IF NOT EXISTS `standart_work_good_mechanic` (
  `id_swgm` int(11) NOT NULL AUTO_INCREMENT,
  `estimated_duration` time NOT NULL,
  `id_g` int(11) NOT NULL,
  PRIMARY KEY (`id_swgm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `id_we` int(11) NOT NULL,
  `description` text NOT NULL,
  KEY `id_we` (`id_we`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tools`
--

CREATE TABLE IF NOT EXISTS `tools` (
  `id_t` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`id_t`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `used_tools_standart`
--

CREATE TABLE IF NOT EXISTS `used_tools_standart` (
  `id_uts` int(11) NOT NULL AUTO_INCREMENT,
  `estimated_duration` time NOT NULL,
  `estimated_num_people` int(11) NOT NULL,
  `id_t` int(11) NOT NULL,
  PRIMARY KEY (`id_uts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `warehouse`
--

CREATE TABLE IF NOT EXISTS `warehouse` (
  `id_wh` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`id_wh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `worker`
--

CREATE TABLE IF NOT EXISTS `worker` (
  `id_wk` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `birthday` date NOT NULL,
  `total_experience_work` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_wk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `worker_list`
--

CREATE TABLE IF NOT EXISTS `worker_list` (
  `id_wl` int(11) NOT NULL AUTO_INCREMENT,
  `id_wk` int(11) NOT NULL,
  `id_party` int(11) NOT NULL,
  PRIMARY KEY (`id_wl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `work_effort`
--

CREATE TABLE IF NOT EXISTS `work_effort` (
  `id_we` int(11) NOT NULL AUTO_INCREMENT,
  `id_wms` int(11) NOT NULL,
  PRIMARY KEY (`id_we`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `work_mechanic_standart`
--

CREATE TABLE IF NOT EXISTS `work_mechanic_standart` (
  `id_wms` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `standart_work_hour` time NOT NULL,
  `id_s` int(11) NOT NULL,
  `id_ii` int(11) NOT NULL,
  PRIMARY KEY (`id_wms`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`id_we`) REFERENCES `work_effort` (`id_we`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
