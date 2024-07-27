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

    const/16 v7, 0x24

    const/4 v5, 0x0

    const/16 v6, 0x10

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;-><init>(Lcom/s1243808733/aide/project/adapter/TemplateView;)V

    iput-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    .line 49
    iput-object p1, p0, Lcom/s1243808733/aide/project/adapter/TemplateView;->context:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    const v2, 0x1030042

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 54
    int-to-float v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    const v3, 0x1030046

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 58
    const/16 v3, 0xe

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/16 v4, 0xa

    int-to-float v4, v4

    invoke-static {v4}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 62
    int-to-float v4, v7

    invoke-static {v4}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v4

    int-to-float v5, v7

    invoke-static {v5}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 64
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v5, p0, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    iput-object v3, v5, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->ll:Landroid/view/View;

    .line 70
    iget-object v5, p0, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    iput-object v4, v5, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->lll:Landroid/view/View;

    .line 72
    iget-object v5, p0, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    iput-object v0, v5, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    iput-object v1, v0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->title:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    iput-object v2, v0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0, v3}, Lcom/s1243808733/aide/project/adapter/TemplateView;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0, v4}, Lcom/s1243808733/aide/project/adapter/TemplateView;->addView(Landroid/view/View;)V

    .line 78
    const/16 v0, 0x20

    int-to-float v0, v0

    invoke-static {v0}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v0

    int-to-float v1, v6

    invoke-static {v1}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v1

    int-to-float v2, v6

    invoke-static {v2}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v2

    int-to-float v3, v6

    invoke-static {v3}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/s1243808733/aide/project/adapter/TemplateView;->setPadding(IIII)V

    .line 79
    invoke-virtual {p0, v6}, Lcom/s1243808733/aide/project/adapter/TemplateView;->setGravity(I)V

    return-void
.end method
