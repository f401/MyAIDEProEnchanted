.class Lcom/termux/app/ExtraKeysView$1;
.super Ljava/lang/Object;
.source "ExtraKeysView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/ExtraKeysView;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/ExtraKeysView;

.field final val$buttonText:Ljava/lang/String;

.field final val$finalButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/termux/app/ExtraKeysView;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/termux/app/ExtraKeysView$1;->this$0:Lcom/termux/app/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/app/ExtraKeysView$1;->val$finalButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/termux/app/ExtraKeysView$1;->val$buttonText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, -0x1

    .line 148
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$1;->val$finalButton:Landroid/widget/Button;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->performHapticFeedback(I)Z

    .line 149
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$1;->this$0:Lcom/termux/app/ExtraKeysView;

    invoke-virtual {v0}, Lcom/termux/app/ExtraKeysView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 150
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$1;->val$buttonText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 159
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$1;->val$buttonText:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/termux/app/ExtraKeysView;->sendKey(Landroid/view/View;Ljava/lang/String;)V

    .line 156
    :goto_1
    return-void

    .line 150
    :sswitch_0
    const-string v3, "CTRL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "ALT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "FN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$1;->val$finalButton:Landroid/widget/Button;

    check-cast v0, Landroid/widget/ToggleButton;

    .line 155
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 156
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, -0x7f2116

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8c8 -> :sswitch_2
        0xfd89 -> :sswitch_1
        0x1fba6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
