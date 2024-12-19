import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class App {
    public static void main(String[] args) {
        WebDriver driver = null;
        try {
            driver = new ChromeDriver();

            driver.get("http://localhost:8080/");

            WebElement registerLink = driver.findElement(By.linkText("Create an Account"));

            registerLink.click();

            System.out.println(driver.getTitle());


        } finally {

            if (driver != null) {
                driver.quit();
            }
        }
    }
}
