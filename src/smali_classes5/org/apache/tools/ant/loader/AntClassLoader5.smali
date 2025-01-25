.class public Lorg/apache/tools/ant/loader/AntClassLoader5;
.super Lorg/apache/tools/ant/AntClassLoader;
.source "AntClassLoader5.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 31
    invoke-static {}, Lorg/apache/tools/ant/loader/AntClassLoader5;->registerAsParallelCapable()Z

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V
    .registers 5

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/AntClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V

    .line 53
    return-void
.end method
