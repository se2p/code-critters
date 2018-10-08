package de.grubermi.code_critters.web.controller;

import de.grubermi.code_critters.application.exception.NotFoundException;
import de.grubermi.code_critters.application.service.LevelService;
import de.grubermi.code_critters.web.dto.LevelDTO;
import de.grubermi.code_critters.web.dto.ResultDTO;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

/**
 * Schnittstelle zum Levelmanagement
 */
@CrossOrigin
@RestController
@RequestMapping(value = "/level")
public class LevelController {

    private final Logger logger = LogManager.getLogger(LevelController.class);


    private final LevelService levelService;

    @Autowired
    public LevelController(LevelService levelService) {
        this.levelService = levelService;
    }

    /**
     * Returns the CUT
     */
    @GetMapping(path = "/CUT")
    public String getCUT(@RequestParam String level, HttpServletResponse response) {
        /*try {
            // get your file as InputStream
            InputStream is = ClassLoader.getSystemClassLoader().getResourceAsStream("data/testlevel.lvl");
            // copy it to response's OutputStream
            IOUtils.copy(is, response.getOutputStream());
            response.flushBuffer();
        } catch (IOException ex) {
            logger.info("Error writing file to output stream. Filename was '{}'", level, ex);
            throw new RuntimeException("IOError writing file to output stream");
        }*/
        return levelService.getCUT(level);
    }

    /**
     * Returns the init code
     */
    @GetMapping(path = "/init")
    public String getInit(@RequestParam String level, HttpServletResponse response) {
        /*try {
            // get your file as InputStream
            InputStream is = ClassLoader.getSystemClassLoader().getResourceAsStream("data/testlevel.lvl");
            // copy it to response's OutputStream
            IOUtils.copy(is, response.getOutputStream());
            response.flushBuffer();
        } catch (IOException ex) {
            logger.info("Error writing file to output stream. Filename was '{}'", level, ex);
            throw new RuntimeException("IOError writing file to output stream");
        }*/
        return levelService.getInit(level);
    }

    /**
     * Returns the CUT
     */
    @GetMapping(path = "/test")
    public HashMap getTest(@RequestParam String level, HttpServletResponse response) {
        String toolbox = "<category name=\"Attributes\" colour=\"330\">\n" +
                "        <block type=\"properties\"  x=\"663\" y=\"138\">\n" +
                "        </block>\n" +
                "    </category>" +
                "  <category name=\"Colour\" colour=\"20\">\n" +
                "       <label text=\"Body Colours\"></label>\n" +
                "        <block type=\"colour_picker\">\n" +
                "            <field name=\"COLOUR\">#ff0000</field>\n" +
                "        </block>\n" +
                "        <label text=\"Hair Colours\"></label>\n" +
                "        <block type=\"custom_colour_picker\">\n" +
                "            <field name=\"COLOUR\">#f0e527</field>\n" +
                "        </block>" +
                "    </category>" +
                "<category name=\"Assert\" colour=\"120\">\n" +
                "        <block type=\"assert\"  x=\"663\" y=\"138\">\n" +
                "        </block>\n" +
                "    </category>\n" +
                " <category name=\"Math\" colour=\"230\">\n" +
                "        <block type=\"math_number\" id=\"Eem[Vxht-;;+ILj@@lxp\" x=\"263\" y=\"113\">\n" +
                "            <field name=\"NUM\">1</field>\n" +
                "        </block>\n" +
                "        <block type=\"math_number_property\" id=\"F5fxuP.thK*x0d;HVreV\" x=\"287\" y=\"113\">\n" +
                "            <mutation divisor_input=\"false\"></mutation>\n" +
                "            <field name=\"PROPERTY\">EVEN</field>\n" +
                "            <value name=\"NUMBER_TO_CHECK\">\n" +
                "            </value>\n" +
                "        </block>\n" +
                "        <block type=\"math_arithmetic\" id=\"M]Qfng[KcxW;Qdz%;CdX\" x=\"287\" y=\"163\">\n" +
                "            <field name=\"OP\">ADD</field>\n" +
                "            <value name=\"A\">\n" +
                "            </value>\n" +
                "            <value name=\"B\">\n" +
                "            </value>\n" +
                "        </block>\n" +
                "    </category>\n" +
                "<category name=\"Variables\" colour=\"270\">\n" +
                "        <block type=\"variable\"  x=\"663\" y=\"138\">\n" +
                "        </block>\n" +
                "    </category>" ;
       /* try {
            // get your file as InputStream
            InputStream is = ClassLoader.getSystemClassLoader().getResourceAsStream("data/testlevel.lvl");

            code = IOUtils.toString(is, "UTF-8");
        } catch (IOException ex) {
            logger.info("Error writing file to output stream. Filename was '{}'", level, ex);
            throw new RuntimeException("IOError writing file to output stream");
        }*/

        HashMap map = new HashMap<String, Object>();
        map.put("code", levelService.getTest(level));
        map.put("toolbox", toolbox);
        return map;
    }

