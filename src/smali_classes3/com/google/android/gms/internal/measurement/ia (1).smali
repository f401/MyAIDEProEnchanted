.class public final Lcom/google/android/gms/internal/measurement/ia;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd<",
        "Lcom/google/android/gms/internal/measurement/ia;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile FH:[Lcom/google/android/gms/internal/measurement/ia;


# instance fields
.field public Hw:Ljava/lang/String;

.field private VH:Ljava/lang/Float;

.field public Zo:Ljava/lang/Long;

.field public gn:Ljava/lang/Double;

.field public v5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->VH:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method

.method public static v5()[Lcom/google/android/gms/internal/measurement/ia;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ia;->FH:[Lcom/google/android/gms/internal/measurement/ia;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/measurement/wd;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/ia;->FH:[Lcom/google/android/gms/internal/measurement/ia;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/ia;

    sput-object v1, Lcom/google/android/gms/internal/measurement/ia;->FH:[Lcom/google/android/gms/internal/measurement/ia;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/ia;->FH:[Lcom/google/android/gms/internal/measurement/ia;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/ia;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/ia;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_1e

    return v2

    :cond_15
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    if-nez v1, :cond_27

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    if-eqz v1, :cond_30

    return v2

    :cond_27
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-nez v1, :cond_39

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-eqz v1, :cond_42

    return v2

    :cond_39
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->VH:Ljava/lang/Float;

    if-nez v1, :cond_4b

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ia;->VH:Ljava/lang/Float;

    if-eqz v1, :cond_54

    return v2

    :cond_4b
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ia;->VH:Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    if-nez v1, :cond_5d

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    if-eqz v1, :cond_66

    return v2

    :cond_5d
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    return v2

    :cond_66
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v1

    if-eqz v1, :cond_71

    goto :goto_7a

    :cond_71
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ud;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7a
    :goto_7a
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result p1

    if-eqz p1, :cond_85

    goto :goto_86

    :cond_85
    return v2

    :cond_86
    :goto_86
    return v0
.end method

.method public final hashCode()I
    .registers 9

    const-class v0, Lcom/google/android/gms/internal/measurement/ia;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_15
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-nez v4, :cond_25

    const/4 v4, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v4}, Ljava/lang/Long;->hashCode()I

    move-result v4

    :goto_29
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/ia;->VH:Ljava/lang/Float;

    if-nez v5, :cond_2f

    const/4 v5, 0x0

    goto :goto_33

    :cond_2f
    invoke-virtual {v5}, Ljava/lang/Float;->hashCode()I

    move-result v5

    :goto_33
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    if-nez v6, :cond_39

    const/4 v6, 0x0

    goto :goto_3d

    :cond_39
    invoke-virtual {v6}, Ljava/lang/Double;->hashCode()I

    move-result v6

    :goto_3d
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v7, :cond_4e

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v7

    if-eqz v7, :cond_48

    goto :goto_4e

    :cond_48
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->hashCode()I

    move-result v2

    :cond_4e
    :goto_4e
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
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/sd;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-eqz v1, :cond_26

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/qd;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->VH:Ljava/lang/Float;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_43
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_58

    const/16 v1, 0xa

    if-eq v0, v1, :cond_51

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x25

    if-eq v0, v1, :cond_30

    const/16 v1, 0x29

    if-eq v0, v1, :cond_21

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->gn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    goto :goto_0

    :cond_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->VH()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->VH:Ljava/lang/Float;

    goto :goto_0

    :cond_3f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Zo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    goto :goto_0

    :cond_4a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    goto :goto_0

    :cond_51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    goto :goto_0

    :cond_58
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/qd;->FH(IJ)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->VH:Ljava/lang/Float;

    if-eqz v0, :cond_28

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(IF)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    if-eqz v0, :cond_34

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/qd;->j6(ID)V

    :cond_34
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
