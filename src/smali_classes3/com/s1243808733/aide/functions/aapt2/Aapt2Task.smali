.class public Lcom/s1243808733/aide/functions/aapt2/Aapt2Task;
.super Ljava/lang/Object;
.source "Aapt2Task.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static proxyAapt(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->proxyAapt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
