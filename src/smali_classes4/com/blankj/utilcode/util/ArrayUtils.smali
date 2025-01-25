.class public Lcom/blankj/utilcode/util/ArrayUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ArrayUtils$Closure;
    }
.end annotation


# static fields
.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([BB)[B
    .registers 4

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([BIB)[B
    .registers 5

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([BI[B)[B
    .registers 4

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([B[B)[B
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .registers 4

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([CIC)[C
    .registers 5

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([CI[C)[C
    .registers 4

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([C[C)[C
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .registers 6

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([DID)[D
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([DI[D)[D
    .registers 4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([D[D)[D
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .registers 4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([FIF)[F
    .registers 5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([FI[F)[F
    .registers 4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([F[F)[F
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([III)[I
    .registers 5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([II[I)[I
    .registers 4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([I[I)[I
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JI[J)[J
    .registers 4

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .registers 6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([J[J)[J
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    :goto_a
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_10
    return-object v0

    :cond_11
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a

    :cond_18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_10
.end method

.method public static add([Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I[TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    :goto_a
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_10
    return-object v0

    :cond_11
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a

    :cond_1c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_10
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_6
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    :cond_d
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    :cond_14
    const-class v0, Ljava/lang/Object;

    goto :goto_6
.end method

.method public static add([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static add([SIS)[S
    .registers 5

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SI[S)[S
    .registers 4

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .registers 4

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([S[S)[S
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([ZIZ)[Z
    .registers 5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZI[Z)[Z
    .registers 4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([Z[Z)[Z
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static varargs asArrayList([Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_a

    array-length v1, p0

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a
.end method

.method public static varargs asLinkedList([Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p0, :cond_a

    array-length v1, p0

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_a

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_9
.end method

.method public static varargs asUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static contains([BB)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([CC)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([DD)Z
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([DDD)Z
    .registers 12

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v3, 0x1

    :cond_c
    return v3
.end method

.method public static contains([FF)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([II)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([JJ)Z
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([SS)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([ZZ)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static copy([B)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([BII)[B

    move-result-object v0

    goto :goto_3
.end method

.method public static copy([C)[C
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([CII)[C

    move-result-object v0

    goto :goto_3
.end method

.method public static copy([D)[D
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([DII)[D

    move-result-object v0

    goto :goto_3
.end method

.method public static copy([F)[F
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([FII)[F

    move-result-object v0

    goto :goto_3
.end method

.method public static copy([I)[I
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([III)[I

    move-result-object v0

    goto :goto_3
.end method

.method public static copy([J)[J
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([JII)[J

    move-result-object v0

    goto :goto_3
.end method

.method public static copy([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public static copy([S)[S
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([SII)[S

    move-result-object v0

    goto :goto_3
.end method

.method public static copy([Z)[Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([ZII)[Z

    move-result-object v0

    goto :goto_3
.end method

.method public static equals([B[B)Z
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static equals([C[C)Z
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public static equals([D[D)Z
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0
.end method

.method public static equals([F[F)Z
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0
.end method

.method public static equals([I[I)Z
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equals([S[S)Z
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0
.end method

.method public static equals([Z[Z)Z
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0
.end method

.method public static forAllDo(Ljava/lang/Object;Lcom/blankj/utilcode/util/ArrayUtils$Closure;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/blankj/utilcode/util/ArrayUtils$Closure",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-void

    :cond_6
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_17

    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    :goto_d
    if-ge v0, v1, :cond_5

    aget-object v2, p0, v0

    invoke-interface {p1, v0, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    instance-of v1, p0, [Z

    if-eqz v1, :cond_31

    check-cast p0, [Z

    array-length v2, p0

    move v1, v0

    :goto_1f
    if-ge v1, v2, :cond_5

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_2e

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_27
    invoke-interface {p1, v1, v0}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    :cond_2e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_27

    :cond_31
    instance-of v1, p0, [B

    if-eqz v1, :cond_46

    check-cast p0, [B

    array-length v1, p0

    :goto_38
    if-ge v0, v1, :cond_5

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_46
    instance-of v1, p0, [C

    if-eqz v1, :cond_5b

    check-cast p0, [C

    array-length v1, p0

    :goto_4d
    if-ge v0, v1, :cond_5

    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_5b
    instance-of v1, p0, [S

    if-eqz v1, :cond_70

    check-cast p0, [S

    array-length v1, p0

    :goto_62
    if-ge v0, v1, :cond_5

    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_70
    instance-of v1, p0, [I

    if-eqz v1, :cond_85

    check-cast p0, [I

    array-length v1, p0

    :goto_77
    if-ge v0, v1, :cond_5

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    :cond_85
    instance-of v1, p0, [J

    if-eqz v1, :cond_9a

    check-cast p0, [J

    array-length v1, p0

    :goto_8c
    if-ge v0, v1, :cond_5

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    :cond_9a
    instance-of v1, p0, [F

    if-eqz v1, :cond_af

    check-cast p0, [F

    array-length v1, p0

    :goto_a1
    if-ge v0, v1, :cond_5

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    :cond_af
    instance-of v1, p0, [D

    if-eqz v1, :cond_c4

    check-cast p0, [D

    array-length v1, p0

    :goto_b6
    if-ge v0, v1, :cond_5

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not an array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->get(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-object p2

    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object p2

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public static indexOf([BB)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_5

    move p2, v0

    :cond_4
    :goto_4
    return p2

    :cond_5
    if-gez p2, :cond_8

    const/4 p2, 0x0

    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p2, v1, :cond_12

    aget-byte v1, p0, p2

    if-eq p1, v1, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_12
    move p2, v0

    goto :goto_4
.end method

.method public static indexOf([CC)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_5

    move p2, v0

    :cond_4
    :goto_4
    return p2

    :cond_5
    if-gez p2, :cond_8

    const/4 p2, 0x0

    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p2, v1, :cond_12

    aget-char v1, p0, p2

    if-eq p1, v1, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_12
    move p2, v0

    goto :goto_4
.end method

.method public static indexOf([DD)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .registers 12

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .registers 9

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move p3, v0

    :cond_8
    :goto_8
    return p3

    :cond_9
    if-gez p3, :cond_c

    const/4 p3, 0x0

    :cond_c
    :goto_c
    array-length v1, p0

    if-ge p3, v1, :cond_18

    aget-wide v2, p0, p3

    cmpl-double v1, p1, v2

    if-eqz v1, :cond_8

    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_18
    move p3, v0

    goto :goto_8
.end method

.method public static indexOf([DDID)I
    .registers 12

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move p3, v0

    :cond_8
    :goto_8
    return p3

    :cond_9
    if-gez p3, :cond_c

    const/4 p3, 0x0

    :cond_c
    :goto_c
    array-length v1, p0

    if-ge p3, v1, :cond_22

    aget-wide v2, p0, p3

    sub-double v4, p1, p4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1f

    aget-wide v2, p0, p3

    add-double v4, p1, p4

    cmpg-double v1, v2, v4

    if-lez v1, :cond_8

    :cond_1f
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_22
    move p3, v0

    goto :goto_8
.end method

.method public static indexOf([FF)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .registers 5

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move p2, v0

    :cond_8
    :goto_8
    return p2

    :cond_9
    if-gez p2, :cond_c

    const/4 p2, 0x0

    :cond_c
    :goto_c
    array-length v1, p0

    if-ge p2, v1, :cond_18

    aget v1, p0, p2

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_18
    move p2, v0

    goto :goto_8
.end method

.method public static indexOf([II)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_5

    move p2, v0

    :cond_4
    :goto_4
    return p2

    :cond_5
    if-gez p2, :cond_8

    const/4 p2, 0x0

    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p2, v1, :cond_12

    aget v1, p0, p2

    if-eq p1, v1, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_12
    move p2, v0

    goto :goto_4
.end method

.method public static indexOf([JJ)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .registers 9

    const/4 v0, -0x1

    if-nez p0, :cond_5

    move p3, v0

    :cond_4
    :goto_4
    return p3

    :cond_5
    if-gez p3, :cond_8

    const/4 p3, 0x0

    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p3, v1, :cond_14

    aget-wide v2, p0, p3

    cmp-long v1, p1, v2

    if-eqz v1, :cond_4

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_14
    move p3, v0

    goto :goto_4
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6

    const/4 v1, -0x1

    if-nez p0, :cond_5

    move v0, v1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-gez p2, :cond_24

    const/4 v0, 0x0

    :goto_8
    if-nez p1, :cond_16

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_22

    aget-object v2, p0, v0

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    add-int/lit8 v0, v0, 0x1

    :cond_16
    array-length v2, p0

    if-ge v0, v2, :cond_22

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_4

    :cond_22
    move v0, v1

    goto :goto_4

    :cond_24
    move v0, p2

    goto :goto_8
.end method

.method public static indexOf([SS)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_5

    move p2, v0

    :cond_4
    :goto_4
    return p2

    :cond_5
    if-gez p2, :cond_8

    const/4 p2, 0x0

    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p2, v1, :cond_12

    aget-short v1, p0, p2

    if-eq p1, v1, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_12
    move p2, v0

    goto :goto_4
.end method

.method public static indexOf([ZZ)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .registers 5

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move p2, v0

    :cond_8
    :goto_8
    return p2

    :cond_9
    if-gez p2, :cond_c

    const/4 p2, 0x0

    :cond_c
    :goto_c
    array-length v1, p0

    if-ge p2, v1, :cond_16

    aget-boolean v1, p0, p2

    if-eq p1, v1, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_16
    move p2, v0

    goto :goto_8
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isSameLength(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static lastIndexOf([BB)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-ltz p2, :cond_3

    array-length v1, p0

    if-lt p2, v1, :cond_17

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_3

    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_14

    move v0, v1

    goto :goto_3

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_17
    move v1, p2

    goto :goto_c
.end method

.method public static lastIndexOf([CC)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-ltz p2, :cond_3

    array-length v1, p0

    if-lt p2, v1, :cond_17

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_3

    aget-char v2, p0, v1

    if-ne p1, v2, :cond_14

    move v0, v1

    goto :goto_3

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_17
    move v1, p2

    goto :goto_c
.end method

.method public static lastIndexOf([DD)I
    .registers 4

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .registers 12

    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .registers 9

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-ltz p3, :cond_7

    array-length v1, p0

    if-lt p3, v1, :cond_1d

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_7

    aget-wide v2, p0, v1

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1a

    move v0, v1

    goto :goto_7

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1d
    move v1, p3

    goto :goto_10
.end method

.method public static lastIndexOf([DDID)I
    .registers 12

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-ltz p3, :cond_7

    array-length v1, p0

    if-lt p3, v1, :cond_27

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_7

    aget-wide v2, p0, v1

    sub-double v4, p1, p4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_24

    aget-wide v2, p0, v1

    add-double v4, p1, p4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_24

    move v0, v1

    goto :goto_7

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_27
    move v1, p3

    goto :goto_10
.end method

.method public static lastIndexOf([FF)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .registers 6

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-ltz p2, :cond_7

    array-length v1, p0

    if-lt p2, v1, :cond_1d

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_7

    aget v2, p0, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1a

    move v0, v1

    goto :goto_7

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1d
    move v1, p2

    goto :goto_10
.end method

.method public static lastIndexOf([II)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-ltz p2, :cond_3

    array-length v1, p0

    if-lt p2, v1, :cond_17

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_3

    aget v2, p0, v1

    if-ne p1, v2, :cond_14

    move v0, v1

    goto :goto_3

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_17
    move v1, p2

    goto :goto_c
.end method

.method public static lastIndexOf([JJ)I
    .registers 4

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .registers 9

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-ltz p3, :cond_3

    array-length v1, p0

    if-lt p3, v1, :cond_19

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_3

    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_16

    move v0, v1

    goto :goto_3

    :cond_16
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_19
    move v1, p3

    goto :goto_c
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-ltz p2, :cond_3

    array-length v1, p0

    if-lt p2, v1, :cond_27

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-nez p1, :cond_1b

    :goto_e
    if-ltz v1, :cond_3

    aget-object v2, p0, v1

    if-nez v2, :cond_16

    move v0, v1

    goto :goto_3

    :cond_16
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_19
    add-int/lit8 v1, v1, -0x1

    :cond_1b
    if-ltz v1, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v0, v1

    goto :goto_3

    :cond_27
    move v1, p2

    goto :goto_c
.end method

.method public static lastIndexOf([SS)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-ltz p2, :cond_3

    array-length v1, p0

    if-lt p2, v1, :cond_17

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_3

    aget-short v2, p0, v1

    if-ne p1, v2, :cond_14

    move v0, v1

    goto :goto_3

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_17
    move v1, p2

    goto :goto_c
.end method

.method public static lastIndexOf([ZZ)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .registers 6

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-ltz p2, :cond_7

    array-length v1, p0

    if-lt p2, v1, :cond_1b

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_7

    aget-boolean v2, p0, v1

    if-ne p1, v2, :cond_18

    move v0, v1

    goto :goto_7

    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1b
    move v1, p2

    goto :goto_10
.end method

.method public static varargs newArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    return-object p0
.end method

.method public static varargs newBooleanArray([Z)[Z
    .registers 1

    return-object p0
.end method

.method public static varargs newByteArray([B)[B
    .registers 1

    return-object p0
.end method

.method public static varargs newCharArray([C)[C
    .registers 1

    return-object p0
.end method

.method public static varargs newDoubleArray([D)[D
    .registers 1

    return-object p0
.end method

.method public static varargs newFloatArray([F)[F
    .registers 1

    return-object p0
.end method

.method public static varargs newIntArray([I)[I
    .registers 1

    return-object p0
.end method

.method public static varargs newLongArray([J)[J
    .registers 1

    return-object p0
.end method

.method public static varargs newShortArray([S)[S
    .registers 1

    return-object p0
.end method

.method private static realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    const/4 v2, 0x0

    if-nez p0, :cond_2a

    if-nez p1, :cond_e

    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Length: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gt p1, v1, :cond_47

    if-ltz p1, :cond_47

    add-int/lit8 v0, v1, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    if-ge p1, v1, :cond_d

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9

    const/4 v4, 0x0

    if-nez p0, :cond_7

    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p2}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-nez v1, :cond_34

    if-nez p1, :cond_18

    invoke-static {p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", array1 Length: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_34
    if-nez v2, :cond_3b

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_3b
    if-gt p1, v1, :cond_6b

    if-ltz p1, :cond_6b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int v3, v1, v2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v1, :cond_56

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_56
    if-nez p1, :cond_5f

    invoke-static {p2, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_5f
    invoke-static {p0, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v4, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    sub-int/2addr v1, p1

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", array1 Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v4, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    if-nez p0, :cond_e

    invoke-static {p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_e
    if-nez p1, :cond_15

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_15
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int v3, v1, v2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method private static realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_18
    invoke-static {v2, v0, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v2

    :cond_1c
    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move v0, v1

    goto :goto_18
.end method

.method private static realCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method private static realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    :cond_8
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-le p2, v1, :cond_f

    move p2, v1

    :cond_f
    sub-int v2, p2, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-gtz v2, :cond_20

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_20
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_4
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ltz p1, :cond_25

    if-ge p1, v0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge p1, v2, :cond_24

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    return-object v1

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove([BI)[B
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([B)[B

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([BI)[B

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([CC)[C
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([C)[C

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([CI)[C

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([DD)[D
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([D)[D

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([DI)[D

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([FF)[F
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([F)[F

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([FI)[F

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([II)[I
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([I)[I

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([II)[I

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([JJ)[J
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([J)[J

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([JI)[J

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([SS)[S
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([S)[S

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([SI)[S

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([ZZ)[Z
    .registers 4

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([Z)[Z

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([ZI)[Z

    move-result-object v0

    goto :goto_b
.end method

.method public static reverse([B)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-le v0, v1, :cond_2

    aget-byte v2, p0, v0

    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([C)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_2

    aget-char v2, p0, v1

    aget-char v3, p0, v0

    aput-char v3, p0, v1

    aput-char v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static reverse([D)V
    .registers 7

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_2

    aget-wide v2, p0, v1

    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    aput-wide v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static reverse([F)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_2

    aget v2, p0, v1

    aget v3, p0, v0

    aput v3, p0, v1

    aput v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static reverse([I)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-le v1, v0, :cond_2

    aget v2, p0, v1

    aget v3, p0, v0

    aput v3, p0, v1

    aput v2, p0, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static reverse([J)V
    .registers 7

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-le v0, v1, :cond_2

    aget-wide v2, p0, v0

    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-le v0, v1, :cond_2

    aget-object v2, p0, v0

    aget-object v3, p0, v1

    aput-object v3, p0, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([S)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-le v0, v1, :cond_2

    aget-short v2, p0, v0

    aget-short v3, p0, v1

    aput-short v3, p0, v0

    aput-short v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([Z)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-le v0, v1, :cond_2

    aget-boolean v2, p0, v0

    aget-boolean v3, p0, v1

    aput-boolean v3, p0, v0

    aput-boolean v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public static sort([B)V
    .registers 3

    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([B)V

    goto :goto_6
.end method

.method public static sort([C)V
    .registers 3

    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    goto :goto_6
.end method

.method public static sort([D)V
    .registers 3

    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    goto :goto_6
.end method

.method public static sort([F)V
    .registers 3

    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([F)V

    goto :goto_6
.end method

.method public static sort([I)V
    .registers 3

    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    goto :goto_6
.end method

.method public static sort([J)V
    .registers 3

    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    goto :goto_6
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_6
.end method

.method public static sort([S)V
    .registers 3

    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([S)V

    goto :goto_6
.end method

.method public static subArray([BII)[B
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static subArray([CII)[C
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static subArray([DII)[D
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static subArray([FII)[F
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static subArray([III)[I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static subArray([JII)[J
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static subArray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static subArray([SII)[S
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static subArray([ZII)[Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Ljava/lang/Boolean;

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Boolean;

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_1c

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_17
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_17

    :cond_1f
    move-object v0, v2

    goto :goto_4
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Ljava/lang/Byte;

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Byte;

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    new-instance v2, Ljava/lang/Byte;

    aget-byte v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    move-object v0, v1

    goto :goto_4
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Ljava/lang/Character;

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Character;

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    new-instance v2, Ljava/lang/Character;

    aget-char v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    move-object v0, v1

    goto :goto_4
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Ljava/lang/Double;

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Double;

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    new-instance v2, Ljava/lang/Double;

    aget-wide v4, p0, v0

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    move-object v0, v1

    goto :goto_4
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Ljava/lang/Float;

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Float;

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    new-instance v2, Ljava/lang/Float;

    aget v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    move-object v0, v1

    goto :goto_4
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Ljava/lang/Integer;

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Integer;

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    new-instance v2, Ljava/lang/Integer;

    aget v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    move-object v0, v1

    goto :goto_4
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Ljava/lang/Long;

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Long;

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    new-instance v2, Ljava/lang/Long;

    aget-wide v4, p0, v0

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    move-object v0, v1

    goto :goto_4
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Ljava/lang/Short;

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Short;

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    new-instance v2, Ljava/lang/Short;

    aget-short v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [B

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [B

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [B

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v2, v1, [B

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    aget-object v1, p0, v0

    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [C

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [C

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [C

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v2, v1, [C

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    aget-object v1, p0, v0

    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput-char v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [D

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [D

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [D

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [D

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_20

    aget-object v2, p0, v0

    if-nez v2, :cond_1b

    move-wide v2, p1

    :goto_16
    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_16

    :cond_20
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [F

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [F

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [F

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v2, v1, [F

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    aget-object v1, p0, v0

    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [I

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [I

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [I

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v2, v1, [I

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    aget-object v1, p0, v0

    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [J

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [J

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [J

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [J

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_20

    aget-object v2, p0, v0

    if-nez v2, :cond_1b

    move-wide v2, p1

    :goto_16
    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_16

    :cond_20
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [S

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [S

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [S

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v2, v1, [S

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    aget-object v1, p0, v0

    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput-short v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Z

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v1, v1, [Z

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    goto :goto_4
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    if-nez v1, :cond_b

    new-array v0, v0, [Z

    goto :goto_4

    :cond_b
    array-length v1, p0

    new-array v2, v1, [Z

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    aget-object v1, p0, v0

    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    goto :goto_4
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string v0, "null"

    :goto_4
    return-object v0

    :cond_5
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_10

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_10
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1b

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_26

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_26
    instance-of v0, p0, [C

    if-eqz v0, :cond_31

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_31
    instance-of v0, p0, [D

    if-eqz v0, :cond_3c

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3c
    instance-of v0, p0, [F

    if-eqz v0, :cond_47

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_47
    instance-of v0, p0, [I

    if-eqz v0, :cond_52

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_52
    instance-of v0, p0, [J

    if-eqz v0, :cond_5d

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5d
    instance-of v0, p0, [S

    if-eqz v0, :cond_68

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array has incompatible type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
