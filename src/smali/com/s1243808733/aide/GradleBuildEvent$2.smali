.class Lcom/s1243808733/aide/GradleBuildEvent$2;
.super Ljava/lang/Object;
.source "GradleBuildEvent.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/GradleBuildEvent;->showGradleBuildDialog(Landroid/view/MenuItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/GradleBuildEvent;

.field final val$item:Ljava/lang/CharSequence;

.field final val$itemList:Ljava/util/Map;

.field final val$runMenuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/GradleBuildEvent;Ljava/util/Map;Ljava/lang/CharSequence;Landroid/view/MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    iput-object p2, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->val$itemList:Ljava/util/Map;

    iput-object p3, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->val$item:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->val$runMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->val$itemList:Ljava/util/Map;

    iget-object v2, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->val$item:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    instance-of v2, v0, Lcom/s1243808733/aide/util/Command;

    if-eqz v2, :cond_1

    .line 182
    check-cast v0, Lcom/s1243808733/aide/util/Command;

    .line 183
    iget-object v2, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v2}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 185
    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :sswitch_0
    const-string v2, "rebuild"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "build"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "terminal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 193
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->superRebuildItemSelected()V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 189
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->val$runMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x46686d84 -> :sswitch_2
        0x59bc66e -> :sswitch_1
        0x407ba01b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
