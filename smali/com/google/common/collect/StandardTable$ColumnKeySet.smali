.class Lcom/google/common/collect/StandardTable$ColumnKeySet;
.super Lcom/google/common/collect/StandardTable$TableSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableSet<TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1
    .parameter

    .prologue
    .line 772
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeySet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$ColumnKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/StandardTable$TableSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 772
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$ColumnKeySet;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeySet;"
    const/4 v2, 0x0

    .line 834
    if-nez p1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v2

    .line 837
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$ColumnKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 838
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 839
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->createColumnKeyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 782
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeySet;"
    if-nez p1, :cond_1

    .line 783
    const/4 v0, 0x0

    .line 796
    :cond_0
    return v0

    .line 785
    :cond_1
    const/4 v0, 0x0

    .line 786
    .local v0, changed:Z
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$ColumnKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 787
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map<TC;TV;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 788
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 789
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 790
    const/4 v0, 0x1

    .line 791
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 792
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 800
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeySet;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, changed:Z
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$ColumnKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 803
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map<TC;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 804
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 807
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 808
    const/4 v0, 0x1

    .line 809
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 810
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 814
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeySet;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, changed:Z
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$ColumnKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 821
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map<TC;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 823
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    const/4 v0, 0x1

    .line 825
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 830
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 778
    .local p0, this:Lcom/google/common/collect/StandardTable$ColumnKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$ColumnKeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
