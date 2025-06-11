config.load_autoconfig(False)
config.set("content.cookies.accept", "all", "chrome-devtools://*")
config.set("content.cookies.accept", "all", "devtools://*")
config.set("content.headers.accept_language", "", "https://matchmaker.krunker.io/*")
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}",
    "https://web.whatsapp.com/",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:133.0) Gecko/20100101 Firefox/133.0",
    "https://accounts.google.com/*",
)
config.set("content.images", True, "chrome-devtools://*")
config.set("content.images", True, "devtools://*")
config.set("content.javascript.enabled", True, "chrome-devtools://*")
config.set("content.javascript.enabled", True, "devtools://*")
config.set("content.javascript.enabled", True, "chrome://*/*")
config.set("content.javascript.enabled", True, "qute://*/*")
config.set(
    "content.local_content_can_access_remote_urls",
    True,
    "file:///home/elitegaming/.local/share/qutebrowser/userscripts/*",
)
config.set(
    "content.local_content_can_access_file_urls",
    False,
    "file:///home/elitegaming/.local/share/qutebrowser/userscripts/*",
)

c.editor.command = [
    "wezterm",
    "start",
    "--",
    "nvim",
    "{file}",
    "-c",
    "normal {line}G{column0}l",
]
c.scrolling.smooth = False
c.statusbar.show = "in-mode"
c.tabs.show = "multiple"
c.url.default_page = "https://google.com"
c.url.searchengines = {
    "DEFAULT": "https://www.google.com/search?q={}",
    "youtube": "https://www.youtube.com/results?search_query={}",
}
c.url.start_pages = "https://google.com"
c.colors.webpage.darkmode.enabled = False
c.colors.webpage.darkmode.algorithm = "brightness-rgb"
c.colors.webpage.darkmode.contrast = 0.0
c.fonts.hints = "bold 15pt default_family"
c.qt.force_software_rendering = "software-opengl"
c.downloads.location.directory = "~/Desktop"
c.downloads.location.prompt = False
c.content.autoplay = True
c.content.tls.certificate_errors = "load-insecurely"

c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/annoyances-cookies.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/annoyances-others.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/annoyances.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badlists.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badware.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2020.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2021.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2022.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2023.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2024.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2025.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-general.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-mobile.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/lan-block.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/privacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/quick-fixes.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/ubo-link-shorteners.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/ubol-filters.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/unbreak.txt",
]
c.content.blocking.enabled = True
c.content.blocking.hosts.block_subdomains = True
c.content.blocking.hosts.lists = [
    "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts",
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/pro.plus.mini.txt",
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/dnsmasq/pro.plus.mini.txt",
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/wildcard/pro.plus.mini.txt",
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/wildcard/pro.plus.mini-onlydomains.txt",
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/rpz/pro.plus.mini.txt",
]
c.content.blocking.method = "both"
c.content.pdfjs = True
