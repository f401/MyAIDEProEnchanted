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
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .line 36
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    iget-object v0, v0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->isShowExtraKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    iget-object v0, v0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v1, "viewpager"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    invoke-virtual {v0}, Lcom/termux/app/FullScreenHelper;->setImmersiveMode()V

    .line 42
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/termux/app/FullScreenHelper$1;->this$0:Lcom/termux/app/FullScreenHelper;

    iget-object v0, v0, Lcom/termux/app/FullScreenHelper;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v1, "viewpager"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
