.class Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;
.super Lcom/s1243808733/aide/application/activity/Process;
.source "LaunchActivity.java"


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/LaunchActivity;)V
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/Process;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;)Lcom/s1243808733/aide/application/activity/LaunchActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    return-object v0
.end method


# virtual methods
.method public run(Lcom/s1243808733/aide/application/activity/Process$Bridge;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/application/activity/Process$Bridge;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 141
    new-instance v0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002$100000001;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002$100000001;-><init>(Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;)V

    const/4 v1, 0x0

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
