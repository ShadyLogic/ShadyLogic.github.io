
# Input: NA
# Output: String
# Libraries: List of - nouns, verbs, adjectives

system 'clear'

nouns = ['trojan', 'traceroute', 'mainframe', 'GUI', 'packet', 'script', 'program', 'backdoor',
		 'terminal', 'router', 'fiberoptic', 'modem', 'file', 'algorithm', 'IP', 'application',
		 'backup', 'bandwidth', 'bitmap', 'broadband', 'buffer', 'bug', 'cache', 'botnet',
		 'network', 'client', 'server', 'cloud', 'command', 'cookie', 'CPU', 'RAM',
		 'harddrive', 'motherboard', 'database', 'document', 'domain', 'matrix', 'DVD', 'email',
		 'encryption', 'firewall', 'firmware', 'floppy drive', 'framework', 'malware',
		 'home page', 'host', 'kernal', 'keyword', 'login', 'logic', 'macro', 'node',
		 'OS', 'platform', 'plug-in', 'portal', 'process', 'protocol', 'routine', 'software',
		 'shell', 'filter', 'spyware', 'syntax', 'tag', 'thread', 'UNIX', 'interface', 'URL',
		 'utility', 'virus', 'wiki', 'worm', 'j.query', 'javascript', 'python', 'library',
		 'accumulator', 'admin', 'AI', 'alias', 'app', 'ASCII', 'avatar', 'batch', 'BBS',
		 'benchmark', 'block', 'box', 'stack', 'chain', 'channel', 'operator',
		 'output', 'console', 'cycle', 'daemon', 'deck', 'distro', 'dongle', 'driver', 'executable',
		 'foo', 'variable', 'subsystem', 'glitch', 'handle', 'hash', 'machine', 'IRC', 'memory',
		 'line', 'droid', 'tape', 'mod', 'MS-DOS', 'parameter', 'patch', 'path', 'pixel', 'regex',
		 'replicator', 'robot', 'salt', 'sandbox', 'segfault', 'segment', 'archive', 'sig block',
		 'silo', 'spam', 'spool', 'subroutine', 'user', 'system', 'sysop', 'TCP/IP',
		 'PCB', 'DNS', 'ARP', 'TLA', 'Usenet', 'bus', 'address', 'warez', 'wetware', 'widget',
		 'Windows']

verbs = ['hack', 'jack', 'trace', 'write', 'track', 'inject', 'code', 'program', 'upload', 'download',
		 'override', 'load', 'reformat', 'upgrade', 'ping', 'encrypt', 'decrypt', 'boot',
		 'buffer', 'compile', 'compress', 'configure', 'reconfigure', 'copy', 'debug', 'delete',
		 'develop', 'iterate', 'phish', 'reboot', 'restore', 'scan', 'fry', 'breach',
		 'compromise', 'burn', 'shock', 'bang', 'beep', 'biff', 'blast', 'blink', 'bogo-sort',
		 'dump', 'break', 'brute force', 'overflow', 'cascade', 'check', 'chomp', 'clock',
		 'clone', 'grind', 'crack', 'crash', 'crunch', 'rez', 'derez', 'dial', 'echo', 'flag',
		 'route', 'reroute', 'grep', 'run', 'hang', 'leak', 'leech', 'load', 'unload',
		 'nuke', 'overrun', 'parse', 'patch', 'phreak', 'poll', 'pop', 'push', 'cycle',
		 'punt', 'rasterize', 'retcon', 'search', 'archive', 'smash', 'sniff', 'spoof', 'spam',
		 'spike', 'stop', 'sync', 'telnet', 'test', 'toggle']

adjectives = ['analog', 'digital', 'visual', 'encrypted', 'unencrypted', 'bootleg', 
			  'reformated', 'upgraded', 'cracked', 'serial', 'binary', 'malicious', 'dynamic',
			  'open source', 'stickied', 'online', 'offline', 'real-time', 'root', 'runtime',
			  'alpha', 'beta', 'virtual', 'alt', 'atomic', 'fail', 'win', 'sub', 'cold',
			  'mobile', 'critical', 'cyber', 'elite', 'dead', 'locked', 'unlocked', 'deep',
			  'external', 'internal', 'FUBAR', 'hexidecimal', 'micro', 'macro', 'live', 'loaded',
			  'unloaded', 'mega', 'meta', 'nano', 'linear', 'nonlinear', 'obscure', 'optical',
			  'orthagonal', 'prime', 'pseudo', 'public', 'hidden', 'random', 'real', 'recursive',
			  'retroactive', 'semi', 'super', 'black hat', 'vanilla', 'wired', 'wireless', 'read-only',
			  'read/write', 'write-only']


