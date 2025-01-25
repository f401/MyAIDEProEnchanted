.class public final Lcom/google/android/gms/internal/measurement/fa;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd<",
        "Lcom/google/android/gms/internal/measurement/fa;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile FH:[Lcom/google/android/gms/internal/measurement/fa;


# instance fields
.field public Hw:Ljava/lang/Integer;

.field public VH:Ljava/lang/Boolean;

.field public Zo:Lcom/google/android/gms/internal/measurement/la;

.field public v5:Lcom/google/android/gms/internal/measurement/la;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method

.method public static v5()[Lcom/google/android/gms/internal/measurement/fa;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/fa;->FH:[Lcom/google/android/gms/internal/measurement/fa;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/measurement/wd;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/fa;->FH:[Lcom/google/android/gms/internal/measurement/fa;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/fa;

    sput-object v1, Lcom/google/android/gms/internal/measurement/fa;->FH:[Lcom/google/android/gms/internal/measurement/fa;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/fa;->FH:[Lcom/google/android/gms/internal/measurement/fa;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/fa;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/fa;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    return v2

    :cond_15
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-nez v1, :cond_27

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v1, :cond_30

    return v2

    :cond_27
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/la;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-nez v1, :cond_39

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v1, :cond_42

    return v2

    :cond_39
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/la;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-nez v1, :cond_4b

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-eqz v1, :cond_54

    return v2

    :cond_4b
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v1

    if-eqz v1, :cond_5f

    goto :goto_68

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ud;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_68
    :goto_68
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz p1, :cond_74

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result p1

    if-eqz p1, :cond_73

    goto :goto_74

    :cond_73
    return v2

    :cond_74
    :goto_74
    return v0
.end method

.method public final hashCode()I
    .registers 8

    const-class v0, Lcom/google/android/gms/internal/measurement/fa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_15
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/la;->hashCode()I

    move-result v3

    :goto_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-nez v4, :cond_25

    const/4 v4, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/la;->hashCode()I

    move-result v4

    :goto_29
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-nez v5, :cond_2f

    const/4 v5, 0x0

    goto :goto_33

    :cond_2f
    invoke-virtual {v5}, Ljava/lang/Boolean;->hashCode()I

    move-result v5

    :goto_33
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v6, :cond_44

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_44

    :cond_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->hashCode()I

    move-result v2

    :cond_44
    :goto_44
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
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/sd;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v1, :cond_1c

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v1, :cond_26

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_34
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_52

    const/16 v1, 0x8

    if-eq v0, v1, :cond_47

    const/16 v1, 0x12

    if-eq v0, v1, :cond_36

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_28

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Hw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    goto :goto_0

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-nez v0, :cond_33

    new-instance v0, Lcom/google/android/gms/internal/measurement/la;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/la;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    goto :goto_43

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-nez v0, :cond_41

    new-instance v0, Lcom/google/android/gms/internal/measurement/la;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/la;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    :goto_43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    goto :goto_0

    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    goto :goto_0

    :cond_52
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->DW(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(IZ)V

    :cond_28
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
