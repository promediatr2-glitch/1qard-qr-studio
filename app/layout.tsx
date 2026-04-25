export const metadata = {
  title: "1qard QR Studio",
  description: "Smart QR platform for modern businesses",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
