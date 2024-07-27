.class public Lcom/s1243808733/aide/widget/MyCodeEditTextScrollView;
.super Lcom/aide/ui/views/CodeEditTextScrollView;
.source "MyCodeEditTextScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditTextScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method
