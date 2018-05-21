package net.ccmcomputing.webhook;
import static spark.Spark.*;

public class LoggerWebhook {
    public static void main(String[] args) {
        get("/hello", (req, res) -> "Hello World");
        post("/dump", (req, res) -> {

	});
    }
}
