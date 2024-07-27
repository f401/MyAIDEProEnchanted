.class Lsun/misc/GC$LatencyLock;
.super Ljava/lang/Object;
.source "GC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/GC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatencyLock"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsun/misc/GC$1;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Lsun/misc/GC$LatencyLock;-><init>()V

    return-void
.end method
