.class Lcom/s1243808733/aide/application/activity/LaunchActivity$2$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/LaunchActivity$2;->run(Lcom/s1243808733/aide/application/activity/Process$Bridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/LaunchActivity$2;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/LaunchActivity$2;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/LaunchActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/LaunchActivity$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/LaunchActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->-$$Nest$mjumpToMain(Lcom/s1243808733/aide/application/activity/LaunchActivity;)V

    return-void
.end method
