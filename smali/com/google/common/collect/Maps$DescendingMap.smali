.class abstract Lcom/google/common/collect/Maps$DescendingMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient navigableKeySet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3840
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method

.method private static reverse(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3868
    .local p0, forward:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3903
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3908
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 3855
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$DescendingMap;->comparator:Ljava/util/Comparator;

    .line 3856
    .local v1, result:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v1, :cond_1

    .line 3857
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 3858
    .local v0, forwardCmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_0

    .line 3859
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 3861
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/Maps$DescendingMap;->reverse(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    .end local v1           #result:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    iput-object v1, p0, Lcom/google/common/collect/Maps$DescendingMap;->comparator:Ljava/util/Comparator;

    .line 3863
    .end local v0           #forwardCmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    .restart local v1       #result:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_1
    return-object v1
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3957
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$DescendingMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$DescendingMap$1;-><init>(Lcom/google/common/collect/Maps$DescendingMap;)V

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3839
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3847
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3986
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3943
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3950
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->entrySet:Ljava/util/Set;

    .line 3951
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3923
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3873
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3893
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3898
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract forward()Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3998
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4013
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$DescendingMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3913
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3918
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3973
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3928
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3878
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3883
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3888
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3980
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->navigableKeySet:Ljava/util/NavigableSet;

    .line 3981
    .local v0, result:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$NavigableKeySet;

    .end local v0           #result:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<TK;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->navigableKeySet:Ljava/util/NavigableSet;

    :cond_0
    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3933
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3938
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3993
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p3, toKey:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4008
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p2, toKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/Maps$DescendingMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4003
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4018
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$DescendingMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4023
    .local p0, this:Lcom/google/common/collect/Maps$DescendingMap;,"Lcom/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$DescendingMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$DescendingMap$2;-><init>(Lcom/google/common/collect/Maps$DescendingMap;)V

    return-object v0
.end method
