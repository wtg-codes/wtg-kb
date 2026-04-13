// @ts-check
const config = {
  title: 'WTG Knowledge Base',
  tagline: 'The Ultimate Solution Architect Brain',
  favicon: 'img/favicon.ico',
  url: 'https://wtg-codes.github.io',
  baseUrl: '/wtg-kb/',
  organizationName: 'wtg-codes',
  projectName: 'wtg-kb',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  trailingSlash: false,
  markdown: {
    mermaid: true,
  },
  themes: ['@docusaurus/theme-mermaid'],
  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.js',
          editUrl: 'https://github.com/wtg-codes/wtg-kb/tree/main/',
        },
        theme: { customCss: './src/css/custom.css' },
      },
    ],
  ],
  themeConfig: {
    colorMode: {
      defaultMode: 'dark',
      respectPrefersColorScheme: true,
    },
    navbar: {
      title: 'WTG-KB',
      items: [
        { type: 'docSidebar', sidebarId: 'tutorialSidebar', position: 'left', label: 'Knowledge' },
        { to: '/docs/agents/templates', label: 'Agent Rules', position: 'left' },
        { href: 'https://github.com/wtg-codes/wtg-kb', label: 'GitHub', position: 'right' },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Docs',
          items: [
            { label: 'Cloud', to: '/docs/cloud/' },
            { label: 'Agents', to: '/docs/agents/' },
          ],
        },
        {
          title: 'Community',
          items: [
            { label: 'GitHub', href: 'https://github.com/wtg-codes/wtg-kb' },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Working Title Group. Built with Glassy Dark Mode.`,
    },
  },
};
export default config;
