aerospace)
    name="AeroSpace"
    type="zip"
    downloadURL="$(curl -L -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2026-03-10" https://api.github.com/repos/nikitabobko/AeroSpace/releases | jq 'sort_by(.published_at) | reverse | .[0].tag_name' | tr -d '"')"
    appNewVersion="$(curl -L -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2026-03-10" https://api.github.com/repos/nikitabobko/AeroSpace/releases | jq 'sort_by(.published_at) | reverse | .[0].assets[] | select(.content_type=\"application/zip\") | .browser_download_url' | tr -d '"')"
    expectedTeamID="origin=aerospace-codesign-certificate"
    ;;
