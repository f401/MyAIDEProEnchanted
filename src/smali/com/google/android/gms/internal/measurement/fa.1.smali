.class public final Lcom/google/android/gms/internal/measurement/fa;
.super Lcom/google/android/gms/internal/measurement/sd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/sd",
        "<",
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

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/sd;-><init>()V

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

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/measurement/wd;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/fa;->FH:[Lcom/google/android/gms/internal/measurement/fa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/fa;

    sput-object v0, Lcom/google/android/gms/internal/measurement/fa;->FH:[Lcom/google/android/gms/internal/measurement/fa;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/fa;->FH:[Lcom/google/android/gms/internal/measurement/fa;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/fa;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/fa;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/la;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/la;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ud;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 8

    const/4 v1, 0x0

    const-class v0, Lcom/google/android/gms/internal/measurement/fa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-nez v3, :cond_3

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-nez v4, :cond_4

    move v4, v1

    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ud;->j6()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    :goto_4
    add-int/lit16 v5, v5, 0x20f

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/la;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/la;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Boolean;->hashCode()I

    move-result v4

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method protected final j6()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/sd;->j6()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/qd;->DW(ILcom/google/android/gms/internal/measurement/yd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->FH()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

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

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/measurement/la;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/la;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/measurement/la;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/la;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/pd;->j6(Lcom/google/android/gms/internal/measurement/yd;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->v5()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->DW(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(ILcom/google/android/gms/internal/measurement/yd;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/qd;->j6(IZ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/sd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    return-void
.end method
