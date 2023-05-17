resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Configured clip system, easy to customize and comfortable to use'
version '1.0'
author 'Snoop Dogg#2843 - Snoop-Scripts'

shared_scripts {
    '**/s_*.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'**/cl_*.lua'
}

server_scripts  {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
    '**/sv_*.lua'
}

dependencies {
'rprogress', 
'mythic_notify' 
}