import "./globals.css";
import type {Metadata} from "next";
import Link from "next/link";

export const metadata: Metadata = {
  title: "ブログ",
  description: "Next.jsで作成したブログサイト",
};

export default function RootLayout({children}: {children: React.ReactNode}) {
  return (
    <html lang='ja'>
      <body>
        <header className='bg-white shadow-sm'>
          <div className='container mx-auto px-4 py-6'>
            <nav>
              <Link href='/' className='text-2xl font-bold text-gray-900 hover:text-gray-700'>
                ブログ
              </Link>
            </nav>
          </div>
        </header>
        {children}
        <footer className='bg-gray-50 border-t'>
          <div className='container mx-auto px-4 py-8'>
            <p className='text-center text-gray-600'>© {new Date().getFullYear()} All rights reserved.</p>
          </div>
        </footer>
      </body>
    </html>
  );
}
