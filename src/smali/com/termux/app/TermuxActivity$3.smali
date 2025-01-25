.class Lcom/termux/app/TermuxActivity$3;
.super Landroidj/support/v4/view/ViewPager$SimpleOnPageChangeListener;
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

.field final val$viewPager:Landroidj/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Landroidj/support/v4/view/ViewPager;)V
    .registers 3

    .line 350
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$3;->val$viewPager:Landroidj/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 3

    if-nez p1, :cond_a

    .line 354
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->requestFocus()Z

    goto :goto_1d

    .line 356
    :cond_a
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$3;->val$viewPager:Landroidj/support/v4/view/ViewPager;

    const-string v0, "text_input"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_1d

    .line 357
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1d
    :goto_1d
    return-void
.end method
