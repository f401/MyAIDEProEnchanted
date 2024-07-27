.class Lcom/termux/app/ExtraKeysView$100000000;
.super Ljava/lang/Object;
.source "ExtraKeysView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/ExtraKeysView;

.field private final val$buttonText:Ljava/lang/String;

.field private final val$finalButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/termux/app/ExtraKeysView;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/ExtraKeysView$100000000;->this$0:Lcom/termux/app/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/app/ExtraKeysView$100000000;->val$finalButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/termux/app/ExtraKeysView$100000000;->val$buttonText:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/termux/app/ExtraKeysView$100000000;)Lcom/termux/app/ExtraKeysView;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$100000000;->this$0:Lcom/termux/app/ExtraKeysView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    .line 148
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$100000000;->val$finalButton:Landroid/widget/Button;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->performHapticFeedback(I)Z

    .line 149
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$100000000;->this$0:Lcom/termux/app/ExtraKeysView;

    invoke-virtual {v0}, Lcom/termux/app/ExtraKeysView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView$100000000;->val$buttonText:Ljava/lang/String;

    const-string v2, "CTRL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$100000000;->val$finalButton:Landroid/widget/Button;

    check-cast v0, Landroid/widget/ToggleButton;

    .line 155
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 156
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, -0x7f2116

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 160
    :goto_1
    return-void

    .line 150
    :cond_1
    const-string v2, "ALT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "FN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    .line 159
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView$100000000;->val$buttonText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/termux/app/ExtraKeysView;->sendKey(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method
