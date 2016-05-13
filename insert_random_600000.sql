begin
  for idx in 1..500000 LOOP
    insert into defects (name, description)
    values (dbms_random.string('A', 25), dbms_random.string('A', 250));
    if mod(idx, 1000) = 0 then 
      commit;
    end if; 
    END LOOP;
  end;
