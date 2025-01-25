.class public Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ManifestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private cb:Landroid/widget/CheckBox;

.field public subtitle:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fputcb(Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;Landroid/widget/CheckBox;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invertSelection()Z
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->setSelection(Z)V

    .line 177
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setSelection(Z)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setSelectionMode(Z)V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    :cond_c
    const/16 p1, 0x8

    .line 182
    :goto_e
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
