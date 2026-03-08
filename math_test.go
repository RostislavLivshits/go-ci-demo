package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestSum(t *testing.T) {
	result := Sum(2, 3)
	assert.Equal(t, 5, result)
}
