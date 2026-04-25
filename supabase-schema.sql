create table profiles (
  id uuid primary key,
  email text unique,
  plan text default 'free',
  qr_limit int default 2,
  created_at timestamp default now()
);

create table qr_codes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade,
  title text,
  type text,
  destination text,
  scans int default 0,
  is_dynamic boolean default true,
  created_at timestamp default now()
);

create table subscriptions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade,
  plan text,
  price numeric,
  active boolean default true,
  created_at timestamp default now()
);
