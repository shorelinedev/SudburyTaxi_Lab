.class Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;
.super Landroid/app/Dialog;
.source "FullScreenVideoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, values:Landroid/os/Bundle;
    const-string v1, "PositionKey"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    #getter for: Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->access$000(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v1, "PlayingKey"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    #getter for: Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->access$000(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    const-string v1, "SourceKey"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    #getter for: Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->access$100(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SourceKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    #getter for: Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->access$200(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Lcom/google/appinventor/components/runtime/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    .line 117
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 118
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->startDialog()V

    .line 124
    return-void
.end method
