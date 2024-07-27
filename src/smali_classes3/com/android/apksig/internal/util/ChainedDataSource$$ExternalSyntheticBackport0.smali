.class public final synthetic Lcom/android/apksig/internal/util/ChainedDataSource$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m(J)I
    .registers 6

    long-to-int v0, p0

    int-to-long v2, v0

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method
