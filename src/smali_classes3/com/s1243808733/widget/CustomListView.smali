.class public Lcom/s1243808733/widget/CustomListView;
.super Landroid/widget/ListView;
.source "CustomListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 10
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/s1243808733/widget/CustomListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/widget/CustomListView;->setFastScrollEnabled(Z)V

    return-void
.end method
