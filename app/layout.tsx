import './globals.css';
import { ReactNode } from 'react';

export const metadata = {
  title: 'Blaze Crash Analyzer Pro',
  description: 'Ferramenta de análise com IA e gerenciamento de banca para Blaze Crash',
};

export default function RootLayout({ children }: { children: ReactNode }) {
  return (
    <html lang="pt">
      <body>{children}</body>
    </html>
  );
}
