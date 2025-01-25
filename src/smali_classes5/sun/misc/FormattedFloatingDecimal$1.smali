.class Lsun/misc/FormattedFloatingDecimal$1;
.super Ljava/lang/ThreadLocal;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FormattedFloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1154
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 1156
    const/16 v0, 0x1a

    :try_start_3
    new-array v0, v0, [C
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
