package br.ce.testePratico.runners;
import org.junit.runner.RunWith;
import io.cucumber.junit.*;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/resources/features/adicionar_contato.feature",
		glue = "br.ce.testePratico.steps", 
		plugin = "pretty",
		monochrome = true
//		tags = "@cadastrar"
		)
public class Runner {
		
}
