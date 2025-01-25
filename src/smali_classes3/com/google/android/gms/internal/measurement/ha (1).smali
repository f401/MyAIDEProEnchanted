.class public final Lcom/google/android/gms/internal/measurement/ha;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd<",
        "Lcom/google/android/gms/internal/measurement/ha;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile FH:[Lcom/google/android/gms/internal/measurement/ha;


# instance fields
.field public Hw:[Lcom/google/android/gms/internal/measurement/ia;

.field public VH:Ljava/lang/Long;

.field public Zo:Ljava/lang/Long;

.field public gn:Ljava/lang/Integer;

.field public v5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->v5()[Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->gn:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method

.method public static v5()[Lcom/google/android/gms/internal/measurement/ha;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->FH:[Lcom/google/android/gms/internal/measurement/ha;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/measurement/wd;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/ha;->FH:[Lcom/google/android/gms/internal/measurement/ha;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/ha;

    sput-object v1, Lcom/google/android/gms/internal/measurement/ha;->FH:[Lcom/google/android/gms/internal/measurement/ha;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->FH:[Lcom/google/android/gms/internal/measurement/ha;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/ha;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/ha;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    if-nez v1, :cond_20

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    if-eqz v1, :cond_29

    return v2

    :cond_20
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    if-nez v1, :cond_32

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    if-eqz v1, :cond_3b

    return v2

    :cond_32
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    if-nez v1, :cond_44

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    if-eqz v1, :cond_4d

    return v2

    :cond_44
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->gn:Ljava/lang/Integer;

    if-nez v1, :cond_56

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ha;->gn:Ljava/lang/Integer;

    if-eqz v1, :cond_5f

    return v2

    :cond_56
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ha;->gn:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v1

    if-eqz v1, :cond_6a

    goto :goto_73

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ud;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_73
    :goto_73
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz p1, :cond_7f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result p1

    if-eqz p1, :cond_7e

    goto :goto_7f

    :cond_7e
    return v2

    :cond_7f
    :goto_7f
    return v0
.end method

.method public final hashCode()I
    .registers 9

    const-class v0, Lcom/google/android/gms/internal/measurement/ha;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    if-nez v4, :cond_21

    const/4 v4, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {v4}, Ljava/lang/Long;->hashCode()I

    move-result v4

    :goto_25
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    if-nez v5, :cond_2b

    const/4 v5, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {v5}, Ljava/lang/Long;->hashCode()I

    move-result v5

    :goto_2f
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/ha;->gn:Ljava/lang/Integer;

    if-nez v6, :cond_35

    const/4 v6, 0x0

    goto :goto_39

    :cond_35
    invoke-virtual {v6}, Ljava/lang/Integer;->hashCode()I

    move-result v6

    :goto_39
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v7, :cond_4a

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v7

    if-eqz v7, :cond_44

    goto :goto_4a

    :cond_44
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ud;->hashCode()I

    move-result v3

    :cond_4a
    :goto_4a
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    return v0
.end method

.method protected final j6()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/sd;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    if-eqz v1, :cond_1e

    array-length v1, v1

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    aget-object v2, v2, v1

    if-eqz v2, :cond_1b

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    if-eqz v1, :cond_28

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    if-eqz v1, :cond_36

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/qd;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    if-eqz v1, :cond_44

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/qd;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->gn:Ljava/lang/Integer;

    if-eqz v1, :cond_52

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_52
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 7

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_7e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_49

    const/16 v1, 0x12

    if-eq v0, v1, :cond_42

    const/16 v1, 0x18

    if-eq v0, v1, :cond_37

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x28

    if-eq v0, v1, :cond_21

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->gn:Ljava/lang/Integer;

    goto :goto_0

    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Zo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    goto :goto_0

    :cond_37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Zo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    goto :goto_0

    :cond_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    goto :goto_0

    :cond_49
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    const/4 v2, 0x0

    if-nez v1, :cond_54

    const/4 v3, 0x0

    goto :goto_55

    :cond_54
    array-length v3, v1

    :goto_55
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/measurement/ia;

    if-eqz v3, :cond_5d

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5d
    :goto_5d
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_71

    new-instance v1, Lcom/google/android/gms/internal/measurement/ia;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/ia;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    :cond_71
    new-instance v0, Lcom/google/android/gms/internal/measurement/ia;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ia;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    goto :goto_0

    :cond_7e
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    if-eqz v0, :cond_20

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    if-eqz v0, :cond_2c

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/qd;->FH(IJ)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    if-eqz v0, :cond_38

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/qd;->FH(IJ)V

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ha;->gn:Ljava/lang/Integer;

    if-eqz v0, :cond_44

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->DW(II)V

    :cond_44
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
