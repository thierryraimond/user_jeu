<?php
/**
 * Classe d'accés aux données.
*
* Utilise les services de la classe PDO
* pour l'application
* Les attributs sont tous statiques,
* les 4 premiers pour la connexion
* $monPdo de type PDO
* $monPdoNewsletter qui contiendra l'unique instance de la classe
* @link       http://www.php.net/manual/fr/book.pdo.php
*/
class PdoNewsletter {
	private static $serveur='mysql:host=localhost'; // version dev = trsrv.ddns.net // version prod = trsrv.no-ip.org
	private static $bdd='dbname=user_jeu';
	private static $user='root' ; // version dev = thierry // version prod = root
	private static $mdp='' ;
	private static $monPdo;
	private static $monPdoNewsletter=null;
	/**
	 * Constructeur privé, crée l'instance de PDO qui sera sollicitée
	 * pour toutes les méthodes de la classe
	 */
	private function __construct(){
		PdoNewsletter::$monPdo = new PDO(PdoNewsletter::$serveur.';'.PdoNewsletter::$bdd, PdoNewsletter::$user, PdoNewsletter::$mdp);
		PdoNewsletter::$monPdo->query("SET CHARACTER SET utf8");
	}
	public function _destruct(){
		PdoNewsletter::$monPdo = null;
	}
	/**
	 * Fonction statique qui crée l'unique instance de la classe
	 *
	 * Appel : $instancePdoNewsletter = PdoNewsletter::getPdoNewsletter();
	 * @return objet l'unique objet de la classe PdoNewsletter
	 */
	public static function getPdoNewsletter(){
		if(PdoNewsletter::$monPdoNewsletter==null){
			PdoNewsletter::$monPdoNewsletter= new PdoNewsletter();
		}
		return PdoNewsletter::$monPdoNewsletter;
	}
	
	public function getUsers(){
		$req = "
			SELECT *
			FROM user
			ORDER BY user.name DESC
			";
		$res = PdoNewsletter::$monPdo->query($req);
		$lesLignes = $res->fetchAll();
		$res->closeCursor();
		return $lesLignes;
	}
	
	public function getUser($id){
		$req = "
			SELECT user.userId as id, user.name as name, user.date as date
			FROM user
			WHERE user.userId = '$id'
			";
		$res = PdoNewsletter::$monPdo->query($req);
		$ligne = $res->fetch();
		$res->closeCursor();
		return $ligne;
	}
}