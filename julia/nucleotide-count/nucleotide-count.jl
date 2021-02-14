"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    strand = uppercase(strand)

    # Check for invalid letters
    any_invalid = any([!occursin(letter, "ACGT") for letter in strand])
    if any_invalid == true
        throw(DomainError(strand, "Contains invalid nucleotide."))
    end

    # Count the number of each letter in strand
    nucleotide_count = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    
    for nucleotide in "ACGT"
        nucleotide_count[nucleotide] = sum([letter == nucleotide for letter in strand])
    end

    nucleotide_count
end
