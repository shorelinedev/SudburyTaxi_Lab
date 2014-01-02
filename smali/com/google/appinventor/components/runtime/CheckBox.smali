.class public final Lcom/google/appinventor/components/runtime/CheckBox;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "CheckBox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Checkbox that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor."
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private fontTypeface:I

.field private italic:Z

.field private textColor:I

.field private final view:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 62
    new-instance v0, Landroid/widget/CheckBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 70
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->BackgroundColor(I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->Enabled(Z)V

    .line 72
    iput v4, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 74
    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->FontSize(F)V

    .line 75
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->Text(Ljava/lang/String;)V

    .line 76
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->TextColor(I)V

    .line 77
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/CheckBox;->Checked(Z)V

    .line 78
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 118
    iget v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 131
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->backgroundColor:I

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public Changed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 90
    const-string v0, "Changed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public Checked(Z)V
    .locals 1
    .parameter "value"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 351
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->invalidate()V

    .line 352
    return-void
.end method

.method public Checked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .parameter "enabled"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 160
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 3
    .parameter "bold"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 189
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .parameter "italic"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 218
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 241
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .parameter "typeface"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 273
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    .line 274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 275
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 98
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 106
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 309
    iget v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 322
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->textColor:I

    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CheckBox;->Changed()V

    .line 358
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "previouslyFocused"
    .parameter "gainFocus"

    .prologue
    .line 363
    if-eqz p2, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CheckBox;->GotFocus()V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CheckBox;->LostFocus()V

    goto :goto_0
.end method
