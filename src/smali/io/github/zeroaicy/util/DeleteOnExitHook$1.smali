.class Lio/github/zeroaicy/util/DeleteOnExitHook$1;
.super Ljava/lang/Thread;
.source "DeleteOnExitHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/util/DeleteOnExitHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 21
    const-string v0, "run-运行"

    invoke-static {v0}, Lio/github/zeroaicy/util/DeleteOnExitHook;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lio/github/zeroaicy/util/DeleteOnExitHook;->-$$Nest$smrunHooks()V

    return-void
.end method
