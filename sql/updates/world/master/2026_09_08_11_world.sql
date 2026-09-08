-- Aureon Core 0.2.3: deterministic corrections from DBErrors.log.
-- Persist loader fallbacks and remove ignored invalid values; do not delete missing-content references or invent loot.
START TRANSACTION;
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260084 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259980 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259995 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260087 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260201 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259992 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261019 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261198 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261081 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261040 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260486 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261052 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261000 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=240523 AND ((unit_flags3 & 1073741824)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259948 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260292 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=17023 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=17377 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=17416 AND ((unit_flags & 32768)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260814 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=17534 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=17603 AND ((unit_flags & 32768)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259939 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259899 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259963 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260922 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=18607 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=18613 AND ((unit_flags & 32768)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260330 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260334 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260242 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260887 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260382 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260404 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4227858431 WHERE entry=237204 AND ((unit_flags3 & 67108864)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260377 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260465 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=153582 AND ((unit_flags & 32768)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260288 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=21215 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=255010 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=21806 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=21812 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=21865 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=21873 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=21875 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=21958 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=22009 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=22055 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=22056 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=153583 AND ((unit_flags & 32768)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260621 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260004 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260036 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259996 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259883 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260936 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260007 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260071 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260143 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=253646 AND ((unit_flags3 & 1073741825)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260158 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260118 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260337 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260222 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260245 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260907 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260883 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260072 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=261055 AND ((unit_flags3 & 1073741825)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260939 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261003 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260847 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260859 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260434 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261229 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261302 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261020 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261963 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260099 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261065 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 1073741823 WHERE entry=237725 AND ((unit_flags3 & 3221225472)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260316 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=246284 AND ((unit_flags3 & 1073741824)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261069 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260041 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=249411 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=32893 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=32897 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=32900 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=32901 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=32941 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=32946 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=32948 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=32950 AND ((unit_flags & 32768)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261685 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=33325 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=33326 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=33327 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=33328 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=33330 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=33331 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=33332 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=33333 AND ((unit_flags & 32768)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260197 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260289 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260170 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260317 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259928 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260672 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261044 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260011 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260012 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260064 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260999 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260992 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260680 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=255827 AND ((unit_flags3 & 1073741825)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261036 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261064 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260627 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260771 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=39887 AND ((unit_flags3 & 1)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260899 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261035 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260652 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260442 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260586 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=40664 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=255322 AND ((unit_flags3 & 1073741825)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261333 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259935 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=241042 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=244041 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 1073741823 WHERE entry=246467 AND ((unit_flags3 & 3221225472)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260879 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260943 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=246861 AND ((unit_flags3 & 1073741824)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=246360 AND ((unit_flags3 & 1073741824)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=242173 AND ((unit_flags3 & 1073741824)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259864 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260008 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260454 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260333 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260253 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260980 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260888 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260763 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260461 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260421 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260110 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260338 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260282 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260286 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260891 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260788 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260241 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=242177 AND ((unit_flags3 & 1073741824)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=252524 AND ((unit_flags3 & 1073741824)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260342 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260196 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=254927 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=210931 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3212836862 WHERE entry=253159 AND ((unit_flags3 & 1082130433)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=210930 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4286578687 WHERE entry=247572 AND ((unit_flags3 & 8388608)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=245698 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=245750 AND ((unit_flags3 & 1073741825)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260816 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=253478 AND ((unit_flags3 & 1073741824)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=245556 AND ((unit_flags3 & 1)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260145 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260913 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259865 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263197 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=256995 AND ((unit_flags3 & 1073741825)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260885 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260346 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260246 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260136 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260100 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260573 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260829 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=254923 AND ((unit_flags3 & 1)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259885 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259949 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=256045 AND ((unit_flags3 & 1073741824)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=254680 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=255021 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=247257 AND ((unit_flags3 & 1073741824)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260828 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260638 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261683 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261115 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4286578687 WHERE entry=248605 AND ((unit_flags3 & 8388608)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260116 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263651 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260572 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259986 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260824 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260630 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260086 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260038 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259990 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260909 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=264213 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260893 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260925 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260350 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260290 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260318 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260459 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260463 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260415 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260853 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260639 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263938 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260880 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260339 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260291 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=262221 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260097 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259994 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261153 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260849 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260817 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260659 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261058 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261066 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260059 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260908 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259945 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260916 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260351 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260247 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260335 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260311 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=255024 AND ((unit_flags3 & 1)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260462 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260414 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260358 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260313 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=262207 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263218 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=262206 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=262337 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263219 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=153238 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=153239 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=153242 AND ((unit_flags & 32768)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263199 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=153581 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags=unit_flags & 4294934527 WHERE entry=154103 AND ((unit_flags & 32768)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=158513 AND ((unit_flags3 & 1073741824)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260345 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259893 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260098 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260040 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=262171 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=209603 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=255026 AND ((unit_flags3 & 1)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261068 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=254924 AND ((unit_flags3 & 1)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263198 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=209791 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=213786 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4286578686 WHERE entry=234660 AND ((unit_flags3 & 8388609)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=234893 AND ((unit_flags3 & 1073741824)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263940 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4227858431 WHERE entry=237201 AND ((unit_flags3 & 67108864)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 1073741823 WHERE entry=237330 AND ((unit_flags3 & 3221225472)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 1073741823 WHERE entry=241751 AND ((unit_flags3 & 3221225472)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=242175 AND ((unit_flags3 & 1073741824)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=244036 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=244061 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=244550 AND ((unit_flags3 & 1073741824)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=244941 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4227858431 WHERE entry=245116 AND ((unit_flags3 & 67108864)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=245514 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4286578687 WHERE entry=245569 AND ((unit_flags3 & 8388608)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=245638 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=245716 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=245825 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=246277 AND ((unit_flags3 & 1073741824)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=246409 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=247012 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4286578687 WHERE entry=247570 AND ((unit_flags3 & 8388608)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263941 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=248897 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=248908 AND ((unit_flags3 & 1073741825)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225471 WHERE entry=248956 AND ((unit_flags3 & 1073741824)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=253164 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=253457 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4227858431 WHERE entry=253881 AND ((unit_flags3 & 67108864)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=254116 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=254929 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=255025 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=255027 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=255407 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=255420 AND ((unit_flags3 & 1)<>0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 3221225470 WHERE entry=257419 AND ((unit_flags3 & 1073741825)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259918 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259922 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259934 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259938 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259953 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259958 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259965 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259970 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259972 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259977 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259978 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259985 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=259997 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260000 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260001 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260003 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260005 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260006 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260009 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260010 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260013 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260014 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260015 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260016 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260027 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260028 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260029 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260030 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260031 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260037 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260039 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260069 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260073 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260076 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260077 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260085 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260106 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260159 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260168 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260171 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260172 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260180 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260183 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260187 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260192 AND (faction=0);
-- disallowed-template-flags
UPDATE creature_template SET unit_flags3=unit_flags3 & 4294967294 WHERE entry=260195 AND ((unit_flags3 & 1)<>0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260198 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260207 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260212 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260217 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260236 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260240 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260248 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260259 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260264 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260275 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260277 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260279 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260285 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260287 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260312 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260327 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260328 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260329 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260331 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260332 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260336 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260340 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260341 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260352 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260360 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260375 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260376 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260381 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260384 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260416 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260427 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260436 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260464 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260473 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260475 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260476 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260477 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260479 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260480 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260482 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260488 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260489 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260491 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260493 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260506 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260507 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260519 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260524 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260535 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260576 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260625 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260629 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260640 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260645 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260677 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260679 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260770 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260815 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260830 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260846 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260878 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260881 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260882 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260886 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260889 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260906 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260928 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260929 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260933 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260934 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260935 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260937 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260938 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260942 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260944 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260945 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260947 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260953 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260957 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260958 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260971 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260977 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260978 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260981 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260997 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=260998 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261001 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261002 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261018 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261032 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261033 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261034 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261037 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261038 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261039 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261041 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261042 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261045 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261050 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261051 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261053 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261131 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261204 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261255 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261256 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261263 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261303 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261304 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261332 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261364 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=261519 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=262208 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=262209 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=262340 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=262343 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263228 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263652 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263743 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263936 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=263937 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=264111 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=264170 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=264189 AND (faction=0);
-- persist-runtime-faction-fallback
UPDATE creature_template SET faction=35 WHERE entry=264499 AND (faction=0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=86698 AND (id=23582 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=86699 AND (id=23542 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=86700 AND (id=23582 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89259 AND (id=23581 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89260 AND (id=23582 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89261 AND (id=23542 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89262 AND (id=23582 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89263 AND (id=23580 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89264 AND (id=23580 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89268 AND (id=23580 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89269 AND (id=23581 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89270 AND (id=23581 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=89271 AND (id=23580 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=142800 AND (id=15471 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=142801 AND (id=15473 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=142802 AND (id=15473 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=142803 AND (id=15473 AND (unit_flags & 32768)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags=unit_flags & 4294934527 WHERE guid=142804 AND (id=15473 AND (unit_flags & 32768)<>0);
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051943 AND (id=156821 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051944 AND (id=156825 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051945 AND (id=156828 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051946 AND (id=156825 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051947 AND (id=168740 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051948 AND (id=168740 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051949 AND (id=157328 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051950 AND (id=156821 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051951 AND (id=156825 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051952 AND (id=168738 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051953 AND (id=168738 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051954 AND (id=156821 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051955 AND (id=156501 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051956 AND (id=156825 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051957 AND (id=156814 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051958 AND (id=157328 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051959 AND (id=157300 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051960 AND (id=165198 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051961 AND (id=168740 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051962 AND (id=168738 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051963 AND (id=168738 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051964 AND (id=168738 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051965 AND (id=166262 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051966 AND (id=166262 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051967 AND (id=168740 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051968 AND (id=166262 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051969 AND (id=168738 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051970 AND (id=166262 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051971 AND (id=168740 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051972 AND (id=168740 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051973 AND (id=166262 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051974 AND (id=166262 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051975 AND (id=166262 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051976 AND (id=166262 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051977 AND (id=168740 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051978 AND (id=168738 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=1051979 AND (id=168738 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000041 AND (id=162817 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000042 AND (id=150245 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000043 AND (id=156800 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000044 AND (id=156807 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000045 AND (id=156808 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000046 AND (id=167142 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000047 AND (id=167212 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000048 AND (id=167216 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000049 AND (id=167217 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000050 AND (id=167213 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000051 AND (id=167219 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000052 AND (id=167222 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000053 AND (id=167221 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000054 AND (id=167215 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000055 AND (id=167290 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000056 AND (id=167291 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000057 AND (id=167225 AND terrainSwapMap=0);
-- invalid-terrain-swap
UPDATE creature SET terrainSwapMap=-1 WHERE guid=8000058 AND (id=167226 AND terrainSwapMap=0);
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000930 AND (id=245394 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000931 AND (id=153211 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000932 AND (id=153964 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000933 AND (id=156882 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000942 AND (id=238913 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000951 AND (id=153580 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000952 AND (id=189022 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000953 AND (id=189035 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000954 AND (id=189021 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000955 AND (id=187252 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000956 AND (id=189058 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000957 AND (id=184449 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000958 AND (id=184452 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000959 AND (id=187257 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000960 AND (id=187261 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000961 AND (id=192055 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000962 AND (id=192438 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000963 AND (id=189055 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000964 AND (id=193707 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000965 AND (id=221967 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000966 AND (id=214031 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000967 AND (id=212899 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000968 AND (id=213620 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000969 AND (id=213625 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000970 AND (id=213624 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000971 AND (id=213625 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000972 AND (id=213627 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000973 AND (id=214651 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000974 AND (id=214669 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000975 AND (id=161350 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000976 AND (id=161504 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8000977 AND (id=245401 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002000 AND (id=153239 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002001 AND (id=153581 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002002 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002003 AND (id=153239 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002004 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002005 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002006 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002007 AND (id=153239 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002008 AND (id=153238 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002009 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002010 AND (id=153238 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002011 AND (id=153238 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002012 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002013 AND (id=153238 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002014 AND (id=153239 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002015 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002016 AND (id=153239 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002017 AND (id=153582 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002018 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002019 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002020 AND (id=153238 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002021 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002022 AND (id=154103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002023 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002024 AND (id=153239 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002025 AND (id=153242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002026 AND (id=153239 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002027 AND (id=153583 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002028 AND (id=153239 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002100 AND (id=184450 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002101 AND (id=184451 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=8002102 AND (id=187251 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9002551 AND (id=6491 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9002552 AND (id=6491 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003871 AND (id=191150 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003872 AND (id=191161 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003873 AND (id=191148 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003874 AND (id=194681 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003875 AND (id=187412 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003876 AND (id=194671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003877 AND (id=197743 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003878 AND (id=188904 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003879 AND (id=194652 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003880 AND (id=194650 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003881 AND (id=190575 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003882 AND (id=198146 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003883 AND (id=194688 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003884 AND (id=194685 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003885 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003886 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003887 AND (id=187135 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003888 AND (id=187135 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003889 AND (id=187135 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003890 AND (id=187135 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003891 AND (id=187135 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003892 AND (id=187123 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003893 AND (id=187123 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003894 AND (id=194674 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003895 AND (id=194674 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003896 AND (id=194674 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003897 AND (id=195830 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003898 AND (id=195830 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003899 AND (id=195830 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003900 AND (id=195830 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003901 AND (id=195830 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003902 AND (id=194668 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=9003903 AND (id=194668 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- disallowed-spawn-flags
UPDATE creature SET unit_flags3=unit_flags3 & 4294967294 WHERE guid=11000554 AND (id=241808 AND (unit_flags3 & 1)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags3=unit_flags3 & 4294967294 WHERE guid=11000587 AND (id=241808 AND (unit_flags3 & 1)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags3=unit_flags3 & 1073741823 WHERE guid=11000807 AND (id=246467 AND (unit_flags3 & 3221225472)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags3=unit_flags3 & 1073741823 WHERE guid=11000820 AND (id=241751 AND (unit_flags3 & 3221225472)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags3=unit_flags3 & 1073741823 WHERE guid=11000821 AND (id=241751 AND (unit_flags3 & 3221225472)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags3=unit_flags3 & 1073741823 WHERE guid=11000822 AND (id=246467 AND (unit_flags3 & 3221225472)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags3=unit_flags3 & 1073741823 WHERE guid=11000823 AND (id=241751 AND (unit_flags3 & 3221225472)<>0);
-- disallowed-spawn-flags
UPDATE creature SET unit_flags3=unit_flags3 & 1073741823 WHERE guid=11000832 AND (id=237330 AND (unit_flags3 & 3221225472)<>0);
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11800156 AND (id=227342 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11800157 AND (id=161350 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900000 AND (id=236134 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900001 AND (id=252822 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900002 AND (id=235792 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900003 AND (id=236583 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900004 AND (id=256203 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900005 AND (id=256210 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900006 AND (id=256212 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900100 AND (id=243357 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900101 AND (id=243553 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900102 AND (id=243352 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900103 AND (id=243527 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900104 AND (id=243349 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900105 AND (id=241450 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900106 AND (id=243355 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900107 AND (id=241452 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900108 AND (id=243345 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900109 AND (id=241455 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900110 AND (id=243500 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900111 AND (id=257913 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900112 AND (id=239630 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900113 AND (id=247955 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900114 AND (id=243359 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900115 AND (id=243350 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900116 AND (id=243353 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900117 AND (id=243346 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900118 AND (id=241451 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900119 AND (id=241453 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900120 AND (id=241454 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900121 AND (id=243531 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900122 AND (id=239621 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900123 AND (id=239625 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900124 AND (id=239628 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900125 AND (id=239664 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900126 AND (id=239665 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900127 AND (id=257039 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900128 AND (id=257255 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900129 AND (id=257262 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900130 AND (id=257264 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900131 AND (id=243290 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900132 AND (id=241393 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11900133 AND (id=240832 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902000 AND (id=60761 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902001 AND (id=60761 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902002 AND (id=60761 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902003 AND (id=60761 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902004 AND (id=60761 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902005 AND (id=60761 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902006 AND (id=60761 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902011 AND (id=184639 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902012 AND (id=184812 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902013 AND (id=184813 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902014 AND (id=184813 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902015 AND (id=184813 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902016 AND (id=184813 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902017 AND (id=184814 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902018 AND (id=184814 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902019 AND (id=184814 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902020 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902021 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902022 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902024 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902025 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902026 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902027 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902028 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902029 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902030 AND (id=184851 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902031 AND (id=184853 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902032 AND (id=184855 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902033 AND (id=184856 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902034 AND (id=184856 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902035 AND (id=184856 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902036 AND (id=184856 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902037 AND (id=184857 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902038 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902039 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902040 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902041 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902042 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902043 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902044 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902045 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902046 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902047 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902048 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902049 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902050 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902052 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902053 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902054 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902057 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902058 AND (id=184861 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902059 AND (id=184869 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902060 AND (id=184869 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902061 AND (id=184869 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902062 AND (id=184870 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902063 AND (id=185773 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902064 AND (id=185774 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902065 AND (id=187061 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902066 AND (id=187061 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902067 AND (id=187062 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902068 AND (id=187062 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902069 AND (id=187121 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902070 AND (id=187121 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902072 AND (id=187123 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902073 AND (id=187125 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902074 AND (id=187125 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902075 AND (id=187135 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902076 AND (id=187135 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902081 AND (id=187140 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902083 AND (id=187193 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902084 AND (id=187193 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902085 AND (id=187193 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902086 AND (id=187193 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902087 AND (id=187193 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902088 AND (id=187194 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902089 AND (id=187194 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902090 AND (id=187194 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902091 AND (id=187194 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902092 AND (id=187194 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902093 AND (id=187196 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902094 AND (id=187196 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902095 AND (id=187196 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902096 AND (id=187196 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902097 AND (id=187229 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902098 AND (id=187234 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902099 AND (id=187235 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902100 AND (id=187236 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902103 AND (id=187253 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902104 AND (id=187254 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902105 AND (id=187255 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902108 AND (id=187321 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902109 AND (id=187321 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902111 AND (id=187321 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902112 AND (id=187321 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902113 AND (id=187321 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902114 AND (id=187321 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902115 AND (id=187321 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902116 AND (id=187321 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902117 AND (id=187321 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902118 AND (id=187322 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902119 AND (id=187322 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902120 AND (id=187322 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902121 AND (id=187322 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902122 AND (id=187322 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902123 AND (id=187322 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902124 AND (id=187322 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902125 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902126 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902127 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902128 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902129 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902130 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902131 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902132 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902133 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902134 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902135 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902137 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902138 AND (id=187326 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902140 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902141 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902142 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902143 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902144 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902145 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902146 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902147 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902148 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902149 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902150 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902152 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902153 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902154 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902155 AND (id=188027 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902156 AND (id=188057 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902157 AND (id=188057 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902158 AND (id=188057 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902160 AND (id=189002 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902164 AND (id=189037 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902165 AND (id=189052 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902166 AND (id=189053 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902169 AND (id=189059 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902170 AND (id=189060 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902171 AND (id=189093 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902172 AND (id=189093 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902173 AND (id=189093 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902174 AND (id=189093 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902175 AND (id=189093 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902176 AND (id=189093 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902177 AND (id=189093 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902178 AND (id=189094 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902179 AND (id=189554 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902180 AND (id=189798 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902181 AND (id=190056 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902182 AND (id=190526 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902183 AND (id=190532 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902184 AND (id=190535 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902185 AND (id=190565 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902186 AND (id=190565 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902187 AND (id=190565 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902188 AND (id=190571 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902190 AND (id=190577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902191 AND (id=190587 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902192 AND (id=190741 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902193 AND (id=190741 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902194 AND (id=190741 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902195 AND (id=190753 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902196 AND (id=191104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902198 AND (id=191104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902199 AND (id=191104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902200 AND (id=191104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902201 AND (id=191104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902202 AND (id=191104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902206 AND (id=191169 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902207 AND (id=191554 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902208 AND (id=191830 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902209 AND (id=191946 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902210 AND (id=192048 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902212 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902213 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902214 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902215 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902216 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902217 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902218 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902219 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902220 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902221 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902222 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902223 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902224 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902225 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902226 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902227 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902228 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902229 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902230 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902231 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902232 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902233 AND (id=192103 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902234 AND (id=192104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902235 AND (id=192104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902236 AND (id=192104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902237 AND (id=192104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902238 AND (id=192104 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902239 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902240 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902241 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902242 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902243 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902244 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902245 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902246 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902247 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902248 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902249 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902250 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902251 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902252 AND (id=192137 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902253 AND (id=192148 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902254 AND (id=192149 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902255 AND (id=192151 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902256 AND (id=192151 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902257 AND (id=192151 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902258 AND (id=192151 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902259 AND (id=192151 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902260 AND (id=192207 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902261 AND (id=192210 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902262 AND (id=192227 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902263 AND (id=192227 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902264 AND (id=192227 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902265 AND (id=192227 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902266 AND (id=192227 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902267 AND (id=192274 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902268 AND (id=192407 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902270 AND (id=192490 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902271 AND (id=192549 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902272 AND (id=192558 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902273 AND (id=192563 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902274 AND (id=192565 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902275 AND (id=193001 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902276 AND (id=193001 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902277 AND (id=193001 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902278 AND (id=193001 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902279 AND (id=193001 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902280 AND (id=193024 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902281 AND (id=193026 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902282 AND (id=193026 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902283 AND (id=193026 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902284 AND (id=193026 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902285 AND (id=193026 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902286 AND (id=193026 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902287 AND (id=193362 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902288 AND (id=193393 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902289 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902290 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902291 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902292 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902293 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902294 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902295 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902296 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902297 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902298 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902299 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902300 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902301 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902302 AND (id=193671 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902303 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902304 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902305 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902306 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902307 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902308 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902309 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902310 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902311 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902312 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902313 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902314 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902315 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902316 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902317 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902318 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902319 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902320 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902321 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902322 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902323 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902324 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902325 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902326 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902327 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902328 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902329 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902330 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902331 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902332 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902333 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902334 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902335 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902336 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902337 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902338 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902339 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902340 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902341 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902342 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902343 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902344 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902345 AND (id=193806 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902346 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902347 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902348 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902349 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902350 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902351 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902352 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902353 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902354 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902355 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902356 AND (id=193811 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902357 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902358 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902359 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902360 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902361 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902362 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902363 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902364 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902365 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902366 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902367 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902368 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902369 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902370 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902371 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902372 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902373 AND (id=193816 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902374 AND (id=193838 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902375 AND (id=193858 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902376 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902377 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902378 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902380 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902381 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902382 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902383 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902384 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902385 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902386 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902387 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902388 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902389 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902390 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902391 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902392 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902393 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902395 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902396 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902397 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902398 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902399 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902400 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902401 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902402 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902403 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902404 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902405 AND (id=193876 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902406 AND (id=193913 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902407 AND (id=193914 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902408 AND (id=193915 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902409 AND (id=193917 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902410 AND (id=193928 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902411 AND (id=194236 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902412 AND (id=194236 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902413 AND (id=194236 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902414 AND (id=194238 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902419 AND (id=194674 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902424 AND (id=195241 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902425 AND (id=195241 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902426 AND (id=195241 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902427 AND (id=195241 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902428 AND (id=195241 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902429 AND (id=195241 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902430 AND (id=195241 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902431 AND (id=195242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902432 AND (id=195242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902433 AND (id=195242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902434 AND (id=195242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902435 AND (id=195242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902436 AND (id=195242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902437 AND (id=195242 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902438 AND (id=195260 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902439 AND (id=195577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902440 AND (id=195577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902441 AND (id=195577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902442 AND (id=195577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902443 AND (id=195577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902444 AND (id=195577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902445 AND (id=195577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902446 AND (id=195577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902447 AND (id=195577 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902449 AND (id=197284 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902450 AND (id=197285 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902452 AND (id=198094 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902453 AND (id=198095 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902455 AND (id=198191 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902456 AND (id=198380 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902457 AND (id=198392 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902458 AND (id=198398 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- redundant-health-override
UPDATE creature SET curHealthPct=NULL WHERE guid=11902459 AND (id=199336 AND curHealthPct=100 AND EXISTS(SELECT 1 FROM creature_template t WHERE t.entry=creature.id AND t.RegenHealth<>0));
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=2459 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=9798 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=12760 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13121 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13148 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13625 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13665 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity4=0 WHERE ID=13677 AND (ItemDrop4=0 AND ItemDropQuantity4=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13699 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13713 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13723 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13724 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13725 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13726 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13727 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13728 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13729 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=13731 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13745 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13750 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13756 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13761 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13767 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13772 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13777 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13782 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13787 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13790 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13793 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13811 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=13814 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=14483 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=14483 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=14488 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=14488 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=14488 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=24626 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=24745 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity4=0 WHERE ID=24745 AND (ItemDrop4=0 AND ItemDropQuantity4=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=24979 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=25001 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity4=0 WHERE ID=25014 AND (ItemDrop4=0 AND ItemDropQuantity4=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=25047 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=25644 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=25908 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=26399 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=26400 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=26404 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=26404 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=26412 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=26536 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=26543 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=26556 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=26572 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=26613 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=26782 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=26783 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=27106 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=27392 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=27392 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=27392 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=27805 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=27805 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity3=0 WHERE ID=27805 AND (ItemDrop3=0 AND ItemDropQuantity3=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=27992 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=28229 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=28264 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28393 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28394 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28398 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28399 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28401 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=28406 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28457 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28458 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28461 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=28463 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28465 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=28466 AND (ItemDrop1=0 AND ItemDropQuantity1=5);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=28473 AND (ItemDrop1=0 AND ItemDropQuantity1=5);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=28692 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28775 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28776 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28777 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=28778 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=29295 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=29314 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=29314 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=29352 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=29353 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=29356 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=29434 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=29436 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=29893 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=29969 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity2=0 WHERE ID=29970 AND (ItemDrop2=0 AND ItemDropQuantity2=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=30051 AND (ItemDrop1=0 AND ItemDropQuantity1=3);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=30584 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=30585 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=30698 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=30700 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=30753 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=30754 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
-- quantity-without-item
UPDATE quest_template SET ItemDropQuantity1=0 WHERE ID=30763 AND (ItemDrop1=0 AND ItemDropQuantity1=1);
COMMIT;
