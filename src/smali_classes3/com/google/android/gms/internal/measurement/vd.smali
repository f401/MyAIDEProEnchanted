.class final Lcom/google/android/gms/internal/measurement/vd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private DW:Ljava/lang/Object;

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/Ad;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Lcom/google/android/gms/internal/measurement/td;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/td<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    return-void
.end method

.method private final DW()[B
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/vd;->j6()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/qd;->j6([B)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/vd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-object v0
.end method

.method private final FH()Lcom/google/android/gms/internal/measurement/vd;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/vd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/vd;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    goto :goto_16

    :cond_11
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_16
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    if-eqz v1, :cond_a3

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/yd;

    if-eqz v2, :cond_2a

    check-cast v1, Lcom/google/android/gms/internal/measurement/yd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/yd;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/yd;

    :goto_26
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    goto/16 :goto_a3

    :cond_2a
    instance-of v2, v1, [B

    if-eqz v2, :cond_35

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_35
    instance-of v2, v1, [[B

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    check-cast v1, [[B

    array-length v2, v1

    new-array v2, v2, [[B

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    :goto_41
    array-length v4, v1

    if-ge v3, v4, :cond_a3

    aget-object v4, v1, v3

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_51
    instance-of v2, v1, [Z

    if-eqz v2, :cond_5c

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_5c
    instance-of v2, v1, [I

    if-eqz v2, :cond_67

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_67
    instance-of v2, v1, [J

    if-eqz v2, :cond_72

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_72
    instance-of v2, v1, [F

    if-eqz v2, :cond_7d

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_7d
    instance-of v2, v1, [D

    if-eqz v2, :cond_88

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_88
    instance-of v2, v1, [Lcom/google/android/gms/internal/measurement/yd;

    if-eqz v2, :cond_a3

    check-cast v1, [Lcom/google/android/gms/internal/measurement/yd;

    array-length v2, v1

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/yd;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    :goto_93
    array-length v4, v1

    if-ge v3, v4, :cond_a3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/yd;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/yd;

    aput-object v4, v2, v3
    :try_end_a0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_a0} :catch_a4

    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    :cond_a3
    :goto_a3
    return-object v0

    :catch_a4
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_ac

    :goto_ab
    throw v1

    :goto_ac
    goto :goto_ab
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/vd;->FH()Lcom/google/android/gms/internal/measurement/vd;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/vd;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/vd;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    if-eqz v0, :cond_93

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    if-eq v0, v2, :cond_1b

    return v1

    :cond_1b
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/td;->j6:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_3d

    check-cast v0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_3d
    instance-of v1, v0, [I

    if-eqz v1, :cond_4c

    check-cast v0, [I

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    :cond_4c
    instance-of v1, v0, [J

    if-eqz v1, :cond_5b

    check-cast v0, [J

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    :cond_5b
    instance-of v1, v0, [F

    if-eqz v1, :cond_6a

    check-cast v0, [F

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    :cond_6a
    instance-of v1, v0, [D

    if-eqz v1, :cond_79

    check-cast v0, [D

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    :cond_79
    instance-of v1, v0, [Z

    if-eqz v1, :cond_88

    check-cast v0, [Z

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    :cond_88
    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    if-eqz v0, :cond_a0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    if-eqz v1, :cond_a0

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a0
    :try_start_a0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/vd;->DW()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/vd;->DW()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ac} :catch_ad

    return p1

    :catch_ad
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/vd;->DW()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_b

    add-int/lit16 v0, v0, 0x20f

    return v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final j6()I
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/td;->DW:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v3, :cond_45

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1c

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1c
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/td;->j6(Ljava/lang/Object;)I

    throw v4

    :cond_20
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/td;->j6(Ljava/lang/Object;)I

    throw v4

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/Ad;

    iget v4, v3, Lcom/google/android/gms/internal/measurement/Ad;->j6:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/qd;->FH(I)I

    move-result v4

    add-int/2addr v4, v1

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/Ad;->DW:[B

    array-length v3, v3

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto :goto_2b

    :cond_44
    move v1, v2

    :cond_45
    return v1
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/Ad;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/yd;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/Ad;->DW:[B

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/pd;->j6([BII)Lcom/google/android/gms/internal/measurement/pd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v1

    array-length p1, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(I)I

    move-result v3

    sub-int/2addr p1, v3

    if-ne v1, p1, :cond_34

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/yd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/yd;->j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    return-void

    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/xd;->j6()Lcom/google/android/gms/internal/measurement/xd;

    move-result-object p1

    throw p1

    :cond_39
    instance-of v1, v0, [Lcom/google/android/gms/internal/measurement/yd;

    if-nez v1, :cond_63

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/lc;

    if-nez v1, :cond_59

    instance-of v0, v0, [Lcom/google/android/gms/internal/measurement/lc;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/td;->j6(Ljava/util/List;)Ljava/lang/Object;

    throw v2

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/td;->j6(Ljava/util/List;)Ljava/lang/Object;

    throw v2

    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/td;->j6(Ljava/util/List;)Ljava/lang/Object;

    throw v2

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/td;->j6(Ljava/util/List;)Ljava/lang/Object;

    throw v2
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->DW:Ljava/lang/Object;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/vd;->j6:Lcom/google/android/gms/internal/measurement/td;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/measurement/td;->DW:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_1f

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1b

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1b
    invoke-virtual {v1, v5, p1}, Lcom/google/android/gms/internal/measurement/td;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/qd;)V

    throw v3

    :cond_1f
    return-void

    :cond_20
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/td;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/qd;)V

    throw v3

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/vd;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/Ad;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/Ad;->j6:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/qd;->Hw(I)V

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/Ad;->DW:[B

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW([B)V

    goto :goto_2a

    :cond_41
    return-void
.end method
