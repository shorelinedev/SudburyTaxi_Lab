.class Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;,"Lcom/google/common/collect/FilteredEntryMultimap$AsMap.2;"
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;,"Lcom/google/common/collect/FilteredEntryMultimap$AsMap.2;"
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;,"Lcom/google/common/collect/FilteredEntryMultimap$AsMap.2;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;,"Lcom/google/common/collect/FilteredEntryMultimap$AsMap.2;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FilteredEntryMultimap;->removeIf(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;,"Lcom/google/common/collect/FilteredEntryMultimap$AsMap.2;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FilteredEntryMultimap;->removeIf(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 279
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;,"Lcom/google/common/collect/FilteredEntryMultimap$AsMap.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method