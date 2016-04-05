$NetBSD$
Priority 99 doesn't work on NetBSD, use a parameter instead

--- interbench.c.orig	2009-10-31 04:14:59.000000000 +0000
+++ interbench.c
@@ -210,7 +210,7 @@ int test_fifo(void)
 {
 	struct sched_param sp;
 	memset(&sp, 0, sizeof(sp));
-	sp.sched_priority = 99;
+	sp.sched_priority = PTHREAD_MAX_PRIORITY; 
 	if (sched_setscheduler(0, SCHED_FIFO, &sp) == -1) {
 		if (errno != EPERM)
 			terminal_error("sched_setscheduler");
@@ -888,7 +888,7 @@ void *timekeeping_thread(void *t)
 	 * accurate accounting remains SCHED_NORMAL;
 	 */
 	if (th->dt != &th->benchmarks[NOT_BENCHING])
-		set_fifo(96);
+		set_fifo(PTHREAD_MAX_PRIORITY*0.9);
 	/* These values must be changed at the appropriate places or race */
 	tk->sleep_interval = tk->slept_interval = 0;
 	post_sem(&s->ready);
@@ -1344,7 +1344,7 @@ void bench(int i, int j)
 	 * We want to be higher priority than everything to signal them to
 	 * stop and we lock our memory if we can as well
 	 */
-	set_fifo(99);
+	set_fifo(PTHREAD_MAX_PRIORITY);
 	set_mlock();
 
 	/* Wakeup the load process */
@@ -1652,7 +1652,7 @@ bench:
 		 * To get as accurate a loop as possible we time it running
 		 * SCHED_FIFO if we can
 		 */
-		set_fifo(99);
+		set_fifo(PTHREAD_MAX_PRIORITY);
 		calibrate_loop();
 		set_normal();
 	} else
