.class public Lsun/misc/Perf$GetPerfAction;
.super Ljava/lang/Object;
.source "Perf.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/Perf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetPerfAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lsun/misc/Perf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0}, Lsun/misc/Perf$GetPerfAction;->run()Lsun/misc/Perf;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/misc/Perf;
    .registers 2

    .line 97
    invoke-static {}, Lsun/misc/Perf;->getPerf()Lsun/misc/Perf;

    move-result-object v0

    return-object v0
.end method
