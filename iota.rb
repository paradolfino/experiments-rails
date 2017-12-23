

def detect_file
   mod = Dir.glob("*").max_by {|f| File.mtime(f)}
   mod = mod.split('/')
   commit_loop(mod.pop)
end

def commit_loop(ref)
    sleep 1
    system "git add ."
    sleep 1
    system "git commit -m \"modify #{ref}\""
end

loop do
    detect_file
end
#Dir.glob("*").max_by {|f| File.mtime(f)}
#Dir.glob("#{Dir.pwd}**/").max_by {|f| File.mtime(f)}
#Dir.glob("*/*").max_by {|f| File.mtime(f)}