import 'dart:math';

class DataColors {
  static String generateRandomColor() {
    Random random = Random();
    int randomColor = random.nextInt(0xFFFFFF); 
    return randomColor.toRadixString(16).padLeft(6, '0'); 
  }
}



 List<Map<String, dynamic>> colorPalettes = [
    {
      'colors': ['fe5f55', 'f0d5c9', '3e4095', '9b5de5', '48cae4'],
      'description': 'Contrasting warm and cool tones for a bold appearance.',
    },
    {
      'colors': ['264653', '2a9d8f', 'e9c46a', 'f4a261', 'e76f51'],
      'description': 'Earthy and muted colors for a grounded atmosphere.',
    },
    {
      'colors': ['003049', 'd62828', 'f77f00', 'fcbf49', 'eae2b7'],
      'description': 'Warm and fiery palette for a bold and energetic vibe.',
    },
    {
      'colors': ['2d4059', '40916c', 'ffd460', 'ff9b55', 'e84a5f'],
      'description': 'Bold and contrasting colors for a modern look.',
    },
    {
      'colors': ['0081a7', '00afb9', 'fdfcdc', 'fed9b7', 'f07167'],
      'description': 'Cool and refreshing colors for a calming effect.',
    },
    {
      'colors': ['303960', '3a4a63', 'a5aad9', 'b1cc74', 'fec5bb'],
      'description': 'Harmonious blend of cool and warm tones.',
    },
    {
      'colors': ['a3de83', 'eff9c0', 'ffd3b6', 'ffaaa5', 'ff8b94'],
      'description': 'Pastel hues for a soft and elegant atmosphere.',
    },
    {
      'colors': ['6a0572', 'ab83a1', 'c3aed6', 'd9d2e9', 'e3ebf6'],
      'description': 'Mystical and dreamy shades for a magical feel.',
    },
    {
      'colors': ['f5af19', 'f9dc5c', 'fbe28a', 'f5b2c0', 'f19cbb'],
      'description': 'Warm and sunny colors for a cheerful ambiance.',
    },
    {
      'colors': ['2f4858', '33658a', '86bbd8', '96ceb4', 'dcedc1'],
      'description': 'Tranquil ocean-inspired palette for a serene look.',
    },
    {
      'colors': ['f26a8d', 'f4c2c2', 'ffe6e3', 'd6d1cd', 'b4a0e5'],
      'description': 'Soft and feminine colors for an elegant touch.',
    },
    {
      'colors': ['3c3c3c', '515151', '667476', '8c8c8c', 'b5b5b5'],
      'description': '',
    },
     {
    'colors': ['7fcd91', 'c2e7da', '82aba1', '507f83', '2e2e38'],
    'description': 'Refreshing greens and blues for a tranquil and natural vibe.',
  },
  {
    'colors': ['4a4e69', '6b7a8f', 'a7c5eb', 'b0ca87', 'd3f3ee'],
    'description': 'Soft and muted pastels for a gentle and calming atmosphere.',
  },
  {
    'colors': ['b8f2e6', 'a7e9af', 'd8f77a', 'f7dd72', 'f6a6a6'],
    'description': 'Lively mix of green, yellow, and pink for a playful and energetic mood.',
  },
  {
    'colors': ['6a0572', 'ab83a1', 'c3aed6', 'd9d2e9', 'e3ebf6'],
    'description': 'Mystical and dreamy shades for a magical feel.',
  },
  {
    'colors': ['ff8c42', 'd25b53', '6a0572', '5e7f5e', 'bee3db'],
    'description': 'Vibrant and contrasting hues for a bold and dynamic appearance.',
  },
  {
    'colors': ['ff3e3e', 'ff9233', 'fed766', '48dbfb', '0abde3'],
    'description': 'Energetic and fiery palette for a lively and adventurous setting.',
  },
  {
    'colors': ['654062', '826c7f', 'a7869f', 'c6b6d7', 'f5e1f4'],
    'description': 'Rich and sophisticated purples for an elegant and luxurious touch.',
  },
  {
    'colors': ['f38181', 'fce38a', 'eaffd0', '95e1d3', '6ddad3'],
    'description': 'Cheerful and pastel palette for a bright and positive ambiance.',
  },
  {
    'colors': ['fcf876', 'f99f71', 'f57979', 'a64942', '503638'],
    'description': 'Warm and earthy tones for a cozy and inviting atmosphere.',
  },
  {
    'colors': ['1e272e', '485460', '8395a7', 'd2dae2', 'f1f2f6'],
    'description': 'Sophisticated grayscale for a modern and minimalist look.',
  },
   {
    'colors': ['ff3e4d', 'ff6f61', 'ffa07a', 'ffd700', 'ffebcd'],
    'description': 'Warm and vibrant reds and yellows for a lively and energetic feel.',
  },
  {
    'colors': ['3d5a80', '98c1d9', 'e0fbfc', 'ee6c4d', '293241'],
    'description': 'Cool blues and warm coral tones for a balanced and harmonious look.',
  },
  {
    'colors': ['c9cba3', 'ffe156', '6a0572', 'ab83a1', 'e4e6e7'],
    'description': 'A blend of soft pastels and a pop of purple for a dreamy and romantic atmosphere.',
  },
  {
    'colors': ['ffd166', '06d6a0', '118ab2', '073b4c', 'ef476f'],
    'description': 'Bright and contrasting colors for a modern and bold design.',
  },
  {
    'colors': ['f0a6ca', 'a7c5eb', 'f4acb7', 'b0ca87', 'e8f1d4'],
    'description': 'Pastel pinks and blues with a touch of green for a sweet and fresh ambiance.',
  },
  {
    'colors': ['fa877f', 'f9b1ab', 'dcd6f7', 'a6c1ee', '8c72cb'],
    'description': 'Soft and muted purples for a calming and sophisticated setting.',
  },
  {
    'colors': ['ffd700', 'ff8c42', '1f2833', '6a0572', 'ab83a1'],
    'description': 'Bold golds and purples with dark accents for a luxurious and dramatic style.',
  },
  {
    'colors': ['e44d26', 'f16529', 'f89c59', 'fbbf87', 'f9d6ac'],
    'description': 'Warm and inviting orange tones for a cozy and welcoming atmosphere.',
  },
  {
    'colors': ['ffd460', 'e84a5f', '2d4059', '40916c', 'fec5bb'],
    'description': 'A mix of bold and muted colors for a modern and balanced appearance.',
  },
  {
    'colors': ['8e44ad', '3498db', '2ecc71', 'f39c12', 'c0392b'],
    'description': 'Contrasting shades for a vibrant and dynamic color palette.',
  },
   {
    'colors': ['2b2e4a', 'e84545', '903749', '53354a', '9a8c98'],
    'description': 'Rich and moody purples and reds for a dramatic and intense atmosphere.',
  },
  {
    'colors': ['1a535c', '4ecdc4', 'f7fff7', 'ff6b6b', 'ffe66d'],
    'description': 'Ocean-inspired blues and greens with warm accents for a soothing and vibrant look.',
  },
  {
    'colors': ['283d3b', '197278', 'edddd4', 'c44536', '772e25'],
    'description': 'Earthy tones with a pop of coral for a grounded and energetic vibe.',
  },
  {
    'colors': ['96bb7c', 'd1e3a9', 'e1eec3', 'f4f9f0', 'bccbde'],
    'description': 'Soft greens and blues for a fresh and natural aesthetic.',
  },
  {
    'colors': ['eb6b56', 'd8a7ca', '1b1b3a', '6a0572', 'ab83a1'],
    'description': 'Contrasting deep purples and bold reds for a strong and dynamic palette.',
  },
  {
    'colors': ['424b54', '9ca1a6', 'd1d7dc', 'f7f7ff', '7e8287'],
    'description': 'Neutral grays with a touch of blue for a modern and sophisticated feel.',
  },
  {
    'colors': ['a8dadc', 'f4a261', '2a9d8f', 'e9c46a', 'e76f51'],
    'description': 'Warm and cool tones in harmony for a balanced and inviting ambiance.',
  },
  {
    'colors': ['3d5a80', '98c1d9', 'e0fbfc', '293241', 'ee6c4d'],
    'description': 'Cool blues and warm coral tones for a balanced and harmonious look.',
  },
  {
    'colors': ['e63946', 'f1faee', 'a8dadc', '457b9d', '1d3557'],
    'description': 'Contrasting reds and blues for a bold and modern appearance.',
  },
  {
    'colors': ['f48c06', 'd00000', '457b9d', '1d3557', '0d3b66'],
    'description': 'Warm oranges and deep blues for a striking and dynamic palette.',
  },
  {
    'colors': ['fe938c', 'e6b89c', 'a2a9af', '7389ae', '597081'],
    'description': 'Soft and muted pastels for a gentle and calming atmosphere.',
  },
  {
    'colors': ['a2a9af', '7389ae', '597081', '354f52', '2d4059'],
    'description': 'Cool and muted tones for a tranquil and serene environment.',
  },
  {
    'colors': ['00798c', '00a8cc', 'f2e3c6', 'ecbb89', 'd74f70'],
    'description': 'Ocean-inspired palette with warm sandy tones for a beachy and relaxing feel.',
  },
  {
    'colors': ['70a1ff', '7f7fd5', '9775fa', 'b19cd9', 'dfe4ea'],
    'description': 'Soft and dreamy purples and blues for a magical and enchanting look.',
  },
  {
    'colors': ['f38181', 'fce38a', 'eaffd0', '95e1d3', '6ddad3'],
    'description': 'Cheerful and pastel palette for a bright and positive ambiance.',
  },
  {
    'colors': ['faedcd', 'b3c7b6', '848c8e', '575761', '45484b'],
    'description': 'Neutral and earthy tones for a minimalist and calming aesthetic.',
  },
  {
    'colors': ['fe8a71', 'f6cd61', 'fedb8a', 'a5dfd6', '71a95a'],
    'description': 'Warm and sunny hues with a touch of green for a lively and cheerful atmosphere.',
  },
  {
    'colors': ['364f6b', '3fc1c9', 'fc5185', '2c3e50', 'f4f4f8'],
    'description': 'Contrasting shades for a bold and modern color scheme.',
  },
  {
    'colors': ['1d2d50', '1f4068', '4b7bec', '44bd32', '78e08f'],
    'description': 'Deep blues and vibrant greens for a fresh and invigorating atmosphere.',
  },
  {
    'colors': ['fde74c', 'e84a5f', '2d4059', '40916c', 'fec5bb'],
    'description': 'A mix of bold and muted colors for a modern and balanced appearance.',
  },
  ];