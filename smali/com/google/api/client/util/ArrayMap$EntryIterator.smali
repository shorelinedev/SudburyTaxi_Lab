.class final Lcom/google/api/client/util/ArrayMap$EntryIterator;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private nextIndex:I

.field private removed:Z

.field final synthetic this$0:Lcom/google/api/client/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/ArrayMap;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    .local p0, this:Lcom/google/api/client/util/ArrayMap$EntryIterator;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->this$0:Lcom/google/api/client/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 374
    .local p0, this:Lcom/google/api/client/util/ArrayMap$EntryIterator;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.EntryIterator;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->nextIndex:I

    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->this$0:Lcom/google/api/client/util/ArrayMap;

    iget v1, v1, Lcom/google/api/client/util/ArrayMap;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 368
    .local p0, this:Lcom/google/api/client/util/ArrayMap$EntryIterator;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, this:Lcom/google/api/client/util/ArrayMap$EntryIterator;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.EntryIterator;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->nextIndex:I

    .line 379
    .local v0, index:I
    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->this$0:Lcom/google/api/client/util/ArrayMap;

    iget v1, v1, Lcom/google/api/client/util/ArrayMap;->size:I

    if-ne v0, v1, :cond_0

    .line 380
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 382
    :cond_0
    iget v1, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->nextIndex:I

    .line 383
    new-instance v1, Lcom/google/api/client/util/ArrayMap$Entry;

    iget-object v2, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->this$0:Lcom/google/api/client/util/ArrayMap;

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/util/ArrayMap$Entry;-><init>(Lcom/google/api/client/util/ArrayMap;I)V

    return-object v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 387
    .local p0, this:Lcom/google/api/client/util/ArrayMap$EntryIterator;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.EntryIterator;"
    iget v1, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->nextIndex:I

    add-int/lit8 v0, v1, -0x1

    .line 388
    .local v0, index:I
    iget-boolean v1, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->removed:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_1

    .line 389
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->this$0:Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/ArrayMap;->remove(I)Ljava/lang/Object;

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/api/client/util/ArrayMap$EntryIterator;->removed:Z

    .line 393
    return-void
.end method
