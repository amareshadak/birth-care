import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";
import "@radix-ui/themes/styles.css";

import { Theme, Button, Grid, Flex, Box } from "@radix-ui/themes";
import Link from "next/link";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Create Next App",
  description: "Generated by create next app",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <Theme>
          <Grid columns="3" gap="3" mb={"2"}>
            <Flex direction="column" gap="3">
              <Box grow="1" className="bg-slate-400 text-center w-screen p-1">
                Navbar
                <Box className="float-right mr-6">
                  <Link href="/login">
                    {" "}
                    <Button variant="classic">Log in</Button>{" "}
                  </Link>
                  <Link href="/registration" className="ml-2">
                    {" "}
                    <Button variant="outline"> Registration</Button>
                  </Link>
                </Box>
              </Box>
              <Box height="9" className="bg-slate-400 text-center w-screen">
                {children}
              </Box>
            </Flex>
          </Grid>
        </Theme>
      </body>
    </html>
  );
}
