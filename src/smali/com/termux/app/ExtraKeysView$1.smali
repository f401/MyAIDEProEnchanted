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
    .registers 4
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
    .registers 5

    .line 148
    iget-object p1, p0, Lcom/termux/app/ExtraKeysView$1;->val$finalButton:Landroid/widget/Button;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/Button;->performHapticFeedback(I)Z

    .line 149
    iget-object p1, p0, Lcom/termux/app/ExtraKeysView$1;->this$0:Lcom/termux/app/ExtraKeysView;

    invoke-virtual {p1}, Lcom/termux/app/ExtraKeysView;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$1;->val$buttonText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_5e

    :goto_19
    goto :goto_3b

    :sswitch_1a
    const-string v1, "CTRL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_19

    :cond_23
    const/4 v0, 0x2

    goto :goto_3c

    :sswitch_25
    const-string v1, "ALT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_19

    :cond_2e
    const/4 v0, 0x1

    goto :goto_3c

    :sswitch_30
    const-string v1, "FN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_19

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :goto_3b
    const/4 v0, -0x1

    :goto_3c
    packed-switch v0, :pswitch_data_6c

    .line 159
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$1;->val$buttonText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/termux/app/ExtraKeysView;->sendKey(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5c

    .line 154
    :pswitch_45  #0x0, 0x1, 0x2
    iget-object p1, p0, Lcom/termux/app/ExtraKeysView$1;->val$finalButton:Landroid/widget/Button;

    check-cast p1, Landroid/widget/ToggleButton;

    .line 155
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 156
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_59

    const v2, -0x7f2116

    :cond_59
    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_5c
    return-void

    nop

    :sswitch_data_5e
    .sparse-switch
        0x8c8 -> :sswitch_30
        0xfd89 -> :sswitch_25
        0x1fba6b -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_45  #00000000
        :pswitch_45  #00000001
        :pswitch_45  #00000002
    .end packed-switch
.end method
