.class Lcom/google/common/collect/Iterators$PeekingImpl;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/PeekingIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private hasPeeked:Z

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TE;>;"
        }
    .end annotation
.end field

.field private peekedElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1210
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    .local p1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1211
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    .line 1212
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1216
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1221
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1227
    :goto_0
    return-object v0

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 1225
    .local v0, result:Ljava/lang/Object;,"TE;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 1226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1238
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 1240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1232
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1233
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1234
    return-void

    .line 1232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
