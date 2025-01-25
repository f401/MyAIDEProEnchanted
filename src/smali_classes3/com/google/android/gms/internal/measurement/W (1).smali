.class public final Lcom/google/android/gms/internal/measurement/W;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd<",
        "Lcom/google/android/gms/internal/measurement/W;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile FH:[Lcom/google/android/gms/internal/measurement/W;


# instance fields
.field public Hw:Ljava/lang/Integer;

.field private VH:Ljava/lang/Boolean;

.field public Zo:[Lcom/google/android/gms/internal/measurement/X;

.field private gn:Ljava/lang/Boolean;

.field public v5:[Lcom/google/android/gms/internal/measurement/aa;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/aa;->v5()[Lcom/google/android/gms/internal/measurement/aa;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/X;->v5()[Lcom/google/android/gms/internal/measurement/X;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->VH:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->gn:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method

.method public static v5()[Lcom/google/android/gms/internal/measurement/W;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/W;->FH:[Lcom/google/android/gms/internal/measurement/W;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/measurement/wd;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/W;->FH:[Lcom/google/android/gms/internal/measurement/W;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/W;

    sput-object v1, Lcom/google/android/gms/internal/measurement/W;->FH:[Lcom/google/android/gms/internal/measurement/W;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/google/android/gms/internal/measurement/W;->FH:[Lcom/google/android/gms/internal/measurement/W;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/W;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/W;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    return v2

    :cond_15
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->VH:Ljava/lang/Boolean;

    if-nez v1, :cond_3d

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/W;->VH:Ljava/lang/Boolean;

    if-eqz v1, :cond_46

    return v2

    :cond_3d
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/W;->VH:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->gn:Ljava/lang/Boolean;

    if-nez v1, :cond_4f

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/W;->gn:Ljava/lang/Boolean;

    if-eqz v1, :cond_58

    return v2

    :cond_4f
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/W;->gn:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_6c

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ud;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6c
    :goto_6c
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz p1, :cond_78

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result p1

    if-eqz p1, :cond_77

    goto :goto_78

    :cond_77
    return v2

    :cond_78
    :goto_78
    return v0
.end method

.method public final hashCode()I
    .registers 9

    const-class v0, Lcom/google/android/gms/internal/measurement/W;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_15
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/W;->VH:Ljava/lang/Boolean;

    if-nez v5, :cond_27

    const/4 v5, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual {v5}, Ljava/lang/Boolean;->hashCode()I

    move-result v5

    :goto_2b
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/W;->gn:Ljava/lang/Boolean;

    if-nez v6, :cond_31

    const/4 v6, 0x0

    goto :goto_35

    :cond_31
    invoke-virtual {v6}, Ljava/lang/Boolean;->hashCode()I

    move-result v6

    :goto_35
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v7, :cond_46

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v7

    if-eqz v7, :cond_40

    goto :goto_46

    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->hashCode()I

    move-result v2

    :cond_46
    :goto_46
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method

.method protected final j6()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/sd;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    array-length v1, v1

    if-lez v1, :cond_2d

    const/4 v1, 0x0

    :goto_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    array-length v5, v4

    if-ge v1, v5, :cond_2d

    aget-object v4, v4, v1

    if-eqz v4, :cond_2a

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    if-eqz v1, :cond_46

    array-length v1, v1

    if-lez v1, :cond_46

    :goto_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    array-length v4, v1

    if-ge v3, v4, :cond_46

    aget-object v1, v1, v3

    if-eqz v1, :cond_43

    const/4 v4, 0x3

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_46
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->VH:Ljava/lang/Boolean;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->gn:Ljava/lang/Boolean;

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_62
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 7

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_ad

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a1

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_38

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x28

    if-eq v0, v1, :cond_22

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Hw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->gn:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Hw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->VH:Ljava/lang/Boolean;

    goto :goto_0

    :cond_38
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    if-nez v1, :cond_42

    const/4 v3, 0x0

    goto :goto_43

    :cond_42
    array-length v3, v1

    :goto_43
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/measurement/X;

    if-eqz v3, :cond_4b

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4b
    :goto_4b
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_5f

    new-instance v1, Lcom/google/android/gms/internal/measurement/X;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/X;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_5f
    new-instance v0, Lcom/google/android/gms/internal/measurement/X;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/X;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    goto :goto_0

    :cond_6c
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    if-nez v1, :cond_76

    const/4 v3, 0x0

    goto :goto_77

    :cond_76
    array-length v3, v1

    :goto_77
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/measurement/aa;

    if-eqz v3, :cond_7f

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7f
    :goto_7f
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_93

    new-instance v1, Lcom/google/android/gms/internal/measurement/aa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/aa;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_93
    new-instance v0, Lcom/google/android/gms/internal/measurement/aa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/aa;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    goto/16 :goto_0

    :cond_a1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_ad
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->Hw:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->DW(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    array-length v0, v0

    if-lez v0, :cond_25

    const/4 v0, 0x0

    :goto_15
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/W;->v5:[Lcom/google/android/gms/internal/measurement/aa;

    array-length v3, v2

    if-ge v0, v3, :cond_25

    aget-object v2, v2, v0

    if-eqz v2, :cond_22

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    if-eqz v0, :cond_3c

    array-length v0, v0

    if-lez v0, :cond_3c

    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->Zo:[Lcom/google/android/gms/internal/measurement/X;

    array-length v2, v0

    if-ge v1, v2, :cond_3c

    aget-object v0, v0, v1

    if-eqz v0, :cond_39

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->VH:Ljava/lang/Boolean;

    if-eqz v0, :cond_48

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(IZ)V

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/W;->gn:Ljava/lang/Boolean;

    if-eqz v0, :cond_54

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(IZ)V

    :cond_54
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
