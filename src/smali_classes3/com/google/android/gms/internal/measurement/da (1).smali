.class public final Lcom/google/android/gms/internal/measurement/da;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd<",
        "Lcom/google/android/gms/internal/measurement/da;",
        ">;"
    }
.end annotation


# instance fields
.field public FH:Ljava/lang/Long;

.field public Hw:Ljava/lang/String;

.field public VH:[Lcom/google/android/gms/internal/measurement/ca;

.field public Zo:[Lcom/google/android/gms/internal/measurement/ea;

.field public gn:[Lcom/google/android/gms/internal/measurement/W;

.field private tp:Ljava/lang/Boolean;

.field private u7:Ljava/lang/String;

.field private v5:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->v5()[Lcom/google/android/gms/internal/measurement/ea;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->v5()[Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/W;->v5()[Lcom/google/android/gms/internal/measurement/W;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/da;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/da;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    if-eqz v1, :cond_1e

    return v2

    :cond_15
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-nez v1, :cond_27

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_30

    return v2

    :cond_27
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-nez v1, :cond_39

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-eqz v1, :cond_42

    return v2

    :cond_39
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    return v2

    :cond_63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-nez v1, :cond_6c

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-eqz v1, :cond_75

    return v2

    :cond_6c
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    return v2

    :cond_75
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-nez v1, :cond_7e

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-eqz v1, :cond_87

    return v2

    :cond_7e
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    return v2

    :cond_87
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v1

    if-eqz v1, :cond_92

    goto :goto_9b

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ud;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9b
    :goto_9b
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz p1, :cond_a7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result p1

    if-eqz p1, :cond_a6

    goto :goto_a7

    :cond_a6
    return v2

    :cond_a7
    :goto_a7
    return v0
.end method

.method public final hashCode()I
    .registers 12

    const-class v0, Lcom/google/android/gms/internal/measurement/da;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_15
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-nez v4, :cond_25

    const/4 v4, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v4}, Ljava/lang/Integer;->hashCode()I

    move-result v4

    :goto_29
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-nez v8, :cond_41

    const/4 v8, 0x0

    goto :goto_45

    :cond_41
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    :goto_45
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-nez v9, :cond_4b

    const/4 v9, 0x0

    goto :goto_4f

    :cond_4b
    invoke-virtual {v9}, Ljava/lang/Boolean;->hashCode()I

    move-result v9

    :goto_4f
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v10, :cond_60

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v10

    if-eqz v10, :cond_5a

    goto :goto_60

    :cond_5a
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->hashCode()I

    move-result v2

    :cond_60
    :goto_60
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

    add-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method

.method protected final j6()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/sd;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/qd;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-eqz v1, :cond_2a

    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    const/4 v3, 0x0

    if-eqz v1, :cond_45

    array-length v1, v1

    if-lez v1, :cond_45

    const/4 v1, 0x0

    :goto_33
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    array-length v5, v4

    if-ge v1, v5, :cond_45

    aget-object v4, v4, v1

    if-eqz v4, :cond_42

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    if-eqz v1, :cond_5f

    array-length v1, v1

    if-lez v1, :cond_5f

    const/4 v1, 0x0

    :goto_4d
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    array-length v5, v4

    if-ge v1, v5, :cond_5f

    aget-object v4, v4, v1

    if-eqz v4, :cond_5c

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_5f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    if-eqz v1, :cond_78

    array-length v1, v1

    if-lez v1, :cond_78

    :goto_66
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    array-length v4, v1

    if-ge v3, v4, :cond_78

    aget-object v1, v1, v3

    if-eqz v1, :cond_75

    const/4 v4, 0x6

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_78
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-eqz v1, :cond_82

    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_82
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-eqz v1, :cond_91

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_91
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 7

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_fe

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_ea

    const/16 v1, 0x18

    if-eq v0, v1, :cond_de

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a9

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_74

    const/16 v1, 0x32

    if-eq v0, v1, :cond_40

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_39

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2e

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Hw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    goto :goto_0

    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    goto :goto_0

    :cond_40
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    if-nez v1, :cond_4a

    const/4 v3, 0x0

    goto :goto_4b

    :cond_4a
    array-length v3, v1

    :goto_4b
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/measurement/W;

    if-eqz v3, :cond_53

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_53
    :goto_53
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_67

    new-instance v1, Lcom/google/android/gms/internal/measurement/W;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/W;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_67
    new-instance v0, Lcom/google/android/gms/internal/measurement/W;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/W;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    goto :goto_0

    :cond_74
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    if-nez v1, :cond_7e

    const/4 v3, 0x0

    goto :goto_7f

    :cond_7e
    array-length v3, v1

    :goto_7f
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/measurement/ca;

    if-eqz v3, :cond_87

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_87
    :goto_87
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_9b

    new-instance v1, Lcom/google/android/gms/internal/measurement/ca;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/ca;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :cond_9b
    new-instance v0, Lcom/google/android/gms/internal/measurement/ca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ca;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    goto/16 :goto_0

    :cond_a9
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    if-nez v1, :cond_b3

    const/4 v3, 0x0

    goto :goto_b4

    :cond_b3
    array-length v3, v1

    :goto_b4
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/measurement/ea;

    if-eqz v3, :cond_bc

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_bc
    :goto_bc
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_d0

    new-instance v1, Lcom/google/android/gms/internal/measurement/ea;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/ea;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    :cond_d0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ea;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ea;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    goto/16 :goto_0

    :cond_de
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_ea
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Zo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_fe
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/measurement/qd;->FH(IJ)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->DW(II)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    array-length v0, v0

    if-lez v0, :cond_39

    const/4 v0, 0x0

    :goto_29
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    array-length v3, v2

    if-ge v0, v3, :cond_39

    aget-object v2, v2, v0

    if-eqz v2, :cond_36

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    if-eqz v0, :cond_51

    array-length v0, v0

    if-lez v0, :cond_51

    const/4 v0, 0x0

    :goto_41
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    array-length v3, v2

    if-ge v0, v3, :cond_51

    aget-object v2, v2, v0

    if-eqz v2, :cond_4e

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    if-eqz v0, :cond_68

    array-length v0, v0

    if-lez v0, :cond_68

    :goto_58
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    array-length v2, v0

    if-ge v1, v2, :cond_68

    aget-object v0, v0, v1

    if-eqz v0, :cond_65

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-eqz v0, :cond_70

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-eqz v0, :cond_7d

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(IZ)V

    :cond_7d
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
