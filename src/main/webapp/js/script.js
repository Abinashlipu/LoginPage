/**
 * 
 */

 

const form = document.querySelector('.form');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');
const btnPopup = document.querySelector('.btnLogin-popup');
const iconClose = document.querySelector('.bi-x');

registerLink.addEventListener('click', () => {
    form.classList.add('active');
})

loginLink.addEventListener('click', () => {
    form.classList.remove('active');
})

btnPopup.addEventListener('click', () => {
    form.classList.add('active-popup');
})

iconClose.addEventListener('click', () => {
    form.classList.remove('active');
})