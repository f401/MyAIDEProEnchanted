.class final Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlwaysTruePredicate"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/ThreadUtils$1;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Thread;)Z
    .registers 3

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public test(Ljava/lang/ThreadGroup;)Z
    .registers 3

    .line 56
    const/4 v0, 0x1

    return v0
.end method
