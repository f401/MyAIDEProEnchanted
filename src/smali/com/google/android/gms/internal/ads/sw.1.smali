.class public final Lcom/google/android/gms/internal/ads/sw;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv",
        "<",
        "Lcom/google/android/gms/internal/ads/sw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile FH:[Lcom/google/android/gms/internal/ads/sw;


# instance fields
.field public EQ:Ljava/lang/Integer;

.field public Hw:Ljava/lang/Integer;

.field private VH:Lcom/google/android/gms/internal/ads/qw;

.field public Zo:Lcom/google/android/gms/internal/ads/pw;

.field private gn:Ljava/lang/Integer;

.field private tp:Ljava/lang/String;

.field private u7:[I

.field public v5:Ljava/lang/String;

.field public we:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->Hw:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->v5:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->Zo:Lcom/google/android/gms/internal/ads/pw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->VH:Lcom/google/android/gms/internal/ads/qw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->gn:Ljava/lang/Integer;

    sget-object v0, Lcom/google/android/gms/internal/ads/gw;->j6:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->tp:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->EQ:Ljava/lang/Integer;

    sget-object v0, Lcom/google/android/gms/internal/ads/gw;->Zo:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/sw;
    .registers 9

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    move-result v3

    if-ltz v3, :cond_4

    const/4 v4, 0x3

    if-gt v3, v4, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/sw;->EQ:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid enum AdResourceType"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->tp:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->FH(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->tp()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    if-nez v2, :cond_7

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    array-length v2, v2

    goto :goto_4

    :cond_8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/Uv;->Hw(I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    array-length v0, v0

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->gn:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->VH:Lcom/google/android/gms/internal/ads/qw;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/qw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/qw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->VH:Lcom/google/android/gms/internal/ads/qw;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->VH:Lcom/google/android/gms/internal/ads/qw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->Zo:Lcom/google/android/gms/internal/ads/pw;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/pw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/pw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->Zo:Lcom/google/android/gms/internal/ads/pw;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->Zo:Lcom/google/android/gms/internal/ads/pw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->v5:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->Hw:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x40 -> :sswitch_2
        0x4a -> :sswitch_1
    .end sparse-switch
.end method

.method public static Hw()[Lcom/google/android/gms/internal/ads/sw;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/sw;->FH:[Lcom/google/android/gms/internal/ads/sw;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/aw;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/sw;->FH:[Lcom/google/android/gms/internal/ads/sw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/sw;

    sput-object v0, Lcom/google/android/gms/internal/ads/sw;->FH:[Lcom/google/android/gms/internal/ads/sw;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/sw;->FH:[Lcom/google/android/gms/internal/ads/sw;

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
.method protected final FH()I
    .registers 7

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sw;->Hw:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->v5:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->Zo:Lcom/google/android/gms/internal/ads/pw;

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->VH:Lcom/google/android/gms/internal/ads/qw;

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->gn:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v3, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->tp:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->EQ:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v3, 0x8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    move v3, v2

    move v1, v2

    move v4, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    array-length v5, v2

    if-ge v4, v5, :cond_8

    aget-object v5, v2, v4

    if-eqz v5, :cond_a

    add-int/lit8 v2, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Vv;->j6(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_1

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_9
    return v0

    :cond_a
    move v2, v3

    goto :goto_2
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sw;->DW(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/sw;

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sw;->Hw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->v5:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->Zo:Lcom/google/android/gms/internal/ads/pw;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->VH:Lcom/google/android/gms/internal/ads/qw;

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->gn:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sw;->u7:[I

    array-length v3, v2

    if-ge v0, v3, :cond_4

    const/4 v3, 0x6

    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->tp:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->EQ:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_8

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
