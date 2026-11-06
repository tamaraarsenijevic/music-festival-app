const form = document.querySelector(".typing-area"),
incoming_id = form.querySelector(".incoming_id").value,
inputField = form.querySelector(".input-field"),
sendBtn = form.querySelector("button"),
chatBox = document.querySelector(".chat-box");

form.onsubmit = (e)=>{
    e.preventDefault();
}

inputField.focus();
inputField.onkeyup = ()=>{
    if(inputField.value != ""){
        sendBtn.classList.add("active");
    }else{
        sendBtn.classList.remove("active");
    }
}

sendBtn.onclick = (event) => {
    event.preventDefault(); // Sprecava formu da se posalje na standardan nacin
    let formData = new FormData(form);
    
    console.log("Poslati podaci:", formData);  // Proveri sta se šalje
    
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "includes/insert-chat.php", true);
    
    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                console.log(xhr.responseText);  //odgovor sa servera

                inputField.value = ""; // cisti polje nakon uspesnog slanja
                scrollToBottom(); // Pomeri ekran na dno
            } else {
                console.error("Greška pri slanju poruke: ", xhr.status);
            }
        }
    };
    
    xhr.send(formData);
};

chatBox.onmouseenter = ()=>{
    chatBox.classList.add("active");
}

chatBox.onmouseleave = ()=>{
    chatBox.classList.remove("active");
}

setInterval(() =>{
    let xhr = new XMLHttpRequest();
    xhr.open("GET", "includes/get-chat.php?user_id=" + incoming_id, true);
    xhr.onload = ()=>{
      if(xhr.readyState === XMLHttpRequest.DONE){
          if(xhr.status === 200){
            let data = xhr.response;
            chatBox.innerHTML = data;
            if(!chatBox.classList.contains("active")){
                scrollToBottom();
              }
          }
      }
    }
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    console.log("incoming_id:", incoming_id);
    xhr.send("incoming_id="+incoming_id);
}, 500);

function scrollToBottom(){
    chatBox.scrollTop = chatBox.scrollHeight;
  }
  