.class public final Lcom/google/android/gms/common/util/b;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Ljava/lang/StringBuilder;[D)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static j6(Ljava/lang/StringBuilder;[F)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static j6(Ljava/lang/StringBuilder;[I)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static j6(Ljava/lang/StringBuilder;[J)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static j6(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static j6(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    if-eqz v1, :cond_b

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return-void
.end method

.method public static j6(Ljava/lang/StringBuilder;[Z)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    if-eqz v1, :cond_b

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    aget-boolean v2, p1, v1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static j6([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_16

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    const/4 v2, -0x1

    :goto_16
    if-ltz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v0
.end method

.method public static varargs j6([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-eqz p1, :cond_53

    array-length v1, p1

    if-nez v1, :cond_a

    goto :goto_53

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_34

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v2, :cond_48

    aget-object v6, p0, v5

    aget-object v7, p1, v4

    invoke-static {v7, v6}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_34
    array-length v2, p0

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v2, :cond_47

    aget-object v5, p0, v3

    invoke-static {p1, v5}, Lcom/google/android/gms/common/util/b;->j6([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_47
    move v3, v4

    :cond_48
    if-nez v1, :cond_4b

    return-object v0

    :cond_4b
    array-length p0, v1

    if-eq v3, p0, :cond_52

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :cond_52
    return-object v1

    :cond_53
    :goto_53
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
