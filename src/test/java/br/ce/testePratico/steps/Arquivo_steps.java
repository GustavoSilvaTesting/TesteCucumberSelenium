package br.ce.testePratico.steps;

import java.io.File;
import java.io.IOException;
import java.time.Duration;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.pt.*;

public class Arquivo_steps {
	
	private WebDriver driver;

	// Steps referentes ao adicionar_contato.features;	
	@Dado("que acesso a tela inicial do sistema")
	public void que_acesso_a_tela_inicial_do_sistema() {
		driver = new ChromeDriver();
		//driver = new FirefoxDriver();
		driver.get("http://localhost:8080");
	}

	@Quando("clico no botão Adicionar")
	public void clico_no_botão_adicionar() {
		driver.findElement(By.tagName("button")).click();
	}

	@Quando("informo o nome {string}")
	public void informo_o_nome(String string1) {
		driver.findElement(By.xpath("//input[@placeholder='Nome']")).sendKeys(string1);
	}

	@Quando("informo o telefone {string}")
	public void informo_o_telefone(String string2) {
		driver.findElement(By.xpath("//input[@placeholder='Telefone']")).sendKeys(string2);
	}

	@Quando("clico em Adicionar da tela de cadastro")
	public void clico_em_adicionar_da_tela_de_cadastro() throws InterruptedException {
		driver.findElement(By.xpath("//button[@class='btn btn-primary']")).click();
			
	}

	@Então("o {string} deve ser inserido com sucesso")
	public void o_deve_ser_inserido_com_sucesso(String string3) throws InterruptedException {
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));						
		String b = driver.findElement(By.xpath("//td[text()='" + string3 + "']")).getText();
											
	}

	@Então("é solicitado que o campo Nome seja preenchido")
	public void é_solicitado_que_o_campo_nome_seja_preenchido() {
		String nomeNaoPre = driver.findElement(By.xpath("//div[@class='help-block with-errors']")).getText(); 
		Assert.assertEquals("Insira um nome (required)", nomeNaoPre);
		
	}

	@Então("é emitido um alerta indicando que o contato informado já existe")
	public void é_emitido_um_alerta_indicando_que_o_contato_informado_já_existe() {
		String contatoExiste = driver.findElement(By.xpath("//span[@style='color: darkred']")).getText();		
		
	}

	@Então("deve ser emitido um alerta informando que o Nome deve possuir no mínimo três caracteres")
	public void deve_ser_emitido_um_alerta_informando_que_o_nome_deve_possuir_no_mínimo_caracteres() {
		String minTres = driver.findElement(By.xpath("//div[@class='help-block with-errors']")).getText();
		Assert.assertEquals("Insira um nome (min. length: 3)", minTres);
	}

	@Então("deve ser emitido um alerta informando que o Nome não deve possuir caracteres especiais")
	public void deve_ser_emitido_um_alerta_informando_que_o_nome_não_deve_possuir_caracteres_especiais() {
		String caracEsp = driver.findElement(By.xpath("//div[@class='help-block with-errors']")).getText();
		Assert.assertEquals("Não permitida a inclusão de caracteres especiais!", caracEsp);
	}

	@Então("deve ser emitido um alerta informando que o Nome não deve possuir mais de cem caracteres")
	public void deve_ser_emitido_um_alerta_informando_que_o_nome_não_deve_possuir_mais_de_caracteres() {
		String max100 = driver.findElement(By.xpath("//div[@class='help-block with-errors']")).getText();
		Assert.assertEquals("Insira um nome (max. length: 100)", max100);
	}

	@Então("deve ser emitido um alerta informando que o telefone deve possuir no máximo doze caracteres")
	public void deve_ser_emitido_um_alerta_informando_que_o_telefone_deve_possuir_no_máximo_doze_caracteres() {
		String max12 = driver.findElement(By.xpath("//div[@class='help-block with-errors']")).getText();
		Assert.assertEquals("Insira um nome (max. length: 12)", max12);
	}

	@Então("deve ser emitido um alerta informando que o telefone deve possuir no mínimo oito caracteres")
	public void deve_ser_emitido_um_alerta_informando_que_o_telefone_deve_possuir_no_mínimo_caracteres() {
		String minOito = driver.findElement(By.xpath("//div[@class='help-block with-errors']")).getText();
		Assert.assertEquals("Insira um nome (min. length: 8)", minOito);
	}

	@Então("deve ser emitido um alerta informando que o Telefone não deve possuir caracteres especiais")
	public void deve_ser_emitido_um_alerta_informando_que_o_telefone_não_deve_possuir_caracteres_especiais() {
		String caracEsp = driver.findElement(By.xpath("//div[@class='help-block with-errors']")).getText();
		Assert.assertEquals("Não permitida a inclusão de caracteres especiais!", caracEsp);
	}
	
	
	// Steps referentes ao editar_contato.features;	
	@Dado("clico no botão da coluna editar do contato")
	public void clico_no_botão_da_coluna_editar_do_contato() {
	    
	}

	@Dado("a tela de cadastro é carregada com os dados do contato")
	public void a_tela_de_cadastro_é_carregada_com_os_dados_do_contato() {
	    
	}

	@Quando("é alterado algum dado do contato")
	public void é_alterado_algum_dado_do_contato() {
	   
	}

	@Quando("clico no Atualizar")
	public void clico_no_atualizar() {
	    
	}

	@Então("o contato deve ser atualizado na lista de contatos")
	public void o_contato_deve_ser_atualizado_na_lista_de_contatos() {
	    
	}

	@Quando("não é alterado nenhum dado do contato")
	public void não_é_alterado_nenhum_dado_do_contato() {
	    
	}

	@Então("o botão Cadastrar não deve ser habilitado")
	public void o_botão_cadastrar_não_deve_ser_habilitado() {
	    
	}
	
	// Steps referentes ao remover_contato.features;
	@Quando("existirem contatos cadastrados")
	public void existirem_contatos_cadastrados() {
	    
	}

	@Então("os contatos devem ser listados na tela inicial")
	public void os_contatos_devem_ser_listados_na_tela_inicial() {
	    
	}
	
	// Steps referentes ao arquivo listar_contato.features;
	@Dado("clico no botão da coluna excluir do {string}")
	public void clico_no_botão_da_coluna_excluir_do(String str) {				
		String contAexcluir = driver.findElement(By.xpath("//tbody/tr[2]/td[1]")).getText();			
		WebElement excluir = driver.findElement(By.xpath("//tbody/tr[2]/td[3]"));
		excluir.click();					
	}

	@Então("o {string} deve ser removido da lista de contatos")
	public void o_deve_ser_removido_da_lista_de_contatos(String str2) {
		
	}
		
	@After(order = 2)
	public void screenshot(Scenario cenario) {
		File file = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
		try {
			FileUtils.copyFile(file, new File("target/screenshots/"+cenario.getName()+".jpg"));
		} catch (IOException e) {			
			e.printStackTrace();
		}				
	}
	
	@After(order = 1) 
	public void excluirExistente() {
		String result = driver.findElement(By.xpath("//tbody/tr[@style]")).getText();
		
		if (result != null) {
			WebElement excluir = driver.findElement(By.xpath("//tbody/tr[2]/td[3]"));
			excluir.click();
		} else {
			
		}	
	}
	
	@After(order = 0) 
	public void fecharBrowser() {	
		driver.quit();
	}
	
}
