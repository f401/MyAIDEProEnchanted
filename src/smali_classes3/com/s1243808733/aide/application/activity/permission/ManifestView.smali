.class public Lcom/s1243808733/aide/application/activity/permission/ManifestView;
.super Lcom/s1243808733/widget/CustomListView;
.source "ManifestView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method
