.class public final Lcom/google/appinventor/components/runtime/Notifier;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Notifier.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Notifier component displays alert messages and creates Android log entries through the following methods: <ul><li> ShowMessageDialog: user must dismiss the message by pressing a button.</li><li> ShowChooseDialog: displays two buttons to let the user choose one of two responses, for example, yes or no, after which the AfterChoosing event is raised.</li><li> ShowTextDialog: lets the user enter text in response to the message, after which the AfterTextInput event is raised. <li> ShowAlert: displays an alert that goes away by itself after a short time.</li><li> LogError: logs an error message to the Android log. </li><li> LogInfo: logs an info message to the Android log.</li><li> LogWarning: logs a warning message to the Android log.</li></ul>"
    iconName = "images/notifier.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Notifier"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private backgroundColor:I

.field private final handler:Landroid/os/Handler;

.field private notifierLength:I

.field private textColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 96
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    .line 85
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    .line 97
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Notifier;->toastNow(Ljava/lang/String;)V

    return-void
.end method

.method private oneButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "message"
    .parameter "title"
    .parameter "buttonText"

    .prologue
    .line 114
    const-string v1, "Notifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One button alert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 116
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier$1;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 124
    return-void
.end method

.method private textInputAlert(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "message"
    .parameter "title"
    .parameter "cancelable"

    .prologue
    .line 219
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 220
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 224
    .local v2, input:Landroid/widget/EditText;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 227
    const-string v3, "OK"

    new-instance v4, Lcom/google/appinventor/components/runtime/Notifier$5;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/Notifier$5;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 235
    if-eqz p3, :cond_0

    .line 236
    const-string v1, "CANCEL"

    .line 237
    .local v1, cancelButtonText:Ljava/lang/String;
    const/4 v3, -0x2

    const-string v4, "CANCEL"

    new-instance v5, Lcom/google/appinventor/components/runtime/Notifier$6;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/Notifier$6;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 246
    .end local v1           #cancelButtonText:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 247
    return-void
.end method

.method private toastNow(Ljava/lang/String;)V
    .locals 8
    .parameter "message"

    .prologue
    const/16 v7, 0xa

    .line 336
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    const/16 v0, 0x16

    .line 338
    .local v0, fontsize:I
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v5, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    invoke-static {v4, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 339
    .local v2, toast:Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v2}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 340
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 341
    .local v1, textView:Landroid/widget/TextView;
    iget v4, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 342
    iget v4, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    int-to-float v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 344
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 345
    .local v3, typeface:Landroid/graphics/Typeface;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 346
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 347
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 349
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 350
    return-void

    .line 336
    .end local v0           #fontsize:I
    .end local v1           #textView:Landroid/widget/TextView;
    .end local v2           #toast:Landroid/widget/Toast;
    .end local v3           #typeface:Landroid/graphics/Typeface;
    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method

.method private twoButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "message"
    .parameter "title"
    .parameter "button1Text"
    .parameter "button2Text"
    .parameter "cancelable"

    .prologue
    .line 147
    const-string v2, "Notifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowChooseDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 150
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 153
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v2, -0x1

    new-instance v3, Lcom/google/appinventor/components/runtime/Notifier$2;

    invoke-direct {v3, p0, p3}, Lcom/google/appinventor/components/runtime/Notifier$2;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p3, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 161
    const/4 v2, -0x3

    new-instance v3, Lcom/google/appinventor/components/runtime/Notifier$3;

    invoke-direct {v3, p0, p4}, Lcom/google/appinventor/components/runtime/Notifier$3;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p4, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    if-eqz p5, :cond_0

    .line 171
    const-string v1, "Cancel"

    .line 172
    .local v1, cancelButtonText:Ljava/lang/String;
    const/4 v2, -0x2

    const-string v3, "Cancel"

    new-instance v4, Lcom/google/appinventor/components/runtime/Notifier$4;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/Notifier$4;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    .end local v1           #cancelButtonText:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 181
    return-void
.end method


# virtual methods
.method public AfterChoosing(Ljava/lang/String;)V
    .locals 3
    .parameter "choice"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 189
    const-string v0, "AfterChoosing"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public AfterTextInput(Ljava/lang/String;)V
    .locals 3
    .parameter "response"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 255
    const-string v0, "AfterTextInput"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public BackgroundColor(I)V
    .locals 0
    .parameter "argb"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the alert\'s background color."
    .end annotation

    .prologue
    .line 302
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    .line 303
    return-void
.end method

.method public LogError(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an error message to the Android log."
    .end annotation

    .prologue
    .line 359
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public LogInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an information message to the Android log."
    .end annotation

    .prologue
    .line 379
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method public LogWarning(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes a warning message to the Android log."
    .end annotation

    .prologue
    .line 369
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method public NotifierLength()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "specifies the length of time that the alert is shown -- either \"short\" or \"long\"."
    .end annotation

    .prologue
    .line 290
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    return v0
.end method

.method public NotifierLength(I)V
    .locals 0
    .parameter "length"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "toast_length"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 283
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    .line 284
    return-void
.end method

.method public ShowAlert(Ljava/lang/String;)V
    .locals 2
    .parameter "notice"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$7;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method public ShowChooseDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "title"
    .parameter "button1Text"
    .parameter "button2Text"
    .parameter "cancelable"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 142
    invoke-direct/range {p0 .. p5}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "title"
    .parameter "buttonText"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public ShowTextDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "message"
    .parameter "title"
    .parameter "cancelable"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Notifier;->textInputAlert(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the alert\'s text color."
    .end annotation

    .prologue
    .line 313
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .parameter "argb"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 325
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    .line 326
    return-void
.end method
