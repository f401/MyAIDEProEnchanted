.class public final Lcom/google/android/gms/internal/ads/fp;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/fp;",
        ">;"
    }
.end annotation


# instance fields
.field private EQ:Ljava/lang/Long;

.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/Long;

.field private VH:Ljava/lang/String;

.field private Zo:Ljava/lang/String;

.field private gn:Ljava/lang/Long;

.field private tp:Ljava/lang/String;

.field private u7:Ljava/lang/Long;

.field private v5:Ljava/lang/String;

.field private we:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->FH:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->Hw:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->v5:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->Zo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->VH:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->gn:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->u7:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->tp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->EQ:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->we:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method


# virtual methods
.method protected final FH()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->FH:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->Hw:Ljava/lang/Long;

    if-eqz v1, :cond_1c

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->v5:Ljava/lang/String;

    if-eqz v1, :cond_26

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->Zo:Ljava/lang/String;

    if-eqz v1, :cond_30

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->VH:Ljava/lang/String;

    if-eqz v1, :cond_3a

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->gn:Ljava/lang/Long;

    if-eqz v1, :cond_48

    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->u7:Ljava/lang/Long;

    if-eqz v1, :cond_56

    const/4 v2, 0x7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_56
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->tp:Ljava/lang/String;

    if-eqz v1, :cond_61

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_61
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->EQ:Ljava/lang/Long;

    if-eqz v1, :cond_70

    const/16 v2, 0x9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Vv;->DW(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fp;->we:Ljava/lang/String;

    if-eqz v1, :cond_7b

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7b
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    sparse-switch v0, :sswitch_data_66

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->we:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->EQ:Ljava/lang/Long;

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->tp:Ljava/lang/String;

    goto :goto_0

    :sswitch_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->u7:Ljava/lang/Long;

    goto :goto_0

    :sswitch_32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->gn:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->VH:Ljava/lang/String;

    goto :goto_0

    :sswitch_44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->Zo:Ljava/lang/String;

    goto :goto_0

    :sswitch_4b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->v5:Ljava/lang/String;

    goto :goto_0

    :sswitch_52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->Hw:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->FH:Ljava/lang/String;

    goto :goto_0

    :sswitch_64
    return-object p0

    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_64
        0xa -> :sswitch_5d
        0x10 -> :sswitch_52
        0x1a -> :sswitch_4b
        0x22 -> :sswitch_44
        0x2a -> :sswitch_3d
        0x30 -> :sswitch_32
        0x38 -> :sswitch_27
        0x42 -> :sswitch_20
        0x48 -> :sswitch_15
        0x52 -> :sswitch_e
    .end sparse-switch
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->FH:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->Hw:Ljava/lang/Long;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->Zo:Ljava/lang/String;

    if-eqz v0, :cond_24

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->VH:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->gn:Ljava/lang/Long;

    if-eqz v0, :cond_38

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->u7:Ljava/lang/Long;

    if-eqz v0, :cond_44

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->tp:Ljava/lang/String;

    if-eqz v0, :cond_4d

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->EQ:Ljava/lang/Long;

    if-eqz v0, :cond_5a

    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Vv;->Hw(IJ)V

    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->we:Ljava/lang/String;

    if-eqz v0, :cond_63

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_63
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
