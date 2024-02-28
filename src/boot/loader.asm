org 0x7c00
bits 16

main:
	; Iniciar segmento de dados com 0x0...
	mov ax, 0
	mov ds, ax
	mov es, ax
	mov ss, ax

	; Definir o endereço inicial na pilha...
	mov sp, 0x7c00

	; Impressão da mensagem na tela...
	mov si, hello_msg
	call puts

halt:
	; Parada da CPU...
	hlt
	jmp halt

%define EOL 0x0d, 0x0a
%include "src/lib/stdio/puts.asm"

loading_msg: db 'Loading...', EOL, 0
hello_msg:   db 'Voce acredita que e o escolhido porque foi dito a voce. Mas, se voce fosse o escolhido, nao precisaria ser dito. Voce apenas saberia.', EOL, 0

times 510-($-$$) db 0
dw 0xaa55