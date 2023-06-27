package main

import "fmt"

func countVowels(str string) int {
	count := 0
	vowels := []rune{'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'}

	for _, char := range str {
		for _, vowel := range vowels {
			if char == vowel {
				count++
				break
			}
		}
	}

	return count
}

func main() {
	word := "OpenAI"
	vowelCount := countVowels(word)
	fmt.Printf("Количество гласных букв в слове %s: %d\n", word, vowelCount)
}
