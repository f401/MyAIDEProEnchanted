.class public final synthetic Lorg/apache/commons/lang3/builder/CompareToBuilder$$ExternalSyntheticBackport2;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m(II)I
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method
