.class public final Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;
.super Ljava/lang/Object;
.source "RuntimeErrorAlert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "message"
    .parameter "title"
    .parameter "buttonText"

    .prologue
    .line 23
    const-string v1, "RuntimeErrorAlert"

    const-string v2, "in alert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 25
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v1, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 31
    if-nez p1, :cond_0

    .line 33
    const-class v1, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No error message available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 38
    return-void

    .line 35
    :cond_0
    const-class v1, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
