.class Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002$100000001;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002$100000001;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002$100000001;)Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002$100000001;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002$100000001;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;->access$0(Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;)Lcom/s1243808733/aide/application/activity/LaunchActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->access$1000008(Lcom/s1243808733/aide/application/activity/LaunchActivity;)V

    return-void
.end method
