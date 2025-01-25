.class public Lcom/s1243808733/aide/project/adapter/TemplateView;
.super Landroid/widget/LinearLayout;
.source "TemplateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field public final holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;-><init>(Lcom/s1243808733/aide/project/adapter/TemplateView;)V

    iput-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    .line 49
    iput-object p1, p0, Lcom/s1243808733/aide/project/adapter/TemplateView;->context:Landroid/content/Context;

    .line 50
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    const v3, 0x1030042

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 54
    const/high16 v3, 0x41800000  # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    const v5, 0x1030046

    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 58
    const/high16 v5, 0x41600000  # 14.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/high16 v6, 0x41200000  # 10.0f

    invoke-static {v6}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 62
    const/high16 v6, 0x42100000  # 36.0f

    invoke-static {v6}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v7

    invoke-static {v6}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v6

    invoke-virtual {v5, v1, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 64
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 p1, 0x1

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iput-object v5, v0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->ll:Landroid/view/View;

    .line 70
    iput-object v6, v0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->lll:Landroid/view/View;

    .line 72
    iput-object v1, v0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 73
    iput-object v2, v0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->title:Landroid/widget/TextView;

    .line 74
    iput-object v4, v0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0, v5}, Lcom/s1243808733/aide/project/adapter/TemplateView;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0, v6}, Lcom/s1243808733/aide/project/adapter/TemplateView;->addView(Landroid/view/View;)V

    .line 78
    const/high16 p1, 0x42000000  # 32.0f

    invoke-static {p1}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result p1

    invoke-static {v3}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v0

    invoke-static {v3}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v1

    invoke-static {v3}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/s1243808733/aide/project/adapter/TemplateView;->setPadding(IIII)V

    .line 79
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateView;->setGravity(I)V

    return-void
.end method
