.class Lsun/misc/GC$Daemon$1;
.super Ljava/lang/Object;
.source "GC.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/GC$Daemon;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    move-object v0, v1

    move-object v2, v1

    .line 135
    :goto_b
    if-eqz v2, :cond_14

    .line 136
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    move-object v0, v2

    move-object v2, v1

    goto :goto_b

    .line 137
    :cond_14
    new-instance v1, Lsun/misc/GC$Daemon;

    invoke-direct {v1, v0, v3}, Lsun/misc/GC$Daemon;-><init>(Ljava/lang/ThreadGroup;Lsun/misc/GC$1;)V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lsun/misc/GC$Daemon;->setDaemon(Z)V

    .line 139
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lsun/misc/GC$Daemon;->setPriority(I)V

    .line 140
    invoke-virtual {v1}, Lsun/misc/GC$Daemon;->start()V

    .line 141
    invoke-static {v1}, Lsun/misc/GC;->access$302(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 142
    return-object v3
.end method
