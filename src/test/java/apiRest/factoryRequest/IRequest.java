package apiRest.factoryRequest;

import io.restassured.response.Response;

public interface IRequest {
    Response send(RequestInformation request);
}
