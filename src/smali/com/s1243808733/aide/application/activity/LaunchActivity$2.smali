.class Lcom/s1243808733/aide/application/activity/LaunchActivity$2;
.super Lcom/s1243808733/aide/application/activity/Process;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/LaunchActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/LaunchActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/Process;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/s1243808733/aide/application/activity/Process$Bridge;)V
    .locals 4

    .line 141
    new-instance v0, Lcom/s1243808733/aide/application/activity/LaunchActivity$2$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity$2$1;-><init>(Lcom/s1243808733/aide/application/activity/LaunchActivity$2;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
