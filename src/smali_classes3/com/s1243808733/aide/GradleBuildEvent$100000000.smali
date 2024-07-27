.class Lcom/s1243808733/aide/GradleBuildEvent$100000000;
.super Ljava/lang/Object;
.source "GradleBuildEvent.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/GradleBuildEvent;

.field private final val$item:Ljava/lang/CharSequence;

.field private final val$itemList:Ljava/util/Map;

.field private final val$runMenuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/GradleBuildEvent;Ljava/util/Map;Ljava/lang/CharSequence;Landroid/view/MenuItem;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    iput-object p2, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->val$itemList:Ljava/util/Map;

    iput-object p3, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->val$item:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->val$runMenuItem:Landroid/view/MenuItem;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/GradleBuildEvent$100000000;)Lcom/s1243808733/aide/GradleBuildEvent;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->val$itemList:Ljava/util/Map;

    iget-object v1, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->val$item:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    instance-of v1, v0, Lcom/s1243808733/aide/util/Command;

    if-eqz v1, :cond_1

    .line 117
    check-cast v0, Lcom/s1243808733/aide/util/Command;

    .line 118
    iget-object v1, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v1}, Lcom/s1243808733/aide/GradleBuildEvent;->access$L1000000(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Ljava/lang/String;

    .line 121
    const-string v1, "build"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 123
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->access$L1000000(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 124
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->access$L1000000(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->val$runMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 125
    :cond_2
    const-string v1, "rebuild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->access$L1000000(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 128
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000000;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->access$L1000000(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->superRebuildItemSelected()V

    goto :goto_0
.end method
