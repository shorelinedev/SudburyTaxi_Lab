.class final Lcom/google/common/collect/Lists$StringAsImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringAsImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field hash:I

.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 722
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 670
    iput-object p1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    .line 671
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    .line 703
    instance-of v6, p1, Ljava/util/List;

    if-nez v6, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v3, p1

    .line 706
    check-cast v3, Ljava/util/List;

    .line 707
    .local v3, list:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v6, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 708
    .local v4, n:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 711
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 712
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 713
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 714
    .local v0, elem:Ljava/lang/Object;
    instance-of v6, v0, Ljava/lang/Character;

    if-eqz v6, :cond_0

    check-cast v0, Ljava/lang/Character;

    .end local v0           #elem:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v6

    iget-object v7, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_0

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 719
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Character;
    .locals 1
    .parameter "index"

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$StringAsImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 695
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 725
    iget v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 726
    .local v0, h:I
    if-nez v0, :cond_1

    .line 727
    const/4 v0, 0x1

    .line 728
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 729
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    :cond_0
    iput v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 733
    .end local v1           #i:I
    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 674
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 679
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$StringAsImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 686
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->charactersOf(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 663
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Lists$StringAsImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
