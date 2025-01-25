.class public final Lcom/google/android/gms/internal/measurement/Y;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd<",
        "Lcom/google/android/gms/internal/measurement/Y;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile FH:[Lcom/google/android/gms/internal/measurement/Y;


# instance fields
.field public Hw:Lcom/google/android/gms/internal/measurement/ba;

.field public VH:Ljava/lang/String;

.field public Zo:Ljava/lang/Boolean;

.field public v5:Lcom/google/android/gms/internal/measurement/Z;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method

.method public static v5()[Lcom/google/android/gms/internal/measurement/Y;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/Y;->FH:[Lcom/google/android/gms/internal/measurement/Y;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/measurement/wd;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/Y;->FH:[Lcom/google/android/gms/internal/measurement/Y;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/Y;

    sput-object v1, Lcom/google/android/gms/internal/measurement/Y;->FH:[Lcom/google/android/gms/internal/measurement/Y;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/Y;->FH:[Lcom/google/android/gms/internal/measurement/Y;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/Y;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/Y;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    if-eqz v1, :cond_1e

    return v2

    :cond_15
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/ba;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-nez v1, :cond_27

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-eqz v1, :cond_30

    return v2

    :cond_27
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/Z;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    if-nez v1, :cond_39

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    if-eqz v1, :cond_42

    return v2

    :cond_39
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    if-nez v1, :cond_4b

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    if-eqz v1, :cond_54

    return v2

    :cond_4b
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    const-class v0, Lcom/google/android/gms/internal/measurement/Y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ba;->hashCode()I

    move-result v1

    :goto_15
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/Z;->hashCode()I

    move-result v3

    :goto_1f
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    if-nez v4, :cond_25

    const/4 v4, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v4}, Ljava/lang/Boolean;->hashCode()I

    move-result v4

    :goto_29
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    if-nez v5, :cond_2f

    const/4 v5, 0x0

    goto :goto_33

    :cond_2f
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

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

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-eqz v1, :cond_18

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    if-eqz v1, :cond_30

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_4e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x18

    if-eq v0, v1, :cond_24

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/pd;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    goto :goto_0

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->Hw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-nez v0, :cond_3a

    new-instance v0, Lcom/google/android/gms/internal/measurement/Z;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/Z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    goto :goto_4a

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    if-nez v0, :cond_48

    new-instance v0, Lcom/google/android/gms/internal/measurement/ba;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ba;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    :goto_4a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    goto :goto_0

    :cond_4e
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(IZ)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    if-eqz v0, :cond_24

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILjava/lang/String;)V

    :cond_24
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
