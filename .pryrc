Pry.config.editor = "mate"

def histogram ary
  h = Hash.new
  ary.uniq.each do |val|
    h[val] = ary.count(val)
  end
  h.to_a.sort_by(&:last).reverse.to_h
end


def phistogram ary
  puts "key => count"

  histogram(ary).each do |k, v|
    puts [k, " => ", v].join
  end

  nil
end

def in_common *hashes
  hashes = Array(hashes).flatten

  inverted_idx = Hash.new

  hashes.each do |hash|
    hash.each do |key, val|
      next if val.is_a? Hash
      next if val.is_a? Array

      idx = [key, val]
      inverted_idx[idx] ||= 0
      inverted_idx[idx] += 1
    end
  end

  # inverted_idx.select do |key, count|
  #   count > 1
  # end.to_h

  inverted_idx.sort_by { |k, v| -v }.to_h
end

def count_queries &block
  count = 0

  counter_f = ->(name, started, finished, unique_id, payload) {
    unless %w[ CACHE SCHEMA ].include?(payload[:name])
      count += 1
    end
  }

  ActiveSupport::Notifications.subscribed(
    counter_f,
    "sql.active_record",
    &block
  )

  count
end
