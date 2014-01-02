.class Lcom/google/appinventor/components/runtime/Twitter$5;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->TweetWithImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$ImagePath:Ljava/lang/String;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$ImagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 499
    :try_start_0
    new-instance v5, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v5}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->TwitPic_API_Key:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Twitter;->access$1100(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltwitter4j/conf/ConfigurationBuilder;->setMediaProviderAPIKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    move-result-object v0

    .line 500
    .local v0, builder:Ltwitter4j/conf/ConfigurationBuilder;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Twitter;->ConsumerKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 501
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Twitter;->ConsumerSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 502
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$700(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/AccessToken;

    move-result-object v5

    invoke-virtual {v5}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 503
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$700(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/AccessToken;

    move-result-object v5

    invoke-virtual {v5}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthAccessTokenSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 504
    invoke-virtual {v0}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v1

    .line 505
    .local v1, conf:Ltwitter4j/conf/Configuration;
    new-instance v5, Ltwitter4j/media/ImageUploadFactory;

    invoke-direct {v5, v1}, Ltwitter4j/media/ImageUploadFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    sget-object v6, Ltwitter4j/media/MediaProvider;->TWITPIC:Ltwitter4j/media/MediaProvider;

    invoke-virtual {v5, v6}, Ltwitter4j/media/ImageUploadFactory;->getInstance(Ltwitter4j/media/MediaProvider;)Ltwitter4j/media/ImageUpload;

    move-result-object v3

    .line 506
    .local v3, upload:Ltwitter4j/media/ImageUpload;
    const-string v4, ""

    .line 507
    .local v4, url:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$ImagePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 508
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$ImagePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ltwitter4j/media/ImageUpload;->upload(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 510
    :cond_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    #getter for: Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$status:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v0           #builder:Ltwitter4j/conf/ConfigurationBuilder;
    .end local v1           #conf:Ltwitter4j/conf/Configuration;
    .end local v3           #upload:Ltwitter4j/media/ImageUpload;
    .end local v4           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v2

    .line 512
    .local v2, e:Ltwitter4j/TwitterException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v7, "TweetWithImage"

    const/16 v8, 0x132

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
