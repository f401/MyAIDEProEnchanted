.class public final synthetic Lokhttp3/Address$$ExternalSyntheticBackport1;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m(Ljava/lang/Object;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method
