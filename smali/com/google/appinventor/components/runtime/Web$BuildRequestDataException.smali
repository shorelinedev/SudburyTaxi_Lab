.class Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;
.super Ljava/lang/Exception;
.source "Web.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuildRequestDataException"
.end annotation


# instance fields
.field final errorNumber:I

.field final index:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "errorNumber"
    .parameter "index"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 109
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;->errorNumber:I

    .line 110
    iput p2, p0, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;->index:I

    .line 111
    return-void
.end method
