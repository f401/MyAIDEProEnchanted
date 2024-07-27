.class Lio/github/zeroaicy/util/crash/CrashAppLog$100000000;
.super Ljava/lang/Object;
.source "CrashAppLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/crash/CrashAppLog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$100000000;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    return-void
.end method

.method static access$0(Lio/github/zeroaicy/util/crash/CrashAppLog$100000000;)Lio/github/zeroaicy/util/crash/CrashAppLog;
    .registers 2

    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$100000000;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 148
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 149
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$100000000;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    iget-object v0, v0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog$100000000;->this$0:Lio/github/zeroaicy/util/crash/CrashAppLog;

    iget-object v0, v0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u7a0b\u5e8f\u5d29\u6e83"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
