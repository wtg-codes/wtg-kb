// @ts-check

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'WTG Knowledge Base',
  tagline: 'The Ultimate Solution Architect Brain',
  favicon: 'img/favicon.ico',
  url: 'https://kb.workingtitlegroup.com',
  baseUrl: '/',
  organizationName: 'working-title-group',
  projectName: 'wtg-kb',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',

  markdown: {
    mermaid: true,
  },
  themes: ['@docusaurus/theme-mermaid'],

  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: './sidebars.js',
          editUrl: 'https://github.com/working-title-group/wtg-kb/tree/main/',
        },
        theme: {
          customCss: './src/css/custom.css',
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        title: 'WTG-KB',
        items: [
          {
            type: 'docSidebar',
            sidebarId: 'tutorialSidebar',
            position: 'left',
            label: 'Knowledge',
          },
          {
            href: 'https://github.com/working-title-group/wtg-kb',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        links: [],
        copyright: `Copyright © ${new Date().getFullYear()} Working Title Group.`,
      },
    }),
};

export default config;
