import React from 'react';
import Layout from '@theme/Layout';
import Link from '@docusaurus/Link';

export default function Home() {
  return (
    <Layout
      title="WTG Knowledge Base"
      description="The Ultimate Solution Architect Brain">
      <main style={{padding: '2rem', textAlign: 'center'}}>
        <h1>Welcome to WTG-KB</h1>
        <p>A centralized brain for GCP, GWS, and Agentic Workflows.</p>
        <div style={{marginTop: '2rem'}}>
          <Link
            className="button button--primary button--lg"
            to="/docs/cloud/">
            Enter the Knowledge Base
          </Link>
        </div>
      </main>
    </Layout>
  );
}
