import React from 'react';
import Layout from '@theme/Layout';
import Link from '@docusaurus/Link';

export default function Home() {
  return (
    <Layout title="WTG-KB" description="Solution Architect Brain">
      <main style={{padding: '2rem', textAlign: 'center'}}>
        <h1>WTG Knowledge Base</h1>
        <Link className="button button--primary button--lg" to="/docs/cloud/">Enter</Link>
      </main>
    </Layout>
  );
}
