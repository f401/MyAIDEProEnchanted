.class public Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;
.super Landroid/widget/LinearLayout;
.source "EditorHeaderFileInfoInner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 21
    new-instance p1, Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner$1;

    invoke-direct {p1, p0}, Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner$1;-><init>(Lcom/s1243808733/aide/widget/EditorHeaderFileInfoInner;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
