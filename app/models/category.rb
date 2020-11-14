class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'SF/ファンタジー' },
    { id: 3, name: '恋愛/ラブコメ' },
    { id: 4, name: '日常/ほのぼの' },
    { id: 5, name: 'アクション/バトル' },
    { id: 6, name: 'スポーツ/競技' },
    { id: 7, name: 'コメディ/ギャグ' },
    { id: 8, name: '戦争/ミリタリー' },
    { id: 9, name: 'ドラマ/青春' },
    { id: 10, name: 'ショート' },
    { id: 11, name: 'その他'}
  ]
end