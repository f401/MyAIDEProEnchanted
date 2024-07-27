.class Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;
.super Landroid/widget/LinearLayout;
.source "FragmentColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemView"
.end annotation


# instance fields
.field public holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;Landroid/content/Context;)V
    .registers 9

    const/16 v5, 0xf

    const/16 v4, 0xa

    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;

    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->setOrientation(I)V

    .line 91
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    const v1, 0x1030042

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 93
    int-to-float v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    int-to-float v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    const/4 v1, 0x5

    int-to-float v1, v1

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    new-instance v1, Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-direct {v1, p2}, Lcom/s1243808733/view/ColorBackgroundTextView;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

    iput-object v0, v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;->title:Landroid/widget/TextView;

    .line 100
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

    iput-object v1, v2, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;->subtitle:Lcom/s1243808733/view/ColorBackgroundTextView;

    .line 102
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->addView(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0, v3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->setGravity(I)V

    .line 106
    int-to-float v0, v3

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v0

    int-to-float v1, v4

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    int-to-float v2, v3

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v2

    int-to-float v3, v4

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->setPadding(IIII)V

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;)Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;

    return-object v0
.end method
