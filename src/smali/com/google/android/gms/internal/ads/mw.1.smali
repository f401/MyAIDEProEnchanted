.class public final Lcom/google/android/gms/internal/ads/mw;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv",
        "<",
        "Lcom/google/android/gms/internal/ads/mw;",
        ">;"
    }
.end annotation


# instance fields
.field public EQ:Lcom/google/android/gms/internal/ads/rw;

.field public FH:Ljava/lang/Integer;

.field private Hw:Lcom/google/android/gms/internal/ads/hw;

.field private J0:[Ljava/lang/String;

.field private J8:Ljava/lang/String;

.field public Mr:[Ljava/lang/String;

.field private QX:Ljava/lang/Boolean;

.field private VH:Ljava/lang/String;

.field private Ws:Ljava/lang/Boolean;

.field private XL:[B

.field public Zo:Ljava/lang/String;

.field public aM:Lcom/google/android/gms/internal/ads/tw;

.field public gn:Lcom/google/android/gms/internal/ads/nw;

.field public j3:[Ljava/lang/String;

.field public tp:Ljava/lang/String;

.field public u7:[Lcom/google/android/gms/internal/ads/sw;

.field public v5:Ljava/lang/String;

.field private we:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->FH:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->Hw:Lcom/google/android/gms/internal/ads/hw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->v5:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->Zo:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->VH:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->gn:Lcom/google/android/gms/internal/ads/nw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/sw;->Hw()[Lcom/google/android/gms/internal/ads/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->tp:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->we:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/android/gms/internal/ads/gw;->Zo:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->J0:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->J8:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->Ws:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->QX:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->XL:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->aM:Lcom/google/android/gms/internal/ads/tw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->j3:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Mr:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/mw;
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
    const/16 v0, 0xaa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Mr:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mw;->Mr:[Ljava/lang/String;

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

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/mw;->Mr:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xa2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->j3:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mw;->j3:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    array-length v0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/mw;->j3:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->aM:Lcom/google/android/gms/internal/ads/tw;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/ads/tw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/tw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->aM:Lcom/google/android/gms/internal/ads/tw;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->aM:Lcom/google/android/gms/internal/ads/tw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->DW()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->XL:[B

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/rw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->tp:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->gn:Lcom/google/android/gms/internal/ads/nw;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ads/nw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->gn:Lcom/google/android/gms/internal/ads/nw;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->gn:Lcom/google/android/gms/internal/ads/nw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto/16 :goto_0

    :cond_a
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/hw;->j6(I)Lcom/google/android/gms/internal/ads/hw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Hw:Lcom/google/android/gms/internal/ads/hw;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo()I

    move-result v3

    if-ltz v3, :cond_b

    const/16 v4, 0x9

    if-gt v3, v4, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/mw;->FH:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto/16 :goto_0

    :cond_b
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid enum ReportType"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->VH()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->QX:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->VH()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Ws:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->J8:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->J0:[Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mw;->J0:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    array-length v0, v0

    goto :goto_5

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/mw;->J0:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->VH()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->we:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/gw;->j6(Lcom/google/android/gms/internal/ads/Uv;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    if-nez v0, :cond_10

    move v0, v1

    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/sw;

    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_11

    new-instance v3, Lcom/google/android/gms/internal/ads/sw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/sw;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_10
    array-length v0, v0

    goto :goto_7

    :cond_11
    new-instance v3, Lcom/google/android/gms/internal/ads/sw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/sw;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->VH:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Zo:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->v5:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_12
        0x12 -> :sswitch_11
        0x1a -> :sswitch_10
        0x22 -> :sswitch_f
        0x28 -> :sswitch_e
        0x32 -> :sswitch_d
        0x3a -> :sswitch_c
        0x40 -> :sswitch_b
        0x48 -> :sswitch_a
        0x50 -> :sswitch_9
        0x58 -> :sswitch_8
        0x62 -> :sswitch_7
        0x6a -> :sswitch_6
        0x72 -> :sswitch_5
        0x7a -> :sswitch_4
        0x8a -> :sswitch_3
        0xa2 -> :sswitch_2
        0xaa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected final FH()I
    .registers 8

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->v5:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->Zo:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->VH:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->we:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->J0:[Ljava/lang/String;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    move v3, v2

    move v4, v2

    move v1, v2

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mw;->J0:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_7

    aget-object v5, v5, v4

    if-eqz v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Vv;->j6(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->J8:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->Ws:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->QX:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Vv;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->FH:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v3, 0xa

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->Hw:Lcom/google/android/gms/internal/ads/hw;

    if-eqz v1, :cond_d

    if-eqz v1, :cond_d

    const/16 v3, 0xb

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hw;->DW()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->gn:Lcom/google/android/gms/internal/ads/nw;

    if-eqz v1, :cond_e

    const/16 v3, 0xc

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->tp:Ljava/lang/String;

    if-eqz v1, :cond_f

    const/16 v3, 0xd

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    if-eqz v1, :cond_10

    const/16 v3, 0xe

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->XL:[B

    if-eqz v1, :cond_11

    const/16 v3, 0xf

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->aM:Lcom/google/android/gms/internal/ads/tw;

    if-eqz v1, :cond_12

    const/16 v3, 0x11

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->j3:[Ljava/lang/String;

    if-eqz v1, :cond_15

    array-length v1, v1

    if-lez v1, :cond_15

    move v4, v2

    move v1, v2

    move v3, v2

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mw;->j3:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_14

    aget-object v5, v5, v4

    if-eqz v5, :cond_13

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Vv;->j6(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_14
    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->Mr:[Ljava/lang/String;

    if-eqz v1, :cond_17

    array-length v1, v1

    if-lez v1, :cond_17

    move v3, v2

    move v1, v2

    move v4, v2

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mw;->Mr:[Ljava/lang/String;

    array-length v5, v2

    if-ge v4, v5, :cond_16

    aget-object v5, v2, v4

    if-eqz v5, :cond_18

    add-int/lit8 v2, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Vv;->j6(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_3

    :cond_16
    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    :cond_17
    return v0

    :cond_18
    move v2, v3

    goto :goto_4
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/mw;->DW(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/mw;

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->v5:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Zo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->VH:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->we:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->J0:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mw;->J0:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_7

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->J8:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Ws:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->QX:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    const/16 v2, 0x9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->FH:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v2, 0xa

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Hw:Lcom/google/android/gms/internal/ads/hw;

    if-eqz v0, :cond_c

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hw;->DW()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->gn:Lcom/google/android/gms/internal/ads/nw;

    if-eqz v0, :cond_d

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->tp:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->EQ:Lcom/google/android/gms/internal/ads/rw;

    if-eqz v0, :cond_f

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->XL:[B

    if-eqz v0, :cond_10

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(I[B)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->aM:Lcom/google/android/gms/internal/ads/tw;

    if-eqz v0, :cond_11

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->j3:[Ljava/lang/String;

    if-eqz v0, :cond_13

    array-length v0, v0

    if-lez v0, :cond_13

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mw;->j3:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_13

    aget-object v2, v2, v0

    if-eqz v2, :cond_12

    const/16 v3, 0x14

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Mr:[Ljava/lang/String;

    if-eqz v0, :cond_15

    array-length v0, v0

    if-lez v0, :cond_15

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->Mr:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_15

    aget-object v0, v0, v1

    if-eqz v0, :cond_14

    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
