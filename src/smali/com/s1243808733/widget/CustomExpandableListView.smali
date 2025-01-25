.class public Lcom/s1243808733/widget/CustomExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "CustomExpandableListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/s1243808733/widget/CustomExpandableListView;->setDividerHeight(I)V

    return-void
.end method
