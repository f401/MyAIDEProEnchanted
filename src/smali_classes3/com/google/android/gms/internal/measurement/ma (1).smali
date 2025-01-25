.class public final Lcom/google/android/gms/internal/measurement/ma;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd<",
        "Lcom/google/android/gms/internal/measurement/ma;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile FH:[Lcom/google/android/gms/internal/measurement/ma;


# instance fields
.field public Hw:Ljava/lang/Integer;

.field public v5:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/measurement/Bd;->DW:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method

.method public static v5()[Lcom/google/android/gms/internal/measurement/ma;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ma;->FH:[Lcom/google/android/gms/internal/measurement/ma;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/measurement/wd;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/ma;->FH:[Lcom/google/android/gms/internal/measurement/ma;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/ma;

    sput-object v1, Lcom/google/android/gms/internal/measurement/ma;->FH:[Lcom/google/android/gms/internal/measurement/ma;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/ma;->FH:[Lcom/google/android/gms/internal/measurement/ma;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/ma;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/ma;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    return v2

    :cond_15
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([J[J)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_3d

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ud;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3d
    :goto_3d
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result p1

    if-eqz p1, :cond_48

    goto :goto_49

    :cond_48
    return v2

    :cond_49
    :goto_49
    return v0
.end method

.method public final hashCode()I
    .registers 6

    const-class v0, Lcom/google/android/gms/internal/measurement/ma;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_15
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([J)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_2c

    :cond_26
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->hashCode()I

    move-result v2

    :cond_2c
    :goto_2c
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method

.method protected final j6()I
    .registers 8

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/sd;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    if-eqz v1, :cond_2f

    array-length v1, v1

    if-lez v1, :cond_2f

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    array-length v5, v4

    if-ge v1, v5, :cond_2a

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/qd;->j6(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2a
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2f
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 8

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_83

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_56

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1a

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->FH(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->j6()I

    move-result v1

    const/4 v3, 0x0

    :goto_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->u7()I

    move-result v4

    if-lez v4, :cond_33

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Zo()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_33
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/pd;->v5(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    if-nez v1, :cond_3c

    const/4 v4, 0x0

    goto :goto_3d

    :cond_3c
    array-length v4, v1

    :goto_3d
    add-int/2addr v3, v4

    new-array v5, v3, [J

    if-eqz v4, :cond_45

    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_45
    :goto_45
    if-ge v4, v3, :cond_50

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Zo()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_50
    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->Hw(I)V

    goto :goto_0

    :cond_56
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    if-nez v1, :cond_60

    const/4 v3, 0x0

    goto :goto_61

    :cond_60
    array-length v3, v1

    :goto_61
    add-int/2addr v0, v3

    new-array v4, v0, [J

    if-eqz v3, :cond_69

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_69
    :goto_69
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_79

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Zo()J

    move-result-wide v1

    aput-wide v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_79
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Zo()J

    move-result-wide v0

    aput-wide v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    goto/16 :goto_0

    :cond_83
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_8f
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->DW(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    if-eqz v0, :cond_22

    array-length v0, v0

    if-lez v0, :cond_22

    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    array-length v2, v1

    if-ge v0, v2, :cond_22

    const/4 v2, 0x2

    aget-wide v3, v1, v0

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/qd;->FH(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
