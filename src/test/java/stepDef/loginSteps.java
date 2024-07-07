package stepDef;

import base.config;
import com.github.javafaker.Faker;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.testng.Assert;


public class loginSteps extends config {

    Faker faker = new Faker();
    @Given("user in TalentTEK Homepage")
    public void userInTalentTEKHomepage() {
        //SELENIUM CODES
    }

    @And("user enter valid email address")
    public void userEnterValidEmailAddress() {
        driver.findElement(By.name("email")).sendKeys(STUDENT_EMAIL);
    }

    @And("user enter valid password")
    public void userEnterValidPassword() {
        driver.findElement(By.name("password")).sendKeys(STUDENT_PASSWORD);
    }

    @When("user clicks on login button")
    public void userClicksOnLoginButton() {
        driver.findElement(By.xpath("//input[@class='my-login']")).click();
    }

    @Then("the user should be able to login successfully")
    public void theUserShouldBeAbleToLoginSuccessfully() {
        String expText = "Student Information";
        String developerCodeExp = driver.findElement(By.xpath("//h2[@class='d-inline info']")).getText();
        Assert.assertEquals(expText, developerCodeExp);
    }

    @And("user enter invalid email address")
    public void userEnterInvalidEmailAddress() {
        driver.findElement(By.name("email")).sendKeys("wrongeamil@gmail.com");
    }

    @And("user enter invalid password")
    public void userEnterInvalidPassword() {
        driver.findElement(By.name("password")).sendKeys("wrongpassword");
    }

    @Then("user should see {string} error message.")
    public void userShouldSeeErrorMessage(String arg0)  {
        driver.findElement(By.id("error-msg")).getText();

    }

    @And("user submit email address and password field empty")
    public void userSubmitEmailAddressAndPasswordFieldEmpty() {
        driver.findElement(By.name("email")).sendKeys("");
        driver.findElement(By.name("password")).sendKeys("");

    }

    @And("User enter the email with a mix of uppercase and lowercase characters")
    public void userEnterTheEmailWithAMixOfUppercaseAndLowercaseCharacters() {
        driver.findElement(By.name("email")).sendKeys("CHROMICumme+1@GMAIL.COM");
        driver.findElement(By.name("password")).sendKeys(STUDENT_PASSWORD);

    }

    @And("User enter the password with a mix of uppercase and lowercase characters")
    public void userEnterThePasswordWithAMixOfUppercaseAndLowercaseCharacters() {
        driver.findElement(By.name("email")).sendKeys(STUDENT_EMAIL);
        driver.findElement(By.name("password")).sendKeys("TEstPASSWORD99");
    }

    @Then("user should find {string} error message.")
    public void userShouldFindErrorMessage(String arg0)  {
        driver.findElement(By.xpath("//*[@id='error-msg']")).getText();

    }

    @Then("User should see {string} message.")
    public void userShouldSeeMessage(String arg0) {
        driver.switchTo().alert().getText();
    }


    @Then("user should see Invalid email address error message.")
    public void userShouldSeeInvalidEmailAddressErrorMessage() {
        driver.findElement(By.xpath("//*[@id='error-msg']")).getText();

    }
}

