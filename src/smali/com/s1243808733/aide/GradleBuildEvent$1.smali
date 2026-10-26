.class Lcom/s1243808733/aide/GradleBuildEvent$1;
.super Ljava/lang/Object;
.source "GradleBuildEvent.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/GradleBuildEvent;->showBuildDialog(Landroid/view/MenuItem;)V
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

    .line 116
    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    iput-object p2, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->val$itemList:Ljava/util/Map;

    iput-object p3, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->val$item:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->val$runMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->val$itemList:Ljava/util/Map;

    iget-object v1, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->val$item:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/s1243808733/aide/util/Command;

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Lcom/s1243808733/aide/util/Command;

    .line 123
    iget-object v1, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    .line 129
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "build"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rebuild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 133
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->superRebuildItemSelected()V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 129
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->val$runMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method
