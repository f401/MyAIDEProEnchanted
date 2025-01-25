.class public Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;
.super Ljava/lang/Object;
.source "TemplateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/project/adapter/TemplateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public ll:Landroid/view/View;

.field public lll:Landroid/view/View;

.field public subtitle:Landroid/widget/TextView;

.field final this$0:Lcom/s1243808733/aide/project/adapter/TemplateView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/project/adapter/TemplateView;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->this$0:Lcom/s1243808733/aide/project/adapter/TemplateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkEmpty(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    if-nez p2, :cond_8

    .line 39
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 41
    :cond_8
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    return-void
.end method


# virtual methods
.method public setIcon(Landroid/graphics/Bitmap;Z)V
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_c

    .line 24
    iget-object p2, p0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->checkEmpty(Landroid/view/View;Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->checkEmpty(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->title:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->checkEmpty(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
