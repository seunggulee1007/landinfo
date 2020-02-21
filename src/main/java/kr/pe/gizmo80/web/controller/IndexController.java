package kr.pe.gizmo80.web.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import kr.pe.gizmo80.web.model.ApiResponseMessage;

@RestController
@Api(value = "IndexController")
public class IndexController {

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    @ApiOperation(value = "hello, World API", notes = "hello, World를 반환하는 API, Ajax 통신 확인용.")
    public ResponseEntity<ApiResponseMessage> helloWorld() {
        ApiResponseMessage message = new ApiResponseMessage("Success", "Hello, World", "", "");

        return new ResponseEntity<ApiResponseMessage>(message, HttpStatus.OK);
    }
}
