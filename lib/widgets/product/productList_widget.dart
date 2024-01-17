import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/productCard_widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  const ProductList({super.key, required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductCard(
            viewModel: ProductCardViewModel(
              description:
                  "Um relógio de pulso que une elegância e funcionalidade. Com design sofisticado, este acessório atemporal não apenas marca o tempo, mas complementa seu estilo. Feito com precisão e materiais de qualidade, é a escolha perfeita para qualquer ocasião, adicionando um toque de classe ao seu pulso.",
              image: "assets/product-2.png",
              value: 450,
              brand: "Tag Hauer",
              title: "Leather Wristwatch",
            ),
          ),
          ProductCard(
            viewModel: ProductCardViewModel(
              description:
                  "Explore a conveniência e a tecnologia com nossa caixa de som inteligente. Com controle por voz, conectividade sem fio e assistentes virtuais integrados, essa caixa de som oferece uma experiência sonora imersiva e funcionalidades inteligentes. Acesse sua música favorita, faça perguntas, controle dispositivos domésticos e muito mais, tudo com comandos simples. Um dispositivo moderno que transforma seu espaço, proporcionando entretenimento e praticidade com um toque inteligente.",
              image: "assets/product-3.png",
              value: 900,
              brand: "Google Inc.",
              title: "Smart Bluetooth Speaker",
            ),
          ),
          ProductCard(
            viewModel: ProductCardViewModel(
              image: "assets/product-1.png",
              description:
                  "Desfrute de uma experiência sonora excepcional com nossos auto-falantes de alta qualidade. Projetados para proporcionar áudio nítido e envolvente, esses dispositivos são a escolha perfeita para entusiastas de música e amantes de entretenimento. Com tecnologia avançada de som, conectividade versátil e design elegante, nossos auto-falantes oferecem a combinação ideal de desempenho e estilo. Eleve sua experiência auditiva com a potência e a clareza que você merece.",
              value: 755,
              brand: "Bang of olufsen",
              title: "Beoplay Speaker",
            ),
          ),
          ProductCard(
            viewModel: ProductCardViewModel(
              description:
                  "Conforto e estilo se unem em nossa coleção de camisetas de manga longa. Feitas com tecidos macios e duráveis, essas camisetas oferecem o equilíbrio perfeito entre conforto e moda. Disponíveis em uma variedade de cores e designs modernos, são peças versáteis que se adequam a qualquer ocasião. Seja para um dia casual ou uma noite descontraída, nossa camiseta de manga longa é a escolha ideal para quem valoriza o conforto sem abrir mão do estilo.",
              image: "assets/product-10.png",
              value: 150,
              brand: "Nike",
              title: "Nike Dry Fit Long Sleeve",
            ),
          ),
          ProductCard(
            viewModel: ProductCardViewModel(
              description:
                  "Viaje com facilidade e estilo com nossa mala inteligente. Equipada com recursos modernos como rastreamento, carregamento USB e design elegante, ela oferece praticidade e segurança para suas viagens.",
              image: "assets/product-4.png",
              value: 1000,
              brand: "Smart Inc.",
              title: "Smart Lugagge",
            ),
          ),
        ],
      ),
    );
  }
}
