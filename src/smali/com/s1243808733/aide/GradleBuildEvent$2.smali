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
    .registers 5
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
    .registers 4

    .line 180
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->val$itemList:Ljava/util/Map;

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->val$item:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 181
    instance-of v0, p1, Lcom/s1243808733/aide/util/Command;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 182
    check-cast p1, Lcom/s1243808733/aide/util/Command;

    .line 183
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 184
    :cond_1e
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_87

    .line 185
    check-cast p1, Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_88

    :goto_2e
    goto :goto_50

    :sswitch_2f
    const-string v0, "rebuild"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_2e

    :cond_38
    const/4 p1, 0x2

    goto :goto_51

    :sswitch_3a
    const-string v0, "build"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_2e

    :cond_43
    const/4 p1, 0x1

    goto :goto_51

    :sswitch_45
    const-string v0, "terminal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_2e

    :cond_4e
    const/4 p1, 0x0

    goto :goto_51

    :goto_50
    const/4 p1, -0x1

    :goto_51
    packed-switch p1, :pswitch_data_96

    goto :goto_87

    .line 192
    :pswitch_55  #0x2
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 193
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/AideMainActivity;->superRebuildItemSelected()V

    goto :goto_87

    .line 188
    :pswitch_68  #0x1
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 189
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->val$runMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_87

    .line 197
    :pswitch_7d  #0x0
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$2;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_87
    :goto_87
    return v1

    :sswitch_data_88
    .sparse-switch
        -0x46686d84 -> :sswitch_45
        0x59bc66e -> :sswitch_3a
        0x407ba01b -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_7d  #00000000
        :pswitch_68  #00000001
        :pswitch_55  #00000002
    .end packed-switch
.end method
