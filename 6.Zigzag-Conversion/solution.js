/*
the problem link:
https://leetcode.com/problems/zigzag-conversion
*/

function zigzagConversion(s, numRows) {
  // special condition
  if (numRows === 1) return s;

  // create the list of rows
  const rows = new Array(numRows).fill("");

  // hold the current row index
  let currentRow = 0;

  // konwing want need to do: up (-1) or down (1)
  let direction = 1;

  for (const char of s) {
    rows[currentRow] += char;

    if (currentRow === 0) direction = 1;
    else if (currentRow === numRows - 1) direction = -1;
    currentRow += direction;
  }
  return rows.join("");
}

console.log(zigzagConversion("AdelJArour", 3));
