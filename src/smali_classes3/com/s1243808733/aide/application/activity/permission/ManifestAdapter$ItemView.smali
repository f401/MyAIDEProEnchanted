.class public Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;
.super Landroid/widget/LinearLayout;
.source "ManifestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# instance fields
.field public holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    const/16 v8, 0xd

    const/16 v7, 0x10

    const/4 v5, 0x0

    .line 192
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 195
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 196
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 198
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 199
    const v2, 0x1030042

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 200
    const/16 v2, 0xf

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 202
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 203
    const v3, 0x1030046

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 204
    const/16 v3, 0xe

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 206
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    int-to-float v4, v7

    invoke-static {v4}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result v4

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 210
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 211
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 212
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual {p0, v7}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->setGravity(I)V

    .line 216
    int-to-float v5, v7

    invoke-static {v5}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result v5

    int-to-float v6, v8

    invoke-static {v6}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result v6

    int-to-float v7, v7

    invoke-static {v7}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result v7

    int-to-float v8, v8

    invoke-static {v8}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->setPadding(IIII)V

    .line 217
    invoke-virtual {p0, v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->addView(Landroid/view/View;)V

    .line 218
    invoke-virtual {p0, v4}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->addView(Landroid/view/View;)V

    .line 220
    new-instance v3, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;-><init>()V

    iput-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 221
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    invoke-static {v3, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->access$S1000004(Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;Landroid/widget/CheckBox;)V

    .line 222
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    iput-object v1, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    iput-object v2, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    return-void
.end method
