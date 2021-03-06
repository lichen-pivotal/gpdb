begin;
CREATE UNIQUE INDEX abort_create_needed_cr_heap_unq_idx1 ON abort_create_needed_cr_heap_table_unique_index (numeric_col);
insert into abort_create_needed_cr_heap_table_unique_index select i||'_'||repeat('text',100),i,i||'_'||repeat('text',3),i,i,i,'{3}',i,i,i,'2006-10-19 10:23:54', '2006-10-19 10:23:54+02', '1-1-2002' from generate_series(101,200)i;
commit;
drop index abort_create_needed_cr_heap_unq_idx1;
drop table abort_create_needed_cr_heap_table_unique_index;
