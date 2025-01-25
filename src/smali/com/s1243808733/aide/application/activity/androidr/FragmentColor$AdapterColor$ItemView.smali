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

.field final this$1:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;Landroid/content/Context;)V
    .registers 5

    .line 87
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->this$1:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;

    .line 88
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder-IA;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

    .line 89
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->setOrientation(I)V

    .line 91
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    const v0, 0x1030042

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 93
    const/high16 v0, 0x41700000  # 15.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    const/high16 v0, 0x40a00000  # 5.0f

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    new-instance v0, Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-direct {v0, p2}, Lcom/s1243808733/view/ColorBackgroundTextView;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

    iput-object p1, p2, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;->title:Landroid/widget/TextView;

    .line 100
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

    iput-object v0, p2, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;->subtitle:Lcom/s1243808733/view/ColorBackgroundTextView;

    .line 102
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->addView(Landroid/view/View;)V

    .line 105
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->setGravity(I)V

    .line 106
    const/high16 p1, 0x41800000  # 16.0f

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result p2

    const/high16 v0, 0x41200000  # 10.0f

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result p1

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->setPadding(IIII)V

    return-void
.end method
