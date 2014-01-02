.class public final Lcom/google/appinventor/components/runtime/util/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"


# instance fields
.field private bottom:D

.field private left:D

.field private right:D

.field private top:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    .line 28
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    .line 29
    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    .line 30
    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    .line 31
    return-void
.end method


# virtual methods
.method public getBottom()D
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    return-wide v0
.end method

.method public getLeft()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    return-wide v0
.end method

.method public getRight()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    return-wide v0
.end method

.method public getTop()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    return-wide v0
.end method

.method public intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 12
    .parameter "bb"

    .prologue
    .line 44
    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    iget-wide v10, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 45
    .local v2, xmin:D
    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    iget-wide v10, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 46
    .local v0, xmax:D
    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    iget-wide v10, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 47
    .local v6, ymin:D
    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    iget-wide v10, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 50
    .local v4, ymax:D
    cmpl-double v8, v2, v0

    if-gtz v8, :cond_0

    cmpl-double v8, v6, v4

    if-lez v8, :cond_1

    .line 51
    :cond_0
    const/4 v8, 0x0

    .line 59
    :goto_0
    return v8

    .line 55
    :cond_1
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    .line 56
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    .line 57
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    .line 58
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    .line 59
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<BoundingBox (left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->left:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->top:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->right:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bottom:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
