// ELEMENTOS
const form = document.querySelector("#form");
const fields = document.querySelectorAll(".form-control");
const emailRegex = /^[a-zA-Z0-9]+(\.[a-zA-Z0-9_-]+)*$/;
const nameRegex = /^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]+$/u;


// LISTENER DO BOTÃO
form.addEventListener("submit", (e) => {
    e.preventDefault();

    firstNameValidate();
    lastNameValidate();
    emailValidate();
    mainPasswordValidate();
    confirmPasswordValidate();

    if (document.querySelectorAll(".has-error").length === 0) form.submit();
});


// CONTROLE DE VALIDAÇÕES
function setError(i){
    fields[i].classList.add("has-error");
    fields[i].nextElementSibling.classList.remove("small-off");
    fields[i].nextElementSibling.classList.add("small-on");
}
function removeError(i){
    fields[i].classList.remove("has-error");
    fields[i].nextElementSibling.classList.add("small-off");
    fields[i].nextElementSibling.classList.remove("small-on");
}


// VALIDAÇÕES
function firstNameValidate(){
    if (fields[0].value.length < 3 || !nameRegex.test(fields[0].value)) setError(0);
    else removeError(0);
}
function lastNameValidate(){
    if (fields[1].value.length < 3 || !nameRegex.test(fields[1].value)) setError(1);
    else removeError(1);
}
function emailValidate(){
    if (fields[2].value.length < 3 || !emailRegex.test(fields[2].value)) setError(2)
    else removeError(2);
}
function mainPasswordValidate(){
    if (fields[3].value.length < 8) setError(3);
    else removeError(3);
}
function confirmPasswordValidate(){
    if (fields[3].value !== fields[4].value || fields[3].value.length < 8) setError(4);
    else removeError(4);
}