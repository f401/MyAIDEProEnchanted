.class public final Lcom/google/android/gms/internal/ads/QG;
.super Lcom/google/android/gms/internal/ads/Xv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xv<",
        "Lcom/google/android/gms/internal/ads/QG;",
        ">;"
    }
.end annotation


# instance fields
.field public FH:Ljava/lang/String;

.field private Hw:Lcom/google/android/gms/internal/ads/sG;

.field private VH:Ljava/lang/Integer;

.field public Zo:Lcom/google/android/gms/internal/ads/TG;

.field private gn:Lcom/google/android/gms/internal/ads/FG;

.field private tp:Lcom/google/android/gms/internal/ads/FG;

.field private u7:Lcom/google/android/gms/internal/ads/FG;

.field private v5:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->FH:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->Hw:Lcom/google/android/gms/internal/ads/sG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->v5:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->Zo:Lcom/google/android/gms/internal/ads/TG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->VH:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->gn:Lcom/google/android/gms/internal/ads/FG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->u7:Lcom/google/android/gms/internal/ads/FG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->tp:Lcom/google/android/gms/internal/ads/FG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xv;->DW:Lcom/google/android/gms/internal/ads/Zv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cw;->j6:I

    return-void
.end method


# virtual methods
.method protected final FH()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Xv;->FH()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QG;->FH:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QG;->Hw:Lcom/google/android/gms/internal/ads/sG;

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QG;->v5:Ljava/lang/Integer;

    if-eqz v1, :cond_26

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QG;->Zo:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v1, :cond_30

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->DW(ILcom/google/android/gms/internal/ads/cw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QG;->VH:Ljava/lang/Integer;

    if-eqz v1, :cond_3e

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QG;->gn:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_4e

    if-eqz v1, :cond_4e

    const/4 v2, 0x6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QG;->u7:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_5e

    if-eqz v1, :cond_5e

    const/4 v2, 0x7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QG;->tp:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v1, :cond_6f

    if-eqz v1, :cond_6f

    const/16 v2, 0x8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Vv;->FH(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6f
    return v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;
    .registers 7

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_b8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_b0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_96

    const/16 v1, 0x22

    if-eq v0, v1, :cond_84

    const/16 v1, 0x28

    if-eq v0, v1, :cond_78

    const/16 v1, 0x30

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x38

    if-eq v0, v1, :cond_46

    const/16 v1, 0x40

    if-eq v0, v1, :cond_30

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v4

    if-eqz v4, :cond_3f

    if-eq v4, v3, :cond_3f

    if-eq v4, v2, :cond_3f

    goto :goto_6a

    :cond_3f
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->tp:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v4

    if-eqz v4, :cond_55

    if-eq v4, v3, :cond_55

    if-eq v4, v2, :cond_55

    goto :goto_6a

    :cond_55
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->u7:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_5c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v4

    if-eqz v4, :cond_71

    if-eq v4, v3, :cond_71

    if-eq v4, v2, :cond_71

    :goto_6a
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Uv;->v5(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Uv;I)Z

    goto :goto_0

    :cond_71
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/FG;->j6(I)Lcom/google/android/gms/internal/ads/FG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->gn:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->VH:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->Zo:Lcom/google/android/gms/internal/ads/TG;

    if-nez v0, :cond_8f

    new-instance v0, Lcom/google/android/gms/internal/ads/TG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/TG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->Zo:Lcom/google/android/gms/internal/ads/TG;

    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->Zo:Lcom/google/android/gms/internal/ads/TG;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/cw;)V

    goto/16 :goto_0

    :cond_96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->v5:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_a2
    invoke-static {}, Lcom/google/android/gms/internal/ads/sG;->EQ()Lcom/google/android/gms/internal/ads/Zu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sG;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->Hw:Lcom/google/android/gms/internal/ads/sG;

    goto/16 :goto_0

    :cond_b0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Uv;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->FH:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b8
    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Vv;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->FH:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->Hw:Lcom/google/android/gms/internal/ads/sG;

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->v5:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->Zo:Lcom/google/android/gms/internal/ads/TG;

    if-eqz v0, :cond_24

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->j6(ILcom/google/android/gms/internal/ads/cw;)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->VH:Ljava/lang/Integer;

    if-eqz v0, :cond_30

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->gn:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_3e

    if-eqz v0, :cond_3e

    const/4 v1, 0x6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->u7:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_4c

    if-eqz v0, :cond_4c

    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QG;->tp:Lcom/google/android/gms/internal/ads/FG;

    if-eqz v0, :cond_5b

    if-eqz v0, :cond_5b

    const/16 v1, 0x8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FG;->DW()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Vv;->DW(II)V

    :cond_5b
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Xv;->j6(Lcom/google/android/gms/internal/ads/Vv;)V

    return-void
.end method