def counterhacker(noun1, noun2, noun3, noun4, noun5, verb1, verb2, verb3, verb4, adjective1, adjective2)
	
	puts "Somebody\'s trying to #{verb1} the #{noun1}."
	puts "Give me a second to #{verb2} a/n #{adjective1} #{noun2} using the #{noun3} so they can\'t #{verb3} it." 
	puts "Shit, they\'ve #{verb4}\'d past the #{noun2} and now it\'s #{adjective2}." 
	puts "Oh my god. There\'s #{noun4}s inside the #{noun5}."

end

def showoff(noun1, noun2, noun3, noun4, noun5, verb1, verb2, verb3, verb4, adjective1, adjective2, number1, number2)
	puts "They call me #{noun1}-#{verb1}, because I can #{verb2} a/n #{noun2} in under"
	puts "#{number1} minutes. One time I #{verb3}'d a/n #{adjective1} #{noun3} using only a/n #{noun4}."
	puts "When I was nine I was already #{verb4}ing #{number2} #{noun5}s at once. I'm 100% #{adjective2}."
end

def tracer(noun1, noun2, noun3, noun4, verb1, verb2, verb3, verb4, verb5, adjective1, adjective2)
	puts "If you give me a/n #{noun1} I can #{verb1} the #{adjective1} #{noun2} with "
	puts "#{noun3}s. It's tricky, but if I #{verb2} and #{verb3} while it\'s still #{adjective2}"
	puts "I should be able to #{verb4} it. That is, of course, as long as the #{noun4} doesn\'t #{verb5}."
end


template = rand(3)

if template == 0
	noun1 = nouns.delete_at(rand(nouns.length-1))
	noun2 = nouns.delete_at(rand(nouns.length-1))
	noun3 = nouns.delete_at(rand(nouns.length-1))
	noun4 = nouns.delete_at(rand(nouns.length-1))
	noun5 = nouns.delete_at(rand(nouns.length-1))

	verb1 = verbs.delete_at(rand(verbs.length-1))
	verb2 = verbs.delete_at(rand(verbs.length-1))
	verb3 = verbs.delete_at(rand(verbs.length-1))
	verb4 = verbs.delete_at(rand(verbs.length-1))

	adjective1 = adjectives.delete_at(rand(adjectives.length-1))
	adjective2 = adjectives.delete_at(rand(adjectives.length-1))

	counterhacker(noun1, noun2, noun3, noun4, noun5, verb1, verb2, verb3, verb4, adjective1, adjective2)
end

if template == 1
	noun1 = nouns.delete_at(rand(nouns.length-1))
	noun2 = nouns.delete_at(rand(nouns.length-1))
	noun3 = nouns.delete_at(rand(nouns.length-1))
	noun4 = nouns.delete_at(rand(nouns.length-1))
	noun5 = nouns.delete_at(rand(nouns.length-1))

	verb1 = verbs.delete_at(rand(verbs.length-1))
	verb2 = verbs.delete_at(rand(verbs.length-1))
	verb3 = verbs.delete_at(rand(verbs.length-1))
	verb4 = verbs.delete_at(rand(verbs.length-1))

	adjective1 = adjectives.delete_at(rand(adjectives.length-1))
	adjective2 = adjectives.delete_at(rand(adjectives.length-1))

	number1 = rand(1..30)
	number2 = rand(2..10)

    showoff(noun1, noun2, noun3, noun4, noun5, verb1, verb2, verb3, verb4, adjective1, adjective2, number1, number2)
end

if template == 2
	noun1 = nouns.delete_at(rand(nouns.length-1))
	noun2 = nouns.delete_at(rand(nouns.length-1))
	noun3 = nouns.delete_at(rand(nouns.length-1))
	noun4 = nouns.delete_at(rand(nouns.length-1))

	verb1 = verbs.delete_at(rand(verbs.length-1))
	verb2 = verbs.delete_at(rand(verbs.length-1))
	verb3 = verbs.delete_at(rand(verbs.length-1))
	verb4 = verbs.delete_at(rand(verbs.length-1))
	verb5 = verbs.delete_at(rand(verbs.length-1))

	adjective1 = adjectives.delete_at(rand(adjectives.length-1))
	adjective2 = adjectives.delete_at(rand(adjectives.length-1))

	tracer(noun1, noun2, noun3, noun4, verb1, verb2, verb3, verb4, verb5, adjective1, adjective2)
end

if template == 3

end
puts ''