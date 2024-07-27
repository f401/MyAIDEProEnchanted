.class public final synthetic Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m(Ljava/lang/Object;)I
    .registers 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
