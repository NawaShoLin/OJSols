def current_length(layers, layer)
  layers[0..layer].reduce(layer, :+)
end

# @param {String} input
# @return {Integer}
def length_longest_path(input)
  lines = input.split("\n")
  layers = []
  longest = 0
  lines.each do |line|
    layer = line.count("\t")
    len = line.length - layer
    layers[layer] = len
    if line.includes(".")
      total_len = current_length(layers, layer)
      longest = total_len > longest ? total_len : longest
    end
  end

  longest
end
