.class public final Lcom/google/common/util/concurrent/Runnables;
.super Ljava/lang/Object;
.source "Runnables.java"


# static fields
.field private static final EMPTY_RUNNABLE:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/google/common/util/concurrent/Runnables$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Runnables$1;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Runnables;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doNothing()Ljava/lang/Runnable;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/common/util/concurrent/Runnables;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    return-object v0
.end method
