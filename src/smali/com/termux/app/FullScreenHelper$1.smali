.class Lcom/termux/app/FullScreenHelper$1;
.super Ljava/lang/Object;
.source "FullScreenHelper.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/FullScreenHelper;->setImmersive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/FullScreenHelper;


# direct methods
.method constructor <init>(Lcom/termux/app/FullScreenHelper;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 3

    .line 36
    and-int/lit8 p1, p1, 0x4

    const-string v0, "viewpager"

    if-nez p1, :cond_28

    .line 37
    iget-object p1, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    iget-object p1, p1, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {p1}, Lcom/termux/app/TermuxPreferences;->isShowExtraKeys()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 38
    iget-object p1, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    iget-object p1, p1, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_22
    iget-object p1, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    invoke-virtual {p1}, Lcom/termux/app/FullScreenHelper;->setImmersiveMode()V

    goto :goto_39

    .line 42
    :cond_28
    iget-object p1, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    iget-object p1, p1, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_39
    return-void
.end method
