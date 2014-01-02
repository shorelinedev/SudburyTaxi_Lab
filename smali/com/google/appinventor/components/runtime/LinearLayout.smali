.class public final Lcom/google/appinventor/components/runtime/LinearLayout;
.super Ljava/lang/Object;
.source "LinearLayout.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final layoutManager:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .parameter "context"
    .parameter "orientation"
    .parameter "preferredEmptyWidth"
    .parameter "preferredEmptyHeight"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LinearLayout - preferredEmptyWidth and preferredEmptyHeight must be either both null or both not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/LinearLayout$1;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/appinventor/components/runtime/LinearLayout$1;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    .line 96
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    return-void

    .line 96
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 5
    .parameter "component"

    .prologue
    const/4 v4, -0x2

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setHorizontalGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 116
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 120
    return-void
.end method
