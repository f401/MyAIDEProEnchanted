.class public final Lcom/google/android/gms/internal/ads/Cr;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/Cr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile FH:[Lcom/google/android/gms/internal/ads/Cr;


# instance fields
.field public EQ:Ljava/lang/Long;

.field public Hw:Ljava/lang/Long;

.field public J0:Ljava/lang/Long;

.field public J8:Ljava/lang/Integer;

.field public Mr:Ljava/lang/Long;

.field public QX:Ljava/lang/Long;

.field public U2:Ljava/lang/Long;

.field public VH:Ljava/lang/Long;

.field public Ws:Ljava/lang/Long;

.field public XL:Ljava/lang/Long;

.field public Zo:Ljava/lang/Long;

.field public a8:Ljava/lang/Long;

.field public aM:Ljava/lang/Long;

.field public gn:Ljava/lang/Long;

.field public j3:Ljava/lang/Long;

.field private lg:Ljava/lang/Long;

.field private rN:Ljava/lang/Long;

.field public tp:Ljava/lang/Integer;

.field public u7:Ljava/lang/Long;

.field public v5:Ljava/lang/Long;

.field public we:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Hw:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->v5:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Zo:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->VH:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->gn:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->u7:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->EQ:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->we:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->J0:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Ws:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->QX:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->XL:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->aM:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->j3:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Mr:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->U2:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->a8:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->lg:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->rN:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/Cr;
    .registers 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    sparse-switch v0, :sswitch_data_118

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->rN:Ljava/lang/Long;

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->lg:Ljava/lang/Long;

    goto :goto_0

    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->a8:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->U2:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Mr:Ljava/lang/Long;

    goto :goto_0

    :sswitch_45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->j3:Ljava/lang/Long;

    goto :goto_0

    :sswitch_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->aM:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->XL:Ljava/lang/Long;

    goto :goto_0

    :sswitch_66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->QX:Ljava/lang/Long;

    goto :goto_0

    :sswitch_71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Ws:Ljava/lang/Long;

    goto :goto_0

    :sswitch_7c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    :try_start_80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Bq;->j6(I)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Cr;->J8:Ljava/lang/Integer;
    :try_end_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_8d} :catch_c6

    goto/16 :goto_0

    :sswitch_8f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->J0:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_9b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->we:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_a7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->EQ:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_b3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    :try_start_b7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Bq;->j6(I)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Cr;->tp:Ljava/lang/Integer;
    :try_end_c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b7 .. :try_end_c4} :catch_c6

    goto/16 :goto_0

    :catch_c6
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto/16 :goto_0

    :sswitch_cf
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->u7:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_db
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->gn:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_e7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->VH:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_f3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Zo:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_ff
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->v5:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_10b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Hw:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_117
    return-object p0

    :sswitch_data_118
    .sparse-switch
        0x0 -> :sswitch_117
        0x8 -> :sswitch_10b
        0x10 -> :sswitch_ff
        0x18 -> :sswitch_f3
        0x20 -> :sswitch_e7
        0x28 -> :sswitch_db
        0x30 -> :sswitch_cf
        0x38 -> :sswitch_b3
        0x40 -> :sswitch_a7
        0x48 -> :sswitch_9b
        0x50 -> :sswitch_8f
        0x58 -> :sswitch_7c
        0x60 -> :sswitch_71
        0x68 -> :sswitch_66
        0x70 -> :sswitch_5b
        0x78 -> :sswitch_50
        0x80 -> :sswitch_45
        0x88 -> :sswitch_3a
        0x90 -> :sswitch_2f
        0x98 -> :sswitch_24
        0xa0 -> :sswitch_19
        0xa8 -> :sswitch_e
    .end sparse-switch
.end method

