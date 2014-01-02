.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "AppInvHTTPD.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppInvHTTPD"

.field private static final MIME_JSON:Ljava/lang/String; = "application/json"

.field private static final YAV_SKEW_BACKWARD:I = 0x4

.field private static final YAV_SKEW_FORWARD:I = 0x1

.field private static hmacKey:[B

.field private static seq:I


# instance fields
.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private rootDir:Ljava/io/File;

.field private scheme:Lgnu/expr/Language;

.field private secure:Z


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 1
    .parameter "port"
    .parameter "wwwroot"
    .parameter "secure"
    .parameter "form"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 57
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    .line 58
    const-string v0, "scheme"

    invoke-static {v0}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    .line 59
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 60
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 61
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object v0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .parameter "infile"
    .parameter "outfile"

    .prologue
    .line 393
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 394
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 395
    .local v4, out:Ljava/io/FileOutputStream;
    const v5, 0x8000

    new-array v0, v5, [B

    .line 398
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_0

    .line 399
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 405
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 407
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 402
    .restart local v0       #buffer:[B
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #len:I
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 403
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doPackageUpdate(Ljava/lang/String;)V
    .locals 1
    .parameter "inurl"

    .prologue
    .line 419
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 1
    .parameter "inputKey"

    .prologue
    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    .line 415
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 416
    return-void
.end method


# virtual methods
.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 49
    .parameter "uri"
    .parameter "method"
    .parameter "header"
    .parameter "parms"
    .parameter "files"
    .parameter "mySocket"

    .prologue
    .line 74
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\' "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v42, v0

    if-eqz v42, :cond_0

    .line 82
    invoke-virtual/range {p6 .. p6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v29

    .line 83
    .local v29, myAddress:Ljava/net/InetAddress;
    invoke-virtual/range {v29 .. v29}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    .line 84
    .local v19, hostAddress:Ljava/lang/String;
    const-string v42, "127.0.0.1"

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_0

    .line 85
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Debug: hostAddress = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " while in secure mode, closing connection."

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\"}"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v34, res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v19           #hostAddress:Ljava/lang/String;
    .end local v29           #myAddress:Ljava/net/InetAddress;
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_0
    return-object v34

    .line 98
    :cond_0
    const-string v42, "OPTIONS"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_2

    .line 102
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 103
    .local v10, e:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1

    .line 105
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 106
    .local v40, value:Ljava/lang/String;
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "  HDR: \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\' = \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 109
    .end local v40           #value:Ljava/lang/String;
    :cond_1
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "text/plain"

    const-string v44, "OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v10           #e:Ljava/util/Enumeration;
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_2
    const-string v42, "/_newblocks"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_9

    .line 119
    const-string v42, "seq"

    const-string v43, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 120
    .local v22, inSeq:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 121
    .local v26, iseq:I
    const-string v42, "blockid"

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, blockid:Ljava/lang/String;
    const-string v42, "code"

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, code:Ljava/lang/String;
    const-string v42, "mac"

    const-string v43, "no key provided"

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 124
    .local v21, inMac:Ljava/lang/String;
    const-string v9, ""

    .line 125
    .local v9, compMac:Ljava/lang/String;
    move-object/from16 v23, v8

    .line 126
    .local v23, input_code:Ljava/lang/String;
    sget-object v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v42, :cond_7

    .line 128
    :try_start_0
    const-string v42, "HmacSHA1"

    invoke-static/range {v42 .. v42}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v18

    .line 129
    .local v18, hmacSha1:Ljavax/crypto/Mac;
    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string v43, "RAW"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 130
    .local v27, key:Ljavax/crypto/spec/SecretKeySpec;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 131
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v38

    .line 132
    .local v38, tmpMac:[B
    new-instance v35, Ljava/lang/StringBuffer;

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v42, v0

    mul-int/lit8 v42, v42, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 133
    .local v35, sb:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/Formatter;

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 134
    .local v17, formatter:Ljava/util/Formatter;
    move-object/from16 v5, v38

    .local v5, arr$:[B
    array-length v0, v5

    move/from16 v28, v0

    .local v28, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    aget-byte v6, v5, v20

    .line 135
    .local v6, b:B
    const-string v42, "%02x"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 134
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 136
    .end local v6           #b:B
    :cond_3
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 144
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Incoming Mac = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Computed Mac = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Incoming seq = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Computed seq = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "blockid = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_4

    .line 150
    const-string v42, "AppInvHTTPD"

    const-string v43, "Hmac does not match"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Invalid HMAC"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 153
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const-string v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 137
    .end local v5           #arr$:[B
    .end local v17           #formatter:Ljava/util/Formatter;
    .end local v18           #hmacSha1:Ljavax/crypto/Mac;
    .end local v20           #i$:I
    .end local v27           #key:Ljavax/crypto/spec/SecretKeySpec;
    .end local v28           #len$:I
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35           #sb:Ljava/lang/StringBuffer;
    .end local v38           #tmpMac:[B
    :catch_0
    move-exception v10

    .line 138
    .local v10, e:Ljava/lang/Exception;
    const-string v42, "AppInvHTTPD"

    const-string v43, "Error working with hmac"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Exception working on HMAC"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 141
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "text/plain"

    const-string v44, "NOT"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 156
    .end local v10           #e:Ljava/lang/Exception;
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v5       #arr$:[B
    .restart local v17       #formatter:Ljava/util/Formatter;
    .restart local v18       #hmacSha1:Ljavax/crypto/Mac;
    .restart local v20       #i$:I
    .restart local v27       #key:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28       #len$:I
    .restart local v35       #sb:Ljava/lang/StringBuffer;
    .restart local v38       #tmpMac:[B
    :cond_4
    sget v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    move/from16 v0, v42

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    sget v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v43, v26, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_5

    .line 157
    const-string v42, "AppInvHTTPD"

    const-string v43, "Seq does not match"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Invalid Seq"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 160
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const-string v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 165
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_5
    sget v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v43, v26, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_6

    .line 166
    const-string v42, "AppInvHTTPD"

    const-string v43, "Seq Fixup Invoked"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_6
    add-int/lit8 v42, v26, 0x1

    sput v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 176
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " (begin "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " )))"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 179
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "To Eval: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_1
    const-string v42, "#f"

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_8

    .line 186
    const-string v42, "AppInvHTTPD"

    const-string v43, "Skipping evaluation of #f"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_3
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_4
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v5           #arr$:[B
    .end local v17           #formatter:Ljava/util/Formatter;
    .end local v18           #hmacSha1:Ljavax/crypto/Mac;
    .end local v20           #i$:I
    .end local v27           #key:Ljavax/crypto/spec/SecretKeySpec;
    .end local v28           #len$:I
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35           #sb:Ljava/lang/StringBuffer;
    .end local v38           #tmpMac:[B
    :cond_7
    const-string v42, "AppInvHTTPD"

    const-string v43, "No HMAC Key"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "No HMAC Key"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 172
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const-string v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 188
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v5       #arr$:[B
    .restart local v17       #formatter:Ljava/util/Formatter;
    .restart local v18       #hmacSha1:Ljavax/crypto/Mac;
    .restart local v20       #i$:I
    .restart local v27       #key:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28       #len$:I
    .restart local v35       #sb:Ljava/lang/StringBuffer;
    .restart local v38       #tmpMac:[B
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 191
    :catch_1
    move-exception v12

    .line 192
    .local v12, ex:Ljava/lang/Throwable;
    const-string v42, "AppInvHTTPD"

    const-string v43, "newblocks: Scheme Failure"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const-string v42, "BAD"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v7, v0, v1}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_4

    .line 201
    .end local v5           #arr$:[B
    .end local v7           #blockid:Ljava/lang/String;
    .end local v8           #code:Ljava/lang/String;
    .end local v9           #compMac:Ljava/lang/String;
    .end local v12           #ex:Ljava/lang/Throwable;
    .end local v17           #formatter:Ljava/util/Formatter;
    .end local v18           #hmacSha1:Ljavax/crypto/Mac;
    .end local v20           #i$:I
    .end local v21           #inMac:Ljava/lang/String;
    .end local v22           #inSeq:Ljava/lang/String;
    .end local v23           #input_code:Ljava/lang/String;
    .end local v26           #iseq:I
    .end local v27           #key:Ljavax/crypto/spec/SecretKeySpec;
    .end local v28           #len$:I
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35           #sb:Ljava/lang/StringBuffer;
    .end local v38           #tmpMac:[B
    :cond_9
    const-string v42, "/_values"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_a

    .line 202
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_a
    const-string v42, "/_getversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_c

    .line 211
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v31

    .line 212
    .local v31, pInfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "edu.mit.appinventor.aicompanion3"

    invoke-virtual/range {v42 .. v43}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 214
    .local v24, installer:Ljava/lang/String;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 215
    .local v41, versionName:Ljava/lang/String;
    if-nez v24, :cond_b

    .line 216
    const-string v24, "Not Known"

    .line 217
    :cond_b
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "{\"version\" : \""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\", \"fingerprint\" : \""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    sget-object v45, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\","

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " \"installer\" : \""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\"}"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 223
    .end local v24           #installer:Ljava/lang/String;
    .end local v31           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v41           #versionName:Ljava/lang/String;
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_5
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :catch_2
    move-exception v30

    .line 220
    .local v30, n:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 221
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const-string v44, "{\"verison\" : \"Unknown\""

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_5

    .line 228
    .end local v30           #n:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_c
    const-string v42, "/_update"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_10

    .line 229
    const-string v42, "url"

    const-string v43, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 230
    .local v39, url:Ljava/lang/String;
    const-string v42, "mac"

    const-string v43, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 232
    .restart local v21       #inMac:Ljava/lang/String;
    const-string v42, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_f

    sget-object v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v42, :cond_f

    const-string v42, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_f

    .line 234
    :try_start_4
    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string v43, "RAW"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 235
    .restart local v27       #key:Ljavax/crypto/spec/SecretKeySpec;
    const-string v42, "HmacSHA1"

    invoke-static/range {v42 .. v42}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v18

    .line 236
    .restart local v18       #hmacSha1:Ljavax/crypto/Mac;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 237
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v38

    .line 238
    .restart local v38       #tmpMac:[B
    new-instance v35, Ljava/lang/StringBuffer;

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v42, v0

    mul-int/lit8 v42, v42, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 239
    .restart local v35       #sb:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/Formatter;

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 240
    .restart local v17       #formatter:Ljava/util/Formatter;
    move-object/from16 v5, v38

    .restart local v5       #arr$:[B
    array-length v0, v5

    move/from16 v28, v0

    .restart local v28       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget-byte v6, v5, v20

    .line 241
    .restart local v6       #b:B
    const-string v42, "%02x"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 240
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 242
    .end local v6           #b:B
    :cond_d
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v9

    .line 254
    .restart local v9       #compMac:Ljava/lang/String;
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Incoming Mac (update) = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Computed Mac (update) = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_e

    .line 257
    const-string v42, "AppInvHTTPD"

    const-string v43, "Hmac does not match"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Invalid HMAC (update)"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 260
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const-string v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    .end local v5           #arr$:[B
    .end local v9           #compMac:Ljava/lang/String;
    .end local v17           #formatter:Ljava/util/Formatter;
    .end local v18           #hmacSha1:Ljavax/crypto/Mac;
    .end local v20           #i$:I
    .end local v27           #key:Ljavax/crypto/spec/SecretKeySpec;
    .end local v28           #len$:I
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35           #sb:Ljava/lang/StringBuffer;
    .end local v38           #tmpMac:[B
    :catch_3
    move-exception v10

    .line 244
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v42, "AppInvHTTPD"

    const-string v43, "Error verifying update"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v43, v0

    const-string v44, "AppInvHTTPD"

    const/16 v45, 0x709

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Exception working on HMAC for update"

    aput-object v48, v46, v47

    invoke-virtual/range {v42 .. v46}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 247
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const-string v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Exception processing MAC\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    .end local v10           #e:Ljava/lang/Exception;
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v5       #arr$:[B
    .restart local v9       #compMac:Ljava/lang/String;
    .restart local v17       #formatter:Ljava/util/Formatter;
    .restart local v18       #hmacSha1:Ljavax/crypto/Mac;
    .restart local v20       #i$:I
    .restart local v27       #key:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28       #len$:I
    .restart local v35       #sb:Ljava/lang/StringBuffer;
    .restart local v38       #tmpMac:[B
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->doPackageUpdate(Ljava/lang/String;)V

    .line 268
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const-string v44, "{\"status\" : \"OK\", \"message\" : \"Update Should Happen\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    .end local v5           #arr$:[B
    .end local v9           #compMac:Ljava/lang/String;
    .end local v17           #formatter:Ljava/util/Formatter;
    .end local v18           #hmacSha1:Ljavax/crypto/Mac;
    .end local v20           #i$:I
    .end local v27           #key:Ljavax/crypto/spec/SecretKeySpec;
    .end local v28           #len$:I
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35           #sb:Ljava/lang/StringBuffer;
    .end local v38           #tmpMac:[B
    :cond_f
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "application/json"

    const-string v44, "{\"status\" : \"BAD\", \"message\" : \"Missing Parameters\"}"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v21           #inMac:Ljava/lang/String;
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v39           #url:Ljava/lang/String;
    :cond_10
    const-string v42, "/_package"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_12

    .line 284
    const-string v42, "package"

    const/16 v43, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 285
    .local v32, packageapk:Ljava/lang/String;
    if-nez v32, :cond_11

    .line 286
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "text/plain"

    const-string v44, "NOT OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 289
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_11
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v25, Landroid/content/Intent;

    const-string v42, "android.intent.action.VIEW"

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v25, intent:Landroid/content/Intent;
    new-instance v42, Ljava/io/File;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v42 .. v42}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v33

    .line 292
    .local v33, packageuri:Landroid/net/Uri;
    const-string v42, "application/vnd.android.package-archive"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->startActivity(Landroid/content/Intent;)V

    .line 294
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "text/plain"

    const-string v44, "OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 298
    .end local v25           #intent:Landroid/content/Intent;
    .end local v32           #packageapk:Ljava/lang/String;
    .end local v33           #packageuri:Landroid/net/Uri;
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_12
    const-string v42, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_19

    .line 299
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 300
    .local v11, error:Ljava/lang/Boolean;
    const-string v42, "content"

    const/16 v43, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 301
    .local v37, tmpFileName:Ljava/lang/String;
    if-eqz v37, :cond_17

    .line 302
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v37

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v14, fileFrom:Ljava/io/File;
    const-string v42, "filename"

    const/16 v43, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 304
    .local v16, filename:Ljava/lang/String;
    if-eqz v16, :cond_14

    .line 305
    const-string v42, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_13

    const-string v42, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_13

    const-string v42, "../"

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    if-ltz v42, :cond_14

    .line 307
    :cond_13
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, " Ignoring invalid filename: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 v16, 0x0

    .line 311
    :cond_14
    if-eqz v16, :cond_16

    .line 313
    new-instance v15, Ljava/io/File;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v15, fileTo:Ljava/io/File;
    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v42

    if-nez v42, :cond_15

    .line 315
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 316
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 327
    .end local v14           #fileFrom:Ljava/io/File;
    .end local v15           #fileTo:Ljava/io/File;
    .end local v16           #filename:Ljava/lang/String;
    :cond_15
    :goto_7
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-eqz v42, :cond_18

    .line 328
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "text/plain"

    const-string v44, "NOTOK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v14       #fileFrom:Ljava/io/File;
    .restart local v16       #filename:Ljava/lang/String;
    :cond_16
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 320
    const-string v42, "AppInvHTTPD"

    const-string v43, "Received content without a file name!"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_7

    .line 324
    .end local v14           #fileFrom:Ljava/io/File;
    .end local v16           #filename:Ljava/lang/String;
    :cond_17
    const-string v42, "AppInvHTTPD"

    const-string v43, "Received PUT without content."

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_7

    .line 335
    :cond_18
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "text/plain"

    const-string v44, "OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 344
    .end local v11           #error:Ljava/lang/Boolean;
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v37           #tmpFileName:Ljava/lang/String;
    :cond_19
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 345
    .local v10, e:Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1a

    .line 347
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 348
    .restart local v40       #value:Ljava/lang/String;
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "  HDR: \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\' = \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 351
    .end local v40           #value:Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {p4 .. p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 352
    :goto_9
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_1b

    .line 354
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 355
    .restart local v40       #value:Ljava/lang/String;
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "  PRM: \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\' = \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p4

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 358
    .end local v40           #value:Ljava/lang/String;
    :cond_1b
    invoke-virtual/range {p5 .. p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 359
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v42

    if-eqz v42, :cond_20

    .line 361
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 362
    .local v13, fieldname:Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 363
    .local v36, tempLocation:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 364
    .restart local v16       #filename:Ljava/lang/String;
    const-string v42, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_1c

    const-string v42, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_1c

    const-string v42, "../"

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    if-ltz v42, :cond_1d

    .line 366
    :cond_1c
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, " Ignoring invalid filename: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v16, 0x0

    .line 369
    :cond_1d
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v36

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .restart local v14       #fileFrom:Ljava/io/File;
    if-nez v16, :cond_1f

    .line 371
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 379
    :cond_1e
    :goto_a
    const-string v42, "AppInvHTTPD"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, " UPLOADED: \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\' was at \'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v34, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v42, "200 OK"

    const-string v43, "text/plain"

    const-string v44, "OK"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .restart local v34       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v42, "Access-Control-Allow-Origin"

    const-string v43, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v42, "Access-Control-Allow-Headers"

    const-string v43, "origin, content-type"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v42, "Access-Control-Allow-Methods"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v42, "Allow"

    const-string v43, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v34           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_1f
    new-instance v15, Ljava/io/File;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v15       #fileTo:Ljava/io/File;
    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v42

    if-nez v42, :cond_1e

    .line 375
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 376
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto/16 :goto_a

    .line 388
    .end local v13           #fieldname:Ljava/lang/String;
    .end local v14           #fileFrom:Ljava/io/File;
    .end local v15           #fileTo:Ljava/io/File;
    .end local v16           #filename:Ljava/lang/String;
    .end local v36           #tempLocation:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v34

    goto/16 :goto_0
.end method
