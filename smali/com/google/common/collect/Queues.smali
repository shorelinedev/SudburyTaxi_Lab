.class public final Lcom/google/common/collect/Queues;
.super Ljava/lang/Object;
.source "Queues.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drain(Ljava/util/concurrent/BlockingQueue;Ljava/util/Collection;IJLjava/util/concurrent/TimeUnit;)I
    .locals 8
    .parameter
    .parameter
    .parameter "numElements"
    .parameter "timeout"
    .parameter "unit"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;",
            "Ljava/util/Collection",
            "<-TE;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 269
    .local p0, q:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<TE;>;"
    .local p1, buffer:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long v1, v4, v6

    .line 276
    .local v1, deadline:J
    const/4 v0, 0x0

    .line 277
    .local v0, added:I
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    .line 280
    sub-int v4, p2, v0

    invoke-interface {p0, p1, v4}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v4

    add-int/2addr v0, v4

    .line 281
    if-ge v0, p2, :cond_0

    .line 282
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v1, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    .line 283
    .local v3, e:Ljava/lang/Object;,"TE;"
    if-nez v3, :cond_2

    .line 290
    .end local v3           #e:Ljava/lang/Object;,"TE;"
    :cond_1
    return v0

    .line 286
    .restart local v3       #e:Ljava/lang/Object;,"TE;"
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 288
    goto :goto_0
.end method

.method public static drainUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/util/Collection;IJLjava/util/concurrent/TimeUnit;)I
    .locals 10
    .parameter
    .parameter
    .parameter "numElements"
    .parameter "timeout"
    .parameter "unit"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;",
            "Ljava/util/Collection",
            "<-TE;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")I"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, q:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<TE;>;"
    .local p1, buffer:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    add-long v1, v6, v8

    .line 311
    .local v1, deadline:J
    const/4 v0, 0x0

    .line 312
    .local v0, added:I
    const/4 v5, 0x0

    .line 314
    .local v5, interrupted:Z
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    .line 317
    sub-int v6, p2, v0

    :try_start_0
    invoke-interface {p0, p1, v6}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    add-int/2addr v0, v6

    .line 318
    if-ge v0, p2, :cond_0

    .line 322
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v1, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 328
    .local v3, e:Ljava/lang/Object;,"TE;"
    if-nez v3, :cond_3

    .line 336
    .end local v3           #e:Ljava/lang/Object;,"TE;"
    :cond_1
    if-eqz v5, :cond_2

    .line 337
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 340
    :cond_2
    return v0

    .line 324
    :catch_0
    move-exception v4

    .line 325
    .local v4, ex:Ljava/lang/InterruptedException;
    const/4 v5, 0x1

    .line 326
    goto :goto_1

    .line 331
    .end local v4           #ex:Ljava/lang/InterruptedException;
    .restart local v3       #e:Ljava/lang/Object;,"TE;"
    :cond_3
    :try_start_2
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    add-int/lit8 v0, v0, 0x1

    .line 333
    goto :goto_0

    .line 336
    .end local v3           #e:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_4

    .line 337
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v6
.end method

.method public static newArrayBlockingQueue(I)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .parameter "capacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    return-object v0
.end method

.method public static newArrayDeque()Ljava/util/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method

.method public static newArrayDeque(Ljava/lang/Iterable;)Ljava/util/ArrayDeque;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 79
    .local v0, deque:Ljava/util/ArrayDeque;,"Ljava/util/ArrayDeque<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0
.end method

.method public static newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method public static newConcurrentLinkedQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .line 107
    :goto_0
    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 106
    .local v0, queue:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0
.end method

.method public static newLinkedBlockingDeque()Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    return-object v0
.end method

.method public static newLinkedBlockingDeque(I)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .parameter "capacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedBlockingDeque(Ljava/lang/Iterable;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 143
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(Ljava/util/Collection;)V

    .line 147
    :goto_0
    return-object v0

    .line 145
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 146
    .local v0, deque:Ljava/util/concurrent/LinkedBlockingDeque;,"Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0
.end method

.method public static newLinkedBlockingQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    return-object v0
.end method

.method public static newLinkedBlockingQueue(I)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .parameter "capacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedBlockingQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 180
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    .line 184
    :goto_0
    return-object v0

    .line 182
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 183
    .local v0, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0
.end method

.method public static newPriorityBlockingQueue()Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    return-object v0
.end method

.method public static newPriorityBlockingQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 209
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(Ljava/util/Collection;)V

    .line 213
    :goto_0
    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 212
    .local v0, queue:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0
.end method

.method public static newPriorityQueue()Ljava/util/PriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    return-object v0
.end method

.method public static newPriorityQueue(Ljava/lang/Iterable;)Ljava/util/PriorityQueue;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 235
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_0
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 238
    .local v0, queue:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0
.end method

.method public static newSynchronousQueue()Ljava/util/concurrent/SynchronousQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/SynchronousQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    return-object v0
.end method

.method public static synchronizedQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue",
            "<TE;>;)",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, queue:Ljava/util/Queue;,"Ljava/util/Queue<TE;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->queue(Ljava/util/Queue;Ljava/lang/Object;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
