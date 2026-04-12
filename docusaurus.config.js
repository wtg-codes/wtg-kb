// @ts-check
const config = {
  title: 'WTG Knowledge Base',
  tagline: 'The Ultimate Solution Architect Brain',
  favicon: 'img/favicon.ico',
  url: 'https://working-title-group.github.io',
  baseUrl: '/wtg-kb/',
  organizationName: 'working-title-group',
  projectName: 'wtg-kb',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  trailingSlash: false,
  markdown: { mermaid: true },
  themes: ['@docusaurus/theme-mermaid'],
  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.js',
          editUrl: 'https://github.com/working-title-group/wtg-kb/tree/main/',
        },
        theme: { customCss: './src/css/custom.css' },
      },
    ],
  ],
  themeConfig: {
    navbar: {
      title: 'WTG-KB',
      items: [
        { type: 'docSidebar', sidebarId: 'tutorialSidebar', position: 'left', label: 'Knowledge' },
        { href: 'https://github.com/working-title-group/wtg-kb', label: 'GitHub', position: 'right' },
      ],
    },
    footer: {
      style: 'dark',
      links: [],
      copyright: `Copyright © ${new Date().getFullYear()} Working Title Group.`,
    },
  },
};
export default config;
