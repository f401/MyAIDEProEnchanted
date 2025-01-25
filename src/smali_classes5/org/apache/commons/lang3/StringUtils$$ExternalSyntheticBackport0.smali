.class public final synthetic Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method
