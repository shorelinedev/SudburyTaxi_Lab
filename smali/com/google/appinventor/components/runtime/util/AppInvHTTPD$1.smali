.class Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;
.super Ljava/lang/Object;
.source "AppInvHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->doPackageUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

.field final synthetic val$inurl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->val$inurl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 423
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->val$inurl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 424
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 425
    .local v4, conn:Ljava/net/URLConnection;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 426
    .local v6, instream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    #getter for: Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;
    invoke-static {v12}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->access$000(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/update.apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v2, apkfile:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 428
    .local v1, apkOut:Ljava/io/FileOutputStream;
    const v11, 0x8000

    new-array v3, v11, [B

    .line 430
    .local v3, buffer:[B
    :goto_0
    const/4 v11, 0x0

    const v12, 0x8000

    invoke-virtual {v6, v3, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .local v8, len:I
    if-lez v8, :cond_0

    .line 431
    const/4 v11, 0x0

    invoke-virtual {v1, v3, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    .end local v1           #apkOut:Ljava/io/FileOutputStream;
    .end local v2           #apkfile:Ljava/io/File;
    .end local v3           #buffer:[B
    .end local v4           #conn:Ljava/net/URLConnection;
    .end local v6           #instream:Ljava/io/InputStream;
    .end local v8           #len:I
    .end local v10           #url:Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 442
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    #getter for: Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->access$100(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    #getter for: Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;
    invoke-static {v12}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->access$100(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;

    move-result-object v12

    const-string v13, "AppInvHTTPD"

    const/16 v14, 0x44d

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->val$inurl:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 445
    .end local v5           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 433
    .restart local v1       #apkOut:Ljava/io/FileOutputStream;
    .restart local v2       #apkfile:Ljava/io/File;
    .restart local v3       #buffer:[B
    .restart local v4       #conn:Ljava/net/URLConnection;
    .restart local v6       #instream:Ljava/io/InputStream;
    .restart local v8       #len:I
    .restart local v10       #url:Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 434
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 436
    const-string v11, "AppInvHTTPD"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "About to Install "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    #getter for: Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;
    invoke-static {v13}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->access$000(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/update.apk"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v7, intent:Landroid/content/Intent;
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    #getter for: Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;
    invoke-static {v13}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->access$000(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/update.apk"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 439
    .local v9, packageuri:Landroid/net/Uri;
    const-string v11, "application/vnd.android.package-archive"

    invoke-virtual {v7, v9, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;->this$0:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    #getter for: Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->access$100(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/google/appinventor/components/runtime/ReplForm;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
