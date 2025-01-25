.class public Lorg/apache/tools/ant/loader/AntClassLoader2;
.super Lorg/apache/tools/ant/AntClassLoader;
.source "AntClassLoader2.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 29
    invoke-static {}, Lorg/apache/tools/ant/loader/AntClassLoader2;->registerAsParallelCapable()Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader;-><init>()V

    .line 34
    return-void
.end method
