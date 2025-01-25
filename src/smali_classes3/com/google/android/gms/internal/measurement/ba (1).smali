.class public final Lcom/google/android/gms/internal/measurement/ba;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd<",
        "Lcom/google/android/gms/internal/measurement/ba;",
        ">;"
    }
.end annotation


# instance fields
.field public FH:Ljava/lang/Integer;

.field public Hw:Ljava/lang/String;

.field public Zo:[Ljava/lang/String;

.field public v5:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/measurement/Bd;->Zo:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/ba;
    .registers 8

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_92

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x12

    if-eq v0, v1, :cond_55

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_28

    const/4 v3, 0x0

    goto :goto_29

    :cond_28
    array-length v3, v1

    :goto_29
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_31

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_31
    :goto_31
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_41

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    goto :goto_0

    :cond_4a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Hw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    goto :goto_0

    :cond_55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    goto :goto_0

    :cond_5c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->j6()I

    move-result v1

    :try_start_60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v2

    if-ltz v2, :cond_70

    const/4 v3, 0x6

    if-gt v2, v3, :cond_70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    goto :goto_0

    :cond_70
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum MatchType"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_89} :catch_89

    :catch_89
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/pd;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    goto/16 :goto_0

    :cond_92
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/ba;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/ba;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    return v2

    :cond_15
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    if-nez v1, :cond_27

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_30

    return v2

    :cond_27
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    if-nez v1, :cond_39

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    if-eqz v1, :cond_42

    return v2

    :cond_39
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_61

    :cond_58
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ud;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_61
    :goto_61
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result p1

    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    return v2

    :cond_6d
    :goto_6d
    return v0
.end method

.method public final hashCode()I
    .registers 8

    const-class v0, Lcom/google/android/gms/internal/measurement/ba;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_15
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    if-nez v4, :cond_25

    const/4 v4, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v4}, Ljava/lang/Boolean;->hashCode()I

    move-result v4

    :goto_29
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v6, :cond_40

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v6

    if-eqz v6, :cond_3a

    goto :goto_40

    :cond_3a
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->hashCode()I

    move-result v2

    :cond_40
    :goto_40
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

    add-int/2addr v0, v2

    return v0
.end method

.method protected final j6()I
    .registers 8

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/sd;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    if-eqz v1, :cond_4b

    array-length v1, v1

    if-lez v1, :cond_4b

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_34
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_47

    aget-object v5, v5, v1

    if-eqz v5, :cond_44

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/qd;->j6(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_47
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_4b
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ba;->DW(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/ba;

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->DW(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(IZ)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    if-eqz v0, :cond_38

    array-length v0, v0

    if-lez v0, :cond_38

    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_38

    aget-object v1, v1, v0

    if-eqz v1, :cond_35

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_38
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
