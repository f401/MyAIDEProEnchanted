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
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Landroidj/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 345
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    .line 313
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez p2, :cond_0

    .line 316
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v2, "extra_keys_main"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/app/ExtraKeysView;

    iput-object v0, v1, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    .line 339
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    .line 318
    :cond_0
    const-string v1, "extra_keys_right"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 319
    const-string v0, "text_input"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 320
    new-instance v2, Lcom/termux/app/TermuxActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/TermuxActivity$2$1;-><init>(Lcom/termux/app/TermuxActivity$2;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
