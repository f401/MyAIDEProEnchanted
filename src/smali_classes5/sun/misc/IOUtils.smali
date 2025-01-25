.class public Lsun/misc/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFully(Ljava/io/InputStream;IZ)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v2, 0x0

    .line 52
    new-array v1, v2, [B

    .line 53
    const/4 v3, -0x1

    if-ne p1, v3, :cond_a

    move p1, v0

    :cond_a
    move v3, v2

    .line 55
    :goto_b
    if-ge v3, p1, :cond_35

    .line 57
    array-length v2, v1

    if-lt v3, v2, :cond_36

    .line 58
    sub-int v2, p1, v3

    array-length v4, v1

    add-int/lit16 v4, v4, 0x400

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59
    array-length v4, v1

    add-int v5, v3, v2

    if-ge v4, v5, :cond_24

    .line 60
    add-int v4, v3, v2

    invoke-static {v1, v4}, Lcom/spartacusrex/spartacuside/helper/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 65
    :cond_24
    :goto_24
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 66
    if-gez v2, :cond_41

    .line 67
    if-eqz p2, :cond_2e

    if-ne p1, v0, :cond_39

    .line 70
    :cond_2e
    array-length v0, v1

    if-eq v0, v3, :cond_35

    .line 71
    invoke-static {v1, v3}, Lcom/spartacusrex/spartacuside/helper/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 78
    :cond_35
    return-object v1

    .line 63
    :cond_36
    array-length v2, v1

    sub-int/2addr v2, v3

    goto :goto_24

    .line 68
    :cond_39
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Detect premature EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_41
    add-int/2addr v2, v3

    move v3, v2

    .line 77
    goto :goto_b
.end method
