.class Lcom/google/appinventor/components/runtime/Notifier$5;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->textInputAlert(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Notifier;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$5;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$5;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$5;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->AfterTextInput(Ljava/lang/String;)V

    .line 231
    return-void
.end method
