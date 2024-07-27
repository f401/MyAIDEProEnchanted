.class public Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;
.super Landroid/widget/TextView;
.source "EditorHeaderDirectoryName.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getSelectableItemBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidj/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 17
    new-instance v0, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$100000000;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName$100000000;-><init>(Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/widget/EditorHeaderDirectoryName;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 36
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method
