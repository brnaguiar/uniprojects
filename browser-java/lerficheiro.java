// tem imports a mais
import java.net.*;
import java.util.*;
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.text.html.*;
import java.awt.*;
import java.awt.event.*;
import java.net.MalformedURLException;
import java.net.URL;
import javafx.application.Platform;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import static javafx.concurrent.Worker.State.FAILED;
import javafx.embed.swing.JFXPanel;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebEvent;
import javafx.scene.web.WebView;
import javax.swing.*;

public class lerficheiro extends JFrame {
	
	private JTextField addressBar;
	private JEditorPane display;

	// construtor
	
	public lerficheiro() {
		super("Browser do Bruno!");
			
		addressBar = new JTextField("Indroduz Um Link! (http:// é necessário!!)");
		addressBar.addActionListener(
			new ActionListener() {
				public void actionPerformed(ActionEvent event) {
					carregarMensagemErro(event.getActionCommand());
					}
				}
				);
				add(addressBar, BorderLayout.NORTH);
				display = new JEditorPane();
				display.setEditable(false);
				display.addHyperlinkListener(
					new HyperlinkListener() {
						public void hyperlinkUpdate(HyperlinkEvent event) {
							if(event.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
								carregarMensagemErro(event.getURL().toString());
							}
						}
					}
					
					);
					add(new JScrollPane(display), BorderLayout.CENTER);
					setSize(500, 300);
					setVisible(true);
					
	}
	//imprime mensagem de erro no ecra
	private void carregarMensagemErro(String userText){
		try{
				display.setPage(userText);
				addressBar.setText(userText);
			} catch(Exception e) {
				System.out.println("Link Errado!");
			}
		}
}

