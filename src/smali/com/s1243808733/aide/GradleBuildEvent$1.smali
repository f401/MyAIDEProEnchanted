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
    .registers 5
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
    .registers 3

    .line 120
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->val$itemList:Ljava/util/Map;

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->val$item:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 121
    instance-of v0, p1, Lcom/s1243808733/aide/util/Command;

    if-eqz v0, :cond_1c

    .line 122
    check-cast p1, Lcom/s1243808733/aide/util/Command;

    .line 123
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_5d

    .line 124
    :cond_1c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 125
    check-cast p1, Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "build"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "rebuild"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_5d

    .line 132
    :cond_36
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 133
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/AideMainActivity;->superRebuildItemSelected()V

    goto :goto_5d

    .line 128
    :cond_49
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 129
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$1;->val$runMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_5d
    :goto_5d
    const/4 p1, 0x0

    return p1
.end method
