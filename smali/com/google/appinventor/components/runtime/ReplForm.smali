.class public Lcom/google/appinventor/components/runtime/ReplForm;
.super Lcom/google/appinventor/components/runtime/Form;
.source "ReplForm.java"


# static fields
.field private static final REPL_ASSET_DIR:Ljava/lang/String; = "/sdcard/AppInventor/assets/"

.field public static topform:Lcom/google/appinventor/components/runtime/ReplForm;


# instance fields
.field private IsUSBRepl:Z

.field private assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

.field private assetsLoaded:Z

.field private formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

.field private isDirect:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    .line 46
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 49
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IsUSBRepl:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetsLoaded:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->isDirect:Z

    .line 55
    sput-object p0, Lcom/google/appinventor/components/runtime/ReplForm;->topform:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 56
    return-void
.end method

.method private checkAssetDir()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/AppInventor/assets/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method protected closeApplicationFromBlocks()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/google/appinventor/components/runtime/ReplForm$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm$1;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 1
    .parameter "resultIntent"

    .prologue
    .line 111
    const-string v0, "Not Yet"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/RetValManager;->popScreen(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public isAssetsLoaded()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetsLoaded:Z

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->isDirect:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->processExtras(Landroid/content/Intent;Z)V

    .line 62
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IsUSBRepl:Z

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 68
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 71
    new-instance v2, Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    .line 72
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->startListening(Z)V

    .line 73
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetsLoaded:Z

    .line 75
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->destroy()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->stop()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->finish()V

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 102
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->onNewIntent(Landroid/content/Intent;)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->processExtras(Landroid/content/Intent;Z)V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->startListening(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onStop()V

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->stopListening(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method protected processExtras(Landroid/content/Intent;Z)V
    .locals 5
    .parameter "intent"
    .parameter "restart"

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 134
    const-string v2, "ReplForm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string v3, "ReplForm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extra Key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v1           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "rundirect"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const-string v2, "ReplForm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processExtras rundirect is true and restart is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ReplForm;->isDirect:Z

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetsLoaded:Z

    .line 144
    if-eqz p2, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->clear()V

    .line 146
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->$define()V

    .line 147
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->Initialize()V

    .line 150
    :cond_1
    return-void
.end method

.method public setAssetsLoaded()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetsLoaded:Z

    .line 197
    return-void
.end method

.method public setIsUSBrepl()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IsUSBRepl:Z

    .line 158
    return-void
.end method

.method public startHTTPD(Z)V
    .locals 5
    .parameter "secure"

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-nez v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->checkAssetDir()V

    .line 165
    new-instance v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    const/16 v2, 0x1f41

    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/AppInventor/assets/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, p1, p0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;-><init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->assetServer:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 166
    const-string v1, "ReplForm"

    const-string v2, "started AppInvHTTPD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "ReplForm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up NanoHTTPD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "nextFormName"
    .parameter "startupValue"

    .prologue
    .line 106
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->pushScreen(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public startRepl()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "ReplForm"

    const-string v1, "startRepl()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->startListening(Z)V

    .line 177
    return-void
.end method
