.class Lcom/s1243808733/aide/GradleBuildEvent$3;
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

.field final val$item:Lcom/s1243808733/aide/util/Command;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/GradleBuildEvent;Lcom/s1243808733/aide/util/Command;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$3;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    iput-object p2, p0, Lcom/s1243808733/aide/GradleBuildEvent$3;->val$item:Lcom/s1243808733/aide/util/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 216
    iget-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$3;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {p1}, Lcom/s1243808733/aide/GradleBuildEvent;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$3;->val$item:Lcom/s1243808733/aide/util/Command;

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
