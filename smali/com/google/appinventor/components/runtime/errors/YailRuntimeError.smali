.class public Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.source "YailRuntimeError.java"


# instance fields
.field private errorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "errorType"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->errorType:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->errorType:Ljava/lang/String;

    return-object v0
.end method
