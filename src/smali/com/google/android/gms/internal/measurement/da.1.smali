.class public final Lcom/google/android/gms/internal/measurement/da;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd",
        "<",
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

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->v5()[Lcom/google/android/gms/internal/measurement/ea;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->v5()[Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/W;->v5()[Lcom/google/android/gms/internal/measurement/W;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/da;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/da;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ud;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .registers 12

    const/4 v1, 0x0

    const-class v0, Lcom/google/android/gms/internal/measurement/da;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-nez v3, :cond_3

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v7

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v8

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/wd;->j6([Ljava/lang/Object;)I

    move-result v9

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-nez v4, :cond_4

    move v4, v1

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-nez v5, :cond_5

    move v5, v1

    :goto_4
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_0
    :goto_5
    add-int/lit16 v6, v6, 0x20f

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Boolean;->hashCode()I

    move-result v5

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method protected final j6()I
    .registers 7

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/sd;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/qd;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    array-length v3, v1

    if-ge v2, v3, :cond_8

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 9

    const/16 v6, 0x32

    const/16 v5, 0x2a

    const/16 v4, 0x22

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_12

    const/16 v2, 0x12

    if-eq v0, v2, :cond_11

    const/16 v2, 0x18

    if-eq v0, v2, :cond_10

    if-eq v0, v4, :cond_c

    if-eq v0, v5, :cond_8

    if-eq v0, v6, :cond_4

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x40

    if-eq v0, v2, :cond_2

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Hw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/W;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/measurement/W;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/W;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    array-length v0, v0

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/measurement/W;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/W;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    goto :goto_0

    :cond_8
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/ca;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    new-instance v3, Lcom/google/android/gms/internal/measurement/ca;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/ca;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    array-length v0, v0

    goto :goto_3

    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/measurement/ca;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/ca;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    goto/16 :goto_0

    :cond_c
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/measurement/Bd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    if-nez v0, :cond_e

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/ea;

    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    new-instance v3, Lcom/google/android/gms/internal/measurement/ea;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/ea;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    array-length v0, v0

    goto :goto_5

    :cond_f
    new-instance v3, Lcom/google/android/gms/internal/measurement/ea;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/ea;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Zo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    goto/16 :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->FH:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/qd;->FH(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->v5:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/qd;->DW(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->Zo:[Lcom/google/android/gms/internal/measurement/ea;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/da;->VH:[Lcom/google/android/gms/internal/measurement/ca;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->gn:[Lcom/google/android/gms/internal/measurement/W;

    array-length v2, v0

    if-ge v1, v2, :cond_8

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->u7:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/da;->tp:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(IZ)V

    :cond_a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
