.class public Labcd/fL;
.super Ljava/util/HashMap;

# interfaces
.implements Ljava/util/Map;
.implements Labcd/eL;
.implements Labcd/gL;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x22

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-nez p0, :cond_d

    const-string p0, "null"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_d
    invoke-static {p0, p2}, Labcd/hL;->j6(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    :goto_10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p0, 0x3a

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1}, Labcd/hL;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    goto :goto_27

    :cond_22
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2, v0}, Labcd/fL;->j6(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;)Ljava/lang/String;

    goto :goto_18

    :cond_3d
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Labcd/fL;->j6(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/fL;->j6()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
