local group = std.range(1, 24);
local data = [
  { age: 19, group: 'ИКБО-4-20', name: 'Иванов И.И.' },
  { age: 18, group: 'ИКБО-5-20', name: 'Петров П.П.' },
  { age: 18, group: 'ИКБО-5-20', name: 'Сидоров С.С.' },
  { age: 20, group: 'ИКБО-31-20', name: 'Лебедев Л.Л.' },
];

{
  groups: [
    'ИКБО-%d-20' % [x]
    for x in group
  ],
  students: [
    { age: dt.age, group: dt.group, name: dt.name }
    for dt in data
  ],
  subject: 'Конфигурационное управление',
}
