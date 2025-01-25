.class public abstract Lcom/google/android/gms/common/server/response/FastJsonResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;,
        Lcom/google/android/gms/common/server/response/FastJsonResponse$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "TI;TO;>;",
            "Ljava/lang/Object;",
            ")TI;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method

.method private static j6(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V
    .registers 5

    iget v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->DW:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_16

    iget-object p1, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->gn:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/server/response/FastJsonResponse;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_16
    const/4 p1, 0x7

    if-ne v0, p1, :cond_28

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/util/l;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected DW(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .registers 4

    iget v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1a

    iget-boolean v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->v5:Z

    iget-object p1, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Zo:Ljava/lang/String;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_14

    const-string v0, "Concrete type arrays not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    const-string v0, "Concrete types not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    iget-object p1, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Zo:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->DW(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract DW(Ljava/lang/String;)Z
.end method

.method protected j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Zo:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->gn:Ljava/lang/Class;

    if-eqz v1, :cond_60

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Zo:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Concrete field shouldn\'t be value object: %s"

    invoke-static {v1, v5, v4}, Lcom/google/android/gms/common/internal/r;->j6(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->v5:Z

    :try_start_1e
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "get"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_58} :catch_59

    return-object p1

    :catch_59
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_60
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract j6(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract j6()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->DW(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ","

    if-nez v6, :cond_41

    const-string v6, "{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_41
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_44
    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_59

    const-string v3, "null"

    :goto_55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_59
    iget v3, v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw:I

    packed-switch v3, :pswitch_data_be

    iget-boolean v3, v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->FH:Z

    if-eqz v3, :cond_a5

    check-cast v5, Ljava/util/ArrayList;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    goto :goto_8f

    :pswitch_6f  #0xa
    check-cast v5, Ljava/util/HashMap;

    invoke-static {v1, v5}, Lcom/google/android/gms/common/util/m;->j6(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto :goto_13

    :pswitch_75  #0x9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, [B

    invoke-static {v5}, Lcom/google/android/gms/common/util/c;->DW([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_88

    :pswitch_7f  #0x8
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, [B

    invoke-static {v5}, Lcom/google/android/gms/common/util/c;->j6([B)Ljava/lang/String;

    move-result-object v3

    :goto_88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :goto_8f
    if-ge v6, v3, :cond_a2

    if-lez v6, :cond_96

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_96
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9f

    invoke-static {v1, v4, v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :cond_9f
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    :cond_a2
    const-string v3, "]"

    goto :goto_55

    :cond_a5
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_aa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b3

    const-string v0, "}"

    goto :goto_b5

    :cond_b3
    const-string v0, "{}"

    :goto_b5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_be
    .packed-switch 0x8
        :pswitch_7f  #00000008
        :pswitch_75  #00000009
        :pswitch_6f  #0000000a
    .end packed-switch
.end method
