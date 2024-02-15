package stepDef;

import base.config;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import java.time.Duration;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class signupSteps extends config {

    @And("user click on Create New Account button")
    public void userClickOnCreateNewAccountButton() {
        driver.findElement(By.xpath("//a[@class='new-account']")).click();
    }

    @And("user enter valid first name")
    public void userEnterValidFirstName() {
        driver.findElement(By.name("firstName")).sendKeys("LALA");
    }

    @And("user enter valid last name")
    public void userEnterValidLastName() {
        driver.findElement(By.name("lastName")).sendKeys("KHAN");
    }

    @And("user enter valid confirm password")
    public void userEnterValidConfirmPassword() {
        driver.findElement(By.name("confirmPassword")).sendKeys(STUDENT_PASSWORD);
    }

    @And("user enter their month as {string} under dob")
    public void userEnterTheirMonthAsUnderDob(String enterMonth) {
        Select m = new Select(driver.findElement(By.name("month")));
        m.selectByVisibleText(enterMonth);
    }

    @And("user enter their day as {string} under dob")
    public void userEnterTheirDayAsUnderDob(String enterDay) {
        Select d = new Select(driver.findElement(By.name("day")));
        d.selectByVisibleText(enterDay);
    }

    @And("user enter their year as {string} under dob")
    public void userEnterTheirYearAsUnderDob(String enterYear) {
        Select y = new Select(driver.findElement(By.name("year")));
        y.selectByVisibleText(enterYear);
    }

    @And("user select gender")
    public void userSelectGender() {
        driver.findElement(By.id("female")).click();
    }

    @And("user click the term and condition policy")
    public void userClickTheTermAndConditionPolicy() {
        driver.findElement(By.id("defaultCheck1")).click();
    }

    @And("user click on Create my Account button")
    public void userClickOnCreateMyAccountButton() {
        driver.findElement(By.cssSelector("button[type='submit']")).click();

    }

    @And("user enter alphanumeric first name")
    public void userEnterAlphanumericFirstName() {
        driver.findElement(By.name("firstName")).sendKeys("LALA123");
    }

    @Then("the user should receive {string} error.")
    public void theUserShouldReceiveError(String arg0) {
        driver.findElement(By.id("error-msg"));
    }

    @And("user enter alphanumeric last name")
    public void userEnterAlphanumericLastName() {
        driver.findElement(By.name("lastName")).sendKeys("KHAN123");
    }

    @And("user enter numeric first name")
    public void userEnterNumericFirstName() {
        driver.findElement(By.name("firstName")).sendKeys("1234567");
    }

    @And("user enter numeric last name")
    public void userEnterNumericLastName() {
        driver.findElement(By.name("lastName")).sendKeys("1234567");
    }

    @And("user leaves first name field empty")
    public void userLeavesFirstNameFieldEmpty() {
        driver.findElement(By.name("firstName")).sendKeys("");
    }

    @And("user leaves last name field empty")
    public void userLeavesLastNameFieldEmpty() {
        driver.findElement(By.name("lastName")).sendKeys("");
    }

    @And("user enter any special characters for last name")
    public void userEnterAnySpecialCharactersForLastName() {
        driver.findElement(By.name("lastName")).sendKeys("@#$%%");
    }

    @And("user enter any special characters for first name")
    public void userEnterAnySpecialCharactersForFirstName() {
        driver.findElement(By.name("firstName")).sendKeys("!@#$%^&*");
    }

    @And("user enter {int} alphabetical characters for first name")
    public void userEnterAlphabeticalCharactersForFirstName(int arg0) {
        driver.findElement(By.name("firstName")).sendKeys("lal");
    }

    @And("user enter {int} alphabetical characters for last name")
    public void userEnterAlphabeticalCharactersForLastName(int arg0) {
        driver.findElement(By.name("lastName")).sendKeys("kha");
    }

    @And("user enter two alphabetical characters for first name")
    public void userEnterTwoAlphabeticalCharactersForFirstName() {
        driver.findElement(By.name("firstName")).sendKeys("la");
    }

    @And("user enter more then twelve alphabetical characters for first name")
    public void userEnterMoreThenTwelveAlphabeticalCharactersForFirstName() {
        driver.findElement(By.name("firstName")).sendKeys("lalalalalalal");
    }

    @And("user enter more then twelve alphabetical characters for last name")
    public void userEnterMoreThenTwelveAlphabeticalCharactersForLastName() {
        driver.findElement(By.name("lastName")).sendKeys("khankhankhank");
    }

    @And("user enter common name for first name")
    public void userEnterCommonNameForFirstName() {
        driver.findElement(By.name("firstName")).sendKeys("lala");
    }

    @And("user enter common name for last name")
    public void userEnterCommonNameForLastName() {
        driver.findElement(By.name("lastName")).sendKeys("khan");
    }

    @Then("the user should receive error message: {string}")
    public void theUserShouldReceiveErrorMessage(String arg0) {
        driver.findElement(By.id("error-msg"));

    }

    @And("user enter exiting email address")
    public void userEnterExitingEmailAddress() {
        driver.findElement(By.name("email")).sendKeys("lalakhan3@gmail.com");
    }

    @And("user enter same characters from password field in confirm password field")
    public void userEnterSameCharactersFromPasswordFieldInConfirmPasswordField() {
        driver.findElement(By.name("confirmPassword")).sendKeys("12345");
    }

    @And("user enter Passwords containing less then six characters")
    public void userEnterPasswordsContainingLessThenSixCharacters() {
        driver.findElement(By.name("confirmPassword")).sendKeys("12345");
    }

    @And("user does not click the term and condition policy")
    public void userDoesNotClickTheTermAndConditionPolicy() {
    }

    @Then("the user should receive an error message: {string}")
    public void theUserShouldReceiveAnErrorMessage(String arg0) {
        driver.switchTo().alert().getText();
    }

    @And("user does not select gender radio button {string} or {string}")
    public void userDoesNotSelectGenderRadioButtonMaleOrFemale() {
        driver.findElement(By.id("")).click();

    }

    @Then("the user should see error message: {string}")
    public void theUserShouldSeeErrorMessage(String arg0) {
        driver.switchTo().alert().getText();
    }

    @And("user enter new valid email address")
    public void userEnterNewValidEmailAddress() {
        driver.findElement(By.name("email")).sendKeys("lalakhan10@gmail.com");
    }

    public static String ExtractStudentId(String successText) {

                // Sample success message containing the student ID
                String successMessage = "Success! Your student ID is: TTC0345";

                // Define the pattern to match the student ID
                Pattern pattern = Pattern.compile("Your student ID is: (\\w+)");
                Matcher matcher = pattern.matcher(successMessage);

                // Check if the pattern is found in the success message
                if (matcher.find()) {
                    // Extract the student ID
                    String studentId = matcher.group(1);
                    System.out.println("Extracted Student ID: " + studentId);
                } else {
                    System.out.println("Student ID not found in the success message.");
                }
        return successMessage;
    }


    @And("user will receive {string} message")
    public void userWillReceiveMessage(String arg0) {
        String expText3 = "Success!";
        String actText3 = driver.findElement(By.xpath("//div[@class='swal-title']")).getText();
        Assert.assertEquals(expText3, actText3);

    }

    @And("user clicks on ok button")
    public void userClicksOnOkButton() {
        driver.findElement(By.xpath("//button[@class='swal-button swal-button--confirm']"));
    }

    @And("user enter student id and password")
    public void userEnterStudentIdAndPassword() {

        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[@class='swal-title']")));
        String successText = driver.findElement(By.xpath("//div[@class='swal-text']")).getText();
        if (successText.contains("success!")) {
            WebElement okButton = driver.findElement(By.xpath("//button[@class='swal-button swal-button--confirm']"));
            okButton.click();
            String studentId = ExtractStudentId(successText);
            WebElement studentIdField =driver.findElement(By.xpath("//input[@type='text']"));
            studentIdField.sendKeys(studentId);
            WebElement passwordLoginField = driver.findElement(By.name("confirmPassword"));
            passwordLoginField.sendKeys(STUDENT_PASSWORD);
        }
    }
}

