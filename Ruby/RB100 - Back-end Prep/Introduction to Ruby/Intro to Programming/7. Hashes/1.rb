family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

sibs = family.select { |k, v| k == :sisters || k == :brothers }

p sibs.values.flatten