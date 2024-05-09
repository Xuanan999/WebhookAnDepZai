NameNotify = '🔹AnDepZai'
DiscordLink = 'https://discord.com/invite/NThneNQc'
NameDiscord = 'An Siêu Đẹp Trai'
NameUser = 'An Ắk Quỷ'
const themeFullMoon = {
    use: true,
    name:"FULL MOON",
    color:'14808320',
    url:'https://discord.com/api/webhooks/1238053791509774447/h5fWNGk3v2BCl7etgzVuzeDZ2vjD3jxOBl_LZNfd7VhQcZN3Lj44f0SBiLq-h0N79GEy'

  }
  const themeMirage = {
    use: true,
    name:"MIRAGE ISLAND",
    color:'62877',
    url:'https://discord.com/api/webhooks/1238053822073671690/q9K99r7G_k_MeJIb74_dDqY7_ayf_4tQol8DlAsUrDMVx0iBjQldeBEol0fyvkFolVKE'
  }
  const themehaki = {
    use: true,
    name:"HAKI LEGENDARY",
    color:'1310965',
    url:'https://discord.com/api/webhooks/1238053800988770325/ZvztLVL0iTm_8uzKI7T5yHxQmBGYaxJY_JKAia1oZxKK6lEOX9v18gg5aLSKZULjos82'
  }
  const themeSword = {
    use: true,
    name:"SWORD LEGENDARY",
    color:'16777215',
    url:'https://discord.com/api/webhooks/1238053807389409322/QhgklIhC8bCBuGtO6eYurXh71zfmPsBbrTZaaDnlfJJDF0Zr0RNTmxvKzaFm8tZEPsFZ'
 }
    const themeboss = {
    use: true,
    name:"BOSS SPAWN",
    color:'16777215',
    url:'https://discord.com/api/webhooks/1238053848028024893/vtBxAKJt51Kt2b7XHklviJVizTyyJ1ussDD08C1OJuSVdGTWotRwz7JI9wtpj0STS3Cm'
}
    const themefruit = {
    use: true,
    name:"FRUITS SPAWN",
    color:'16777215',
    url:'https://discord.com/api/webhooks/1238053846434058250/BuF1YzV6_FMSTzW_UOJ4D67obf4dPhIupXwvK8nzRZO8Op-Nvyod833vmzitVRlpT9-D'
}
    const themekitsune = {
    use: true,
    name:"KITSUNE ISLAND",
    color:'16777215',
    url:'https://discord.com/api/webhooks/1238053815383490580/F4-unrqDcXTaeNuipJDU6GhOAReUL-_Ng0RFy9A3DN8rBK9at1YoMd3U7-ayAfdgvxae'
}
const axios = require('axios')
async function _S(theme,fieldsss) {
    if (theme.use == false) {
        return ''
    }
    const data = {
        content: null,
        embeds: [
          {
            title: theme.name,
            description: `[Click To Join Discord](${DiscordLink})`,
            color: theme.color,
            fields: fieldsss,
            author: {name: `${NameNotify}`,},
            image: {url:'https://cdn.discordapp.com/attachments/1154969271512858657/1235104767622123581/d6b048c88b60cb2b914715c89c6006a1.jpg?ex=66332873&is=6631d6f3&hm=549b75ba1896121f0c6118632ab8df8a1b3d4f04b3868e6f1b761de4d1d6449e&'},
            footer: {text: `${NameUser} | ${NameDiscord}`,},
        },],
        attachments: [],
    };
    try {
      const response = await axios.post(theme.url, data);
      if (response.status === 204) {console.log('[SYSTEM] Check Speed : ',theme.name)}else {console.log('Http OutPut : ' + response.status);}}catch (error) {console.log('[SYSTEM] Error OutPut : ' + error.message);}
}
const { Client, Intents } = require('discord.js-selfbot-v13');
const DiscordBot = new Client();
DiscordBot.on('ready', async () => {
console.log(`Console - System log!`)
});
DiscordBot.on('messageCreate',async (message) => {
if (message.channelId == 1183760660371341342) {
    if (message.embeds) {
    const data = message.embeds[0].fields;
    _S(themeMirage,data)
 }
} else if (message.channelId == 1183760702972887050) {
    if (message.embeds) {
    const data = message.embeds[0].fields;
    _S(themeFullMoon,data)
 }
} else if (message.channelId == 1183760753510060093) {
    if (message.embeds) {
    const data = message.embeds[0].fields;
    _S(themeSword,data)
 }
} else if (message.channelId == 1183761092900560966) {
    if (message.embeds) {
    const data = message.embeds[0].fields;
    _S(themehaki,data)
 }
} else if (message.channelId == 1183761138454892575) {
    if (message.embeds) {
    const data = message.embeds[0].fields;
    _S(themeboss,data)
 }
} else if (message.channelId == 1207306188874579978) {
    if (message.embeds) {
    const data = message.embeds[0].fields;
    _S(themefruit,data)
 }
} else if (message.channelId == 1217798279853641819) {
    if (message.embeds) {
    const data = message.embeds[0].fields;
    _S(themekitsune,data)
 }
}
})
token = '1128993889169178654';

DiscordBot.login(MTIzNjk1NjE0MTI2NzcxODE0NQ.GFEHTG.3JsTLXEDUfCnV_i6_sB7LJitmiR3FUKyBtukgA);