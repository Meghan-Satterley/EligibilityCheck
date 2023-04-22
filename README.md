# EligibilityCheck
coded in x86 assembly language <br>
This program simulates an eligibility checker, asking for residency, gender and age.
Those who live in MO or KS, are male or female and are 65 years or older are eligible <br>

The following directions where given: <br>

Determine eilgibility for this program by prompting the user for state of residence (only MO or Ks residents are eligible),
<br> a valid gender code(only M or F is acceptable)
<br> and age (those 65 years or older are eligible).
<br> Display a statement indicating whether the applicant is eligible or ineligible.
<br> An invalid entry or negative age value triggers repeat of the input prompt.
<br> Exit the application process at any time by entering the letter <b> Q </b> at a state or gender prompt
<br> or by entering a zero (0) for the age value. 
<br> After all three valid values have been successfully entered, display a message indicating whether the applicant
<br> is eligible or not eligible for the program. <br>

In order to run this code you will need to modify and upload to vsCode or download the following zip files: <br>
<b> masm615.zip</b> <br>
<b> Irvine.zip</b> <br>
<b> Satterley_ASM.zip</b> <br>
and store them in the C drive of your device. <br> 

Then go to the search bar at the bottom of your screen and type the letters CMD to open your command prompt. <br>
Next type or copy and paste the following lines to create an executable file and execute the program. <br> 
<b> cd C:\Satterley_ASM </b> <br>
<b> make32 Meghan-Satterley_EligibilityCheck </b> <br> <br>
You should see the following files appear in your folder directory <br> 
![make32_EligibilityCheck](https://user-images.githubusercontent.com/114275745/233757182-f7503983-825f-4a73-950c-bd8a3c633d02.png)
<br> <br> Lastly type the following line to execute the program <br>
<b> Meghan-Satterley_EligibilityCheck </b> <br> <br>
The following will result if executed correctly <br>

1) Ensure all prompts loop until an accepted answer is entered. <br>
![EligibilityCheck_Exe_1](https://user-images.githubusercontent.com/114275745/233757258-c7324ab0-50e8-409e-aa3a-aafa3ba481ae.png)
![EligibilityCheck_Exe_2](https://user-images.githubusercontent.com/114275745/233757262-ae39803e-28fc-4c1f-af62-2d545ea7bdde.png) <br>

2) Ensure the program quits by typing Q/q for state and gender prompt or 0 for the age prompt. <br>
![EligibilityCheck_Exe_3](https://user-images.githubusercontent.com/114275745/233757385-83fcc603-ee71-479c-8c08-6a677e709780.png)
![EligibilityCheck_Exe_4](https://user-images.githubusercontent.com/114275745/233757388-ed8fb51a-bbeb-48c5-a0cd-0412db494319.png)
![EligibilityCheck_Exe_5](https://user-images.githubusercontent.com/114275745/233757392-eca7dd3a-5f0d-4962-89de-b76cfe1513c1.png) <br>

3) Ensure correct elegibility message after all three valid inputs are entered. <br>
![EligibilityCheck_Exe_6](https://user-images.githubusercontent.com/114275745/233757433-9f714037-39f7-4ced-86a0-9809da12718c.png)
![EligibilityCheck_Exe_7](https://user-images.githubusercontent.com/114275745/233757437-3e854b5a-6fe8-4819-8c20-4c0f7b5e3d41.png) <br>

<br> <br> The complete assembly program has 7 variables
<br> (a buffer, description, eligible and not eligible message, state, gender and age prompt).
<br> While using the following Irvine-supplied routines: ReadString, WriteString, ReadChar, WriteChar, and ReadInt.
<br> The purpose of this program is to show an understanding of real world simple application implementation. 
