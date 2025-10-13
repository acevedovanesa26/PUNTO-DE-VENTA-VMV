/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package controlador;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author motat
 */
public class ReportesTest {
    
    public ReportesTest() {
    }
    
    @BeforeAll
    public static void setUpClass() {
    }
    
    @AfterAll
    public static void tearDownClass() {
    }
    
    @BeforeEach
    public void setUp() {
    }
    
    @AfterEach
    public void tearDown() {
    }

    /**
     * Test of ReportesClientes method, of class Reportes.
     */
    @Test
    public void testReportesClientes() {
        System.out.println("ReportesClientes");
        Reportes instance = new Reportes();
        instance.ReportesClientes();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of ReportesProductos method, of class Reportes.
     */
    @Test
    public void testReportesProductos() {
        System.out.println("ReportesProductos");
        Reportes instance = new Reportes();
        instance.ReportesProductos();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of ReportesCategorias method, of class Reportes.
     */
    @Test
    public void testReportesCategorias() {
        System.out.println("ReportesCategorias");
        Reportes instance = new Reportes();
        instance.ReportesCategorias();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of ReportesVentas method, of class Reportes.
     */
    @Test
    public void testReportesVentas() {
        System.out.println("ReportesVentas");
        Reportes instance = new Reportes();
        instance.ReportesVentas();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
