.class public Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field public data:Ljava/io/InputStream;

.field public header:Ljava/util/Properties;

.field public mimeType:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    .line 138
    const-string v0, "200 OK"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter "status"
    .parameter "mimeType"
    .parameter "data"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    .line 146
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "status"
    .parameter "mimeType"
    .parameter "txt"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    .line 157
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 161
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method
