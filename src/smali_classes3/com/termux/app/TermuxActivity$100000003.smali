.class Lcom/termux/app/TermuxActivity$100000003;
.super Landroidj/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "TermuxActivity.java"


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity;

.field private final val$viewPager:Landroidj/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Landroidj/support/v4/view/ViewPager;)V
    .registers 3

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000003;->this$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$100000003;->val$viewPager:Landroidj/support/v4/view/ViewPager;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000003;)Lcom/termux/app/TermuxActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000003;->this$0:Lcom/termux/app/TermuxActivity;

    return-object v0
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 353
    if-nez p1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000003;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000003;->val$viewPager:Landroidj/support/v4/view/ViewPager;

    const-string v1, "text_input"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 357
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
