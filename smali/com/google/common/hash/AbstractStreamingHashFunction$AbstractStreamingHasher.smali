.class public abstract Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "AbstractStreamingHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/AbstractStreamingHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractStreamingHasher"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final bufferSize:I

.field private final chunkSize:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "chunkSize"

    .prologue
    .line 95
    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;-><init>(II)V

    .line 96
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2
    .parameter "chunkSize"
    .parameter "bufferSize"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 109
    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 112
    add-int/lit8 v0, p2, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    .line 115
    iput p2, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->bufferSize:I

    .line 116
    iput p1, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->chunkSize:I

    .line 117
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private munch()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->chunkSize:I

    if-lt v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->process(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 255
    return-void
.end method

.method private munchIfFull()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->munch()V

    .line 245
    :cond_0
    return-void
.end method

.method private putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 4
    .parameter "readBuffer"

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 156
    iget-object v2, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 157
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->munchIfFull()V

    .line 175
    :goto_0
    return-object p0

    .line 162
    :cond_0
    iget v2, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->bufferSize:I

    iget-object v3, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v0, v2, v3

    .line 163
    .local v0, bytesToCopy:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 164
    iget-object v2, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->munch()V

    .line 169
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget v3, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->chunkSize:I

    if-lt v2, v3, :cond_2

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->process(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public final hash()Lcom/google/common/hash/HashCode;
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->munch()V

    .line 230
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 231
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->processRemaining(Ljava/nio/ByteBuffer;)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->makeHash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method abstract makeHash()Lcom/google/common/hash/HashCode;
.end method

.method protected abstract process(Ljava/nio/ByteBuffer;)V
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "bb"

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->chunkSize:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 135
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->chunkSize:I

    if-ge v0, v1, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 138
    :cond_0
    iget v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->chunkSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->process(Ljava/nio/ByteBuffer;)V

    .line 141
    return-void
.end method

.method public final putByte(B)Lcom/google/common/hash/Hasher;
    .locals 1
    .parameter "b"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 189
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->munchIfFull()V

    .line 190
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putBytes([B)Lcom/google/common/hash/Hasher;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 145
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 2
    .parameter "bytes"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 150
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putChar(C)Lcom/google/common/hash/Hasher;
    .locals 1
    .parameter "c"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 203
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->munchIfFull()V

    .line 204
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putInt(I)Lcom/google/common/hash/Hasher;
    .locals 1
    .parameter "i"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 210
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->munchIfFull()V

    .line 211
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putLong(J)Lcom/google/common/hash/Hasher;
    .locals 1
    .parameter "l"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 217
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->munchIfFull()V

    .line 218
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, instance:Ljava/lang/Object;,"TT;"
    .local p2, funnel:Lcom/google/common/hash/Funnel;,"Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V

    .line 224
    return-object p0
.end method

.method public final putShort(S)Lcom/google/common/hash/Hasher;
    .locals 1
    .parameter "s"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 196
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->munchIfFull()V

    .line 197
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
    .locals 2
    .parameter "charSequence"

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 181
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;->putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
