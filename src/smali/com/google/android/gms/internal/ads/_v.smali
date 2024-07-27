.class final Lcom/google/android/gms/internal/ads/_v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private DW:Ljava/lang/Object;

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/fw;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Lcom/google/android/gms/internal/ads/Yv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Yv",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    return-void
.end method

.method private final DW()[B
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/_v;->j6()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vv;->j6([B)Lcom/google/android/gms/internal/ads/Vv;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_v;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-object v0
.end method

.method private final FH()Lcom/google/android/gms/internal/ads/_v;
    .registers 6

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/gms/internal/ads/_v;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/_v;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->j6:Lcom/google/android/gms/internal/ads/Yv;

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->j6:Lcom/google/android/gms/internal/ads/Yv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/cw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cw;

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, [[B

    array-length v2, v0

    new-array v4, v2, [[B

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    move v2, v1

    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/android/gms/internal/ads/cw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/ads/cw;

    array-length v2, v0

    new-array v4, v2, [Lcom/google/android/gms/internal/ads/cw;

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    move v2, v1

    :goto_3
    array-length v1, v0

    if-ge v2, v1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cw;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cw;

    aput-object v1, v4, v2
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/_v;->FH()Lcom/google/android/gms/internal/ads/_v;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/_v;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/_v;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_v;->j6:Lcom/google/android/gms/internal/ads/Yv;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/_v;->j6:Lcom/google/android/gms/internal/ads/Yv;

    if-ne v1, v2, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Yv;->j6:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_3

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    check-cast v0, [I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v1, v0, [J

    if-eqz v1, :cond_5

    check-cast v0, [J

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0

    :cond_5
    instance-of v1, v0, [F

    if-eqz v1, :cond_6

    check-cast v0, [F

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0

    :cond_6
    instance-of v1, v0, [D

    if-eqz v1, :cond_7

    check-cast v0, [D

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_0

    :cond_7
    instance-of v1, v0, [Z

    if-eqz v1, :cond_8

    check-cast v0, [Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto/16 :goto_0

    :cond_8
    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/_v;->DW()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/_v;->DW()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/_v;->DW()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final j6()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fw;

    iget v3, v0, Lcom/google/android/gms/internal/ads/fw;->j6:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Vv;->FH(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fw;->DW:[B

    array-length v0, v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_1
    return v1
.end method

.method final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fw;

    iget v2, v0, Lcom/google/android/gms/internal/ads/fw;->j6:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Vv;->Hw(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fw;->DW:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Vv;->FH([B)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/fw;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cw;

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/fw;->DW:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Uv;->j6([BII)Lcom/google/android/gms/internal/ads/Uv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v2

    array-length v0, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Vv;->DW(I)I

    move-result v3

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/cw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_v;->j6:Lcom/google/android/gms/internal/ads/Yv;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/_v;->j6:Lcom/google/android/gms/internal/ads/Yv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->DW:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_v;->FH:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0

    :cond_2
    instance-of v0, v0, [Lcom/google/android/gms/internal/ads/cw;

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
