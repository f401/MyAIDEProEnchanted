.class Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;
.super Landroid/widget/LinearLayout;
.source "FragmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemView"
.end annotation


# instance fields
.field public holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;Landroid/content/Context;)V
    .registers 11

    const/16 v7, 0x24

    const/16 v6, 0x10

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;

    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

    .line 84
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    int-to-float v2, v6

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 87
    const v2, 0x1030042

    invoke-virtual {v1, p2, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 88
    const/16 v2, 0xf

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

    iput-object v0, v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 91
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

    iput-object v1, v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;->title:Landroid/widget/TextView;

    .line 93
    int-to-float v2, v7

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v2

    int-to-float v3, v7

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->addView(Landroid/view/View;II)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0, v6}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->setGravity(I)V

    .line 97
    int-to-float v0, v5

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v0

    int-to-float v1, v4

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    int-to-float v2, v5

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v2

    int-to-float v3, v4

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->setPadding(IIII)V

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;)Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;

    return-object v0
.end method
