long_text = <<DOC
Lemurs, lorises, and galagos are not monkeys; instead they are strepsirrhine ("wet-nosed") primates. Like monkeys, tarsiers are haplorhine primates; however, they are also not monkeys. There are two major types of monkey: New World monkeys (platyrrhines) from South and Central America and Old World monkeys (catarrhines of the superfamily Cercopithecoidea) from Africa and Asia. Hominoid apes (gibbons, orangutans, gorillas, chimpanzees, and humans), which all lack tails, are also catarrhines but are not considered monkeys.[3] (Tailless monkeys may be called "apes", incorrectly according to modern usage; thus the tailless Barbary macaque is sometimes called the "Barbary ape".) Because old world monkeys are more closely related to hominoid apes than to new world monkeys, yet the term "monkey" excludes these closer relatives, monkeys are referred to as a paraphyletic group. Simians ("monkeys") and tarsiers emerged within haplorrhines some 60 million years ago. New world monkeys and catarrhine monkeys emerged within the simians some 35 millions years ago. Old world monkeys and Hominoidea emerged within the catarrhine monkeys some 25 millions years ago. Extinct basal simians such as Aegyptopithecus or Parapithecus are also considered monkeys by primatologists.
DOC

results ={words: 0, spaces: 0, vowels: 0, consonants: 0}
h ={}

# First, loop through each line of the text
long_text.each_line do |current_line|
  # for each line, split the sentence into an array of words
  words = current_line.split
  # ["primates", "are", "the", "best"]
  words.each do |w|
    results[:words] += 1
    w = w.tr('^A-Za-z0-9', '').downcase
    if h.has_key?(w)
      h[w] = h[w] + 1
    else
      h[w] = 1
    end
  end
end
vowel_counter = 0

for i in 0...long_text.length
    a =['a','e','i','o', 'u']
    # for x in 0...a.length
        # if long_text[i].downcase == a[x]
        #     vowel_counter += 1
        # end

        if a.includes?(long_text[i])
            vowel_counter += 1
        end
    end
end
long_text.split.count

results[:vowels] = long_text.scan(/[aeiou]/).count
# results[:consonants] = long_text.scan(/[^AEIOU]/).count
results[:consonants] = long_text.scan(/[a-z]/).count - results[:vowels] 
results[:spaces] = long_text.scan(/\s/).count

results[:most_used] = h.max_by{|k,v| v}
puts results