    /**
     * Returns the level data
     */
    @GetMapping(path = "/get")
    public HashMap getLevelData(@RequestParam String level, HttpServletResponse response) {
        /*String[][] level = {
                {"wood", "wood", "wood", "grass", "grass", "grass", "grass", "grass", "wood", "wood", "wood", "wood", "wood", "wood", "wood", "wood"},
                {"wood", "grass", "grass", "grass", "wood", "wood", "wood", "grass", "wood", "wood", "wood", "grass", "wood", "wood", "wood", "wood"},
                {"grass", "grass", "grass", "grass", "wood", "wood", "wood", "grass", "wood", "wood", "wood", "wood", "wood", "wood", "wood", "wood"},
                {"dirt", "grass", "grass", "grass", "wood", "wood", "wood", "grass", "wood", "wood", "wood", "wood", "wood", "wood", "wood", "wood"},
                {"dirt", "dirt", "grass", "grass", "grass", "grass", "grass", "grass", "water", "water", "ice", "ice", "ice", "ice", "ice", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "grass", "water", "water", "water", "ice", "ice", "ice", "ice", "ice", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "grass", "water", "water", "water", "water", "water", "water", "water", "water", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "water", "water", "water", "water", "water", "water", "water", "water", "water", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "water", "water", "water", "water", "grass", "grass", "grass", "water", "water", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "water", "water", "water", "water", "grass", "grass", "grass", "water", "water", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "water", "water", "water", "water", "grass", "grass", "grass", "water", "water", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "water", "water", "water", "water", "grass", "grass", "grass", "water", "water", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "water", "water", "water", "water", "water", "water", "water", "water", "water", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "water", "water", "water", "water", "water", "water", "water", "water", "water", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "water", "water", "water", "water", "water", "water", "water", "water", "water", "grass"},
                {"dirt", "dirt", "dirt", "dirt", "grass", "grass", "water", "water", "grass", "grass", "grass", "grass", "grass", "grass", "grass", "grass"}
        };

        HashMap tower = new HashMap<String, Integer>();
        tower.put("x", 3);
        tower.put("y", 3);

        HashMap spawn = new HashMap<String, Integer>();
        spawn.put("x", 5);
        spawn.put("y", 5);

        HashMap map = new HashMap<String, Object>();
        map.put("level", level);
        map.put("tower", tower);
        map.put("spawn", spawn);
        map.put("width", 16);
        map.put("height", 16);*/
        LevelDTO dto;
        dto = levelService.getLevel(level);


        HashMap map = new HashMap<String, Object>();
        map.put("level", dto.getLevel());
        map.put("tower", dto.getTower());
        map.put("spawn", dto.getSpawn());
        map.put("width", 16);
        map.put("height", 16);
        map.put("numberOfCritters", dto.getNumberOfCritters());
        map.put("numberOfHumans", dto.getNumberOfHumans());
        return map;

    }

    @GetMapping(path = "/mutants")
    public List getMutants(@RequestParam String level) {
        return levelService.getMutants(level);
    }


}
