.class Lcom/google/appinventor/components/runtime/LinearLayout$1;
.super Landroid/widget/LinearLayout;
.source "LinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LinearLayout;

.field final synthetic val$preferredEmptyHeight:Ljava/lang/Integer;

.field final synthetic val$preferredEmptyWidth:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->this$0:Lcom/google/appinventor/components/runtime/LinearLayout;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyWidth:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyHeight:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getSize(II)I
    .locals 4
    .parameter "measureSpec"
    .parameter "preferredSize"

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 78
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 80
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 82
    move v0, v2

    .line 92
    .local v0, result:I
    :cond_0
    :goto_0
    return v0

    .line 85
    .end local v0           #result:I
    :cond_1
    move v0, p2

    .line 86
    .restart local v0       #result:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 88
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyHeight:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 61
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 73
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->getSize(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->getSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->setMeasuredDimension(II)V

    goto :goto_0
.end method
