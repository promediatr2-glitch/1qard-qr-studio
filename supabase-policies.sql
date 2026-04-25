alter table profiles enable row level security;
alter table qr_codes enable row level security;
alter table subscriptions enable row level security;

create policy "users own profile"
on profiles
for all
using (auth.uid() = id);

create policy "users own qr"
on qr_codes
for all
using (auth.uid() = user_id);

create policy "users own subscription"
on subscriptions
for all
using (auth.uid() = user_id);
