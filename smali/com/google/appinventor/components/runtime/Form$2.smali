.class Lcom/google/appinventor/components/runtime/Form$2;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 503
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Initialize"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 505
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x1

    #setter for: Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->access$202(Lcom/google/appinventor/components/runtime/Form;Z)Z

    .line 508
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$300(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 509
    .local v1, onInitializeListener:Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;->onInitialize()V

    goto :goto_0

    .line 514
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #onInitializeListener:Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    :cond_1
    return-void
.end method
