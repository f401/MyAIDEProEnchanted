.class Lcom/s1243808733/aide/GradleBuildEvent$100000002;
.super Ljava/lang/Object;
.source "GradleBuildEvent.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/GradleBuildEvent;

.field private final val$item:Lcom/s1243808733/aide/util/Command;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/GradleBuildEvent;Lcom/s1243808733/aide/util/Command;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000002;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    iput-object p2, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000002;->val$item:Lcom/s1243808733/aide/util/Command;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/GradleBuildEvent$100000002;)Lcom/s1243808733/aide/GradleBuildEvent;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000002;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000002;->this$0:Lcom/s1243808733/aide/GradleBuildEvent;

    invoke-static {v0}, Lcom/s1243808733/aide/GradleBuildEvent;->access$L1000000(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/GradleBuildEvent$100000002;->val$item:Lcom/s1243808733/aide/util/Command;

    invoke-virtual {v1}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    return v0
.end method
