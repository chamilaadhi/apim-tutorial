package org.wso2.carbon.apimgt.tutorial.telecombackends;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = { "*" })
@RequestMapping(value = "/tenet/v1", produces = { MediaType.APPLICATION_XML_VALUE })
public class TenetTelecomController {

    @GetMapping({ "/metrics" })
    public String getMetrics() {
        return "<summary>\n" +
                "\t<breakdown class=\"1st\">59</breakdown>\n" +
                "\t<breakdown class=\"2nd\">91</breakdown>\n" +
                "\t<breakdown class=\"3rd\">107</breakdown>\n" +
                "\t<total>257</total>\n" +
                "</summary>";
    }
}