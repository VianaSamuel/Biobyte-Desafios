import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-cadastrar',
  templateUrl: './cadastrar.component.html',
  styleUrl: './cadastrar.component.css'
})
export class CadastrarComponent {
  form!: FormGroup;

  constructor(private formBuilder: FormBuilder) { }

  ngOnInit(): void {
    this.form = this.formBuilder.group({
      name: ['', Validators.required],
      lastName: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(8)]],
      confirmPassword: ['', Validators.required]
    });
  }

  // Retorna os controles do formulário para fácil acesso no template
  get f() { return this.form.controls; }

  onSubmit() {
    // Lógica para manipular o envio do formulário
    if (this.form.invalid) {
      return;
    }
    
    console.log('Formulário enviado com sucesso!', this.form.value);
  }
}
