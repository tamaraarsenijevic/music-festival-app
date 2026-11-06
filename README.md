# 🎵 Web aplikacija za upravljanje muzičkim festivalima

Kompletna full-stack web aplikacija razvijena u PHP i MySQL (phpMyAdmin) okruženju, namenjena organizaciji, upravljanju i praćenju muzičkih festivala, izvođača i interakciji sa posetiocima.

---

## 👥 Autori
* **Tamara Arsenijević**
* **Mila Vulovic** 

---

## 🛠️ Korišćene tehnologije
* **Backend:** PHP
* **Baza podataka:** MySQL, phpMyAdmin
* **Frontend:** HTML5, CSS3, JavaScript
* **Razvojno okruženje:** WAMP / Localhost

---

## 🔑 Korisničke uloge i funkcionalnosti

Sistem podržava naprednu kontrolu pristupa i autorizaciju sa 4 različite korisničke uloge:

### 1. 🛡️ Administrator
* Upravljanje celokupnim sistemom.
* Kreiranje anketa za posetioca.
* Pregled statistike

### 2. 📋 Organizator
* Dodavanje, izmena i upravljanje podacima o festivalima.

### 3. 🎸 Izvođač
* Samostalno ažuriranje ličnog profila i opisa.

### 4. 🎟️ Posetilac
* **Pretraga festivala:** Filtriranje i pregled detaljnih informacija o festivalima.
* **Lista omiljenih:** Dodavanje izvođača u listu omiljenih.
* **Ankete:** Učestvovanje u anketama koje je kreirao administrator.
* **Komunikacija:** Direktno dopisivanje sa izvođačima.
* **Obaveštenja:** Prijem sistemskih obaveštenja i vesti.

---

## 🗄️ Arhitektura baze podataka
Baza je projektovana kao relaciona MySQL baza podataka sa definisanim stranim ključevima (Foreign Keys) koji obezbeđuju integritet podataka između tabela za korisnike, festivale, izvođače, poruke i ankete.

---

## 🚀 Pokretanje projekta lokalno

1. Klonirajte repozitorijum ili preuzmite fajlove u root folder vašeg lokalnog servera (`wamp/www/`).
2. Uključite Apache i MySQL preko WAMP/XAMPP servera.
3. Otvorite **phpMyAdmin** (`http://localhost/phpmyadmin`) i kreirajte novu bazu podataka.
4. Uvezite priloženi SQL fajl sa strukturalnim tabelama baze.
5. Pokrenite projekat u pretraživaču (npr. `http://localhost/naziv-projekta`).
