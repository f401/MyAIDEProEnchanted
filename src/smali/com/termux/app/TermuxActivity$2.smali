.class Lcom/termux/app/TermuxActivity$2;
.super Landroidj/support/v4/view/PagerAdapter;
.source "TermuxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Landroidj/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 345
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    .line 313
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_1a

    .line 316
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v2, "extra_keys_main"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/app/ExtraKeysView;

    iput-object v0, p2, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    goto :goto_38

    .line 318
    :cond_1a
    const-string p2, "extra_keys_right"

    invoke-static {p2}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 319
    const-string p2, "text_input"

    invoke-static {p2}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 320
    new-instance v1, Lcom/termux/app/TermuxActivity$2$1;

    invoke-direct {v1, p0, p2}, Lcom/termux/app/TermuxActivity$2$1;-><init>(Lcom/termux/app/TermuxActivity$2;Landroid/widget/EditText;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 339
    :goto_38
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
