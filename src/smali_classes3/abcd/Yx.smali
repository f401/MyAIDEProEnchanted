.class public abstract Labcd/Yx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/util/concurrent/Executor;Labcd/Sx;)Labcd/Yx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "LSx<",
            "TTResult;",
            "LYx<",
            "TTContinuationResult;>;>;)",
            "LYx<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "continueWithTask is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract DW()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation
.end method

.method public abstract FH()Z
.end method

.method public abstract Hw()Z
.end method

.method public j6(Ljava/util/concurrent/Executor;Labcd/Sx;)Labcd/Yx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "LSx<",
            "TTResult;TTContinuationResult;>;)",
            "LYx<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "continueWith is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/util/concurrent/Executor;Labcd/Tx;)Labcd/Yx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Labcd/Tx;",
            ")",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addOnCanceledListener is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/util/concurrent/Executor;Labcd/Ux;)Labcd/Yx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "LUx<",
            "TTResult;>;)",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addOnCompleteListener is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract j6(Ljava/util/concurrent/Executor;Labcd/Vx;)Labcd/Yx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Labcd/Vx;",
            ")",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract j6(Ljava/util/concurrent/Executor;Labcd/Wx;)Labcd/Yx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "LWx<",
            "-TTResult;>;)",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract j6()Ljava/lang/Exception;
.end method

.method public abstract j6(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation
.end method

.method public abstract v5()Z
.end method
