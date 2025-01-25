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
    .registers 10

    .line 192
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 198
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 199
    const v3, 0x1030042

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 200
    const/high16 v3, 0x41700000  # 15.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 202
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 203
    const v4, 0x1030046

    invoke-virtual {v3, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 204
    const/high16 v4, 0x41600000  # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 206
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    const/high16 v5, 0x41800000  # 16.0f

    invoke-static {v5}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result v6

    invoke-virtual {v4, v1, v1, v6, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 210
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 211
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 212
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->setGravity(I)V

    .line 216
    invoke-static {v5}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result p1

    const/high16 v6, 0x41500000  # 13.0f

    invoke-static {v6}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result v7

    invoke-static {v5}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result v5

    invoke-static {v6}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->dp2px(F)I

    move-result v6

    invoke-virtual {p0, p1, v7, v5, v6}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->setPadding(IIII)V

    .line 217
    invoke-virtual {p0, v4}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->addView(Landroid/view/View;)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->addView(Landroid/view/View;)V

    .line 220
    new-instance p1, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    invoke-direct {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 221
    invoke-static {p1, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->-$$Nest$fputcb(Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;Landroid/widget/CheckBox;)V

    .line 222
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    iput-object v2, p1, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 223
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    iput-object v3, p1, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    return-void
.end method
