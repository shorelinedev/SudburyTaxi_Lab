.class public Lcom/google/appinventor/components/runtime/errors/FileIOError;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.source "FileIOError.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
