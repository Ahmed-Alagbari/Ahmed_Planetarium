package pom;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class RegisterPage {
    private WebDriver driver;

    @FindBy(linkText = "login")
    private WebElement loginLink;

    @FindBy(id="usernameInput")
    private WebElement usernameInput;

    @FindBy(id="passwordInput")
    private WebElement passwordInput;

    @FindBy(xpath="//input[@type='submit']")
    private WebElement createButton;

    public RegisterPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver,this);
    }

    public void clickCreateButton(){
        createButton.click();
    }

    public void clickLoginLink(){
        loginLink.click();
    }
}