.method public static Hw()[Lcom/google/android/gms/internal/ads/Cr;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/Cr;->FH:[Lcom/google/android/gms/internal/ads/Cr;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/ads/aw;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/Cr;->FH:[Lcom/google/android/gms/internal/ads/Cr;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/Cr;

    sput-object v1, Lcom/google/android/gms/internal/ads/Cr;->FH:[Lcom/google/android/gms/internal/ads/Cr;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/Cr;->FH:[Lcom/google/android/gms/internal/ads/Cr;

    return-object v0
.end method


# virtual methods
.method protected final FH()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->Hw:Ljava/lang/Long;

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->v5:Ljava/lang/Long;

    if-eqz v1, :cond_20

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->Zo:Ljava/lang/Long;

    if-eqz v1, :cond_2e

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->VH:Ljava/lang/Long;

    if-eqz v1, :cond_3c

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->gn:Ljava/lang/Long;

    if-eqz v1, :cond_4a

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->u7:Ljava/lang/Long;

    if-eqz v1, :cond_58

    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->tp:Ljava/lang/Integer;

    if-eqz v1, :cond_66

    const/4 v2, 0x7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->EQ:Ljava/lang/Long;

    if-eqz v1, :cond_75

    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_75
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->we:Ljava/lang/Long;

    if-eqz v1, :cond_84

    const/16 v2, 0x9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->J0:Ljava/lang/Long;

    if-eqz v1, :cond_93

    const/16 v2, 0xa

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->J8:Ljava/lang/Integer;

    if-eqz v1, :cond_a2

    const/16 v2, 0xb

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->Ws:Ljava/lang/Long;

    if-eqz v1, :cond_b1

    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->QX:Ljava/lang/Long;

    if-eqz v1, :cond_c0

    const/16 v2, 0xd

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->XL:Ljava/lang/Long;

    if-eqz v1, :cond_cf

    const/16 v2, 0xe

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_cf
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->aM:Ljava/lang/Long;

    if-eqz v1, :cond_de

    const/16 v2, 0xf

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_de
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->j3:Ljava/lang/Long;

    if-eqz v1, :cond_ed

    const/16 v2, 0x10

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ed
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->Mr:Ljava/lang/Long;

    if-eqz v1, :cond_fc

    const/16 v2, 0x11

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_fc
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->U2:Ljava/lang/Long;

    if-eqz v1, :cond_10b

    const/16 v2, 0x12

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->a8:Ljava/lang/Long;

    if-eqz v1, :cond_11a

    const/16 v2, 0x13

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->lg:Ljava/lang/Long;

    if-eqz v1, :cond_129

    const/16 v2, 0x14

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_129
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cr;->rN:Ljava/lang/Long;

    if-eqz v1, :cond_138

    const/16 v2, 0x15

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_138
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Cr;->DW(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/Cr;

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Hw:Ljava/lang/Long;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->v5:Ljava/lang/Long;

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Zo:Ljava/lang/Long;

    if-eqz v0, :cond_24

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->VH:Ljava/lang/Long;

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->gn:Ljava/lang/Long;

    if-eqz v0, :cond_3c

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->u7:Ljava/lang/Long;

    if-eqz v0, :cond_48

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->tp:Ljava/lang/Integer;

    if-eqz v0, :cond_54

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->EQ:Ljava/lang/Long;

    if-eqz v0, :cond_61

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->we:Ljava/lang/Long;

    if-eqz v0, :cond_6e

    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->J0:Ljava/lang/Long;

    if-eqz v0, :cond_7b

    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->J8:Ljava/lang/Integer;

    if-eqz v0, :cond_88

    const/16 v1, 0xb

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Ws:Ljava/lang/Long;

    if-eqz v0, :cond_95

    const/16 v1, 0xc

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->QX:Ljava/lang/Long;

    if-eqz v0, :cond_a2

    const/16 v1, 0xd

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_a2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->XL:Ljava/lang/Long;

    if-eqz v0, :cond_af

    const/16 v1, 0xe

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_af
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->aM:Ljava/lang/Long;

    if-eqz v0, :cond_bc

    const/16 v1, 0xf

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_bc
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->j3:Ljava/lang/Long;

    if-eqz v0, :cond_c9

    const/16 v1, 0x10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_c9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->Mr:Ljava/lang/Long;

    if-eqz v0, :cond_d6

    const/16 v1, 0x11

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_d6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->U2:Ljava/lang/Long;

    if-eqz v0, :cond_e3

    const/16 v1, 0x12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_e3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->a8:Ljava/lang/Long;

    if-eqz v0, :cond_f0

    const/16 v1, 0x13

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_f0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->lg:Ljava/lang/Long;

    if-eqz v0, :cond_fd

    const/16 v1, 0x14

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_fd
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cr;->rN:Ljava/lang/Long;

    if-eqz v0, :cond_10a

    const/16 v1, 0x15

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_10a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
