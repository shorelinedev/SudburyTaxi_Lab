.class Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;
.super Ljava/lang/Object;
.source "BatchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/batch/BatchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final callback:Lcom/google/api/client/googleapis/batch/BatchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/client/googleapis/batch/BatchCallback",
            "<TT;TE;>;"
        }
    .end annotation
.end field

.field final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final errorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field final request:Lcom/google/api/client/http/HttpRequest;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/batch/BatchCallback;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/http/HttpRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/batch/BatchCallback",
            "<TT;TE;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/api/client/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;,"Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<TT;TE;>;"
    .local p1, callback:Lcom/google/api/client/googleapis/batch/BatchCallback;,"Lcom/google/api/client/googleapis/batch/BatchCallback<TT;TE;>;"
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, errorClass:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->callback:Lcom/google/api/client/googleapis/batch/BatchCallback;

    .line 107
    iput-object p2, p0, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->dataClass:Ljava/lang/Class;

    .line 108
    iput-object p3, p0, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->errorClass:Ljava/lang/Class;

    .line 109
    iput-object p4, p0, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    .line 110
    return-void
.end method
