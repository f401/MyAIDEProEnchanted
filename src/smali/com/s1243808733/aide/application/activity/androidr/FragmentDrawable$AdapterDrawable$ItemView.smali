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

.field final this$1:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;Landroid/content/Context;)V
    .registers 6

    .line 82
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->this$1:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;

    .line 83
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder-IA;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

    .line 84
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    const/high16 v1, 0x41800000  # 16.0f

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 87
    const v1, 0x1030042

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 88
    const/high16 p2, 0x41700000  # 15.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

    iput-object p1, p2, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 91
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

    iput-object v0, p2, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;->title:Landroid/widget/TextView;

    .line 93
    const/high16 p2, 0x42100000  # 36.0f

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->addView(Landroid/view/View;II)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->addView(Landroid/view/View;)V

    .line 96
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->setGravity(I)V

    .line 97
    const/high16 p1, 0x41400000  # 12.0f

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result p2

    const/high16 v0, 0x41200000  # 10.0f

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result p1

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->setPadding(IIII)V

    return-void
.end method
