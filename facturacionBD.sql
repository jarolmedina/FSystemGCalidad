-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Feb 19, 2020 at 09:00 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `facturacion`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `clientes`
-- 

CREATE TABLE `clientes` (
  `idCliente` varchar(10) NOT NULL,
  `idTipo` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `direccion` varchar(50) default NULL,
  `telefono` varchar(20) default NULL,
  `idCiudad` int(11) default NULL,
  `fechaNacimiento` date default NULL,
  `fechaIngreso` date default NULL,
  PRIMARY KEY  (`idCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `clientes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `detallefactura`
-- 

CREATE TABLE `detallefactura` (
  `idFactura` int(11) NOT NULL,
  `idLinea` int(11) NOT NULL,
  `idProducto` varchar(12) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY  (`idFactura`,`idLinea`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `detallefactura`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `detallefacturatmp`
-- 

CREATE TABLE `detallefacturatmp` (
  `idProducto` varchar(12) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY  (`idProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `detallefacturatmp`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `factura`
-- 

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `idCliente` varchar(10) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`idFactura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `factura`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `productos`
-- 

CREATE TABLE `productos` (
  `idProducto` varchar(12) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `idIVA` int(11) NOT NULL,
  `notas` text,
  `foto` varchar(60) default NULL,
  PRIMARY KEY  (`idProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `productos`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `usuarios`
-- 

CREATE TABLE `usuarios` (
  `idUsuario` varchar(10) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `foto` varchar(60) default NULL,
  PRIMARY KEY  (`idUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `usuarios`
-- 

