.class public final Lcom/google/android/gms/internal/ads/Qf;
.super Lcom/google/android/gms/internal/ads/_f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EQ:I

.field private Hw:Ljava/lang/String;

.field private final J0:Lcom/google/android/gms/internal/ads/Mo;

.field private final J8:Landroid/app/Activity;

.field private Mr:Landroid/widget/RelativeLayout;

.field private QX:Landroid/widget/ImageView;

.field private U2:Landroid/view/ViewGroup;

.field private VH:I

.field private Ws:Lcom/google/android/gms/internal/ads/yp;

.field private XL:Landroid/widget/LinearLayout;

.field private Zo:I

.field private aM:Lcom/google/android/gms/internal/ads/ag;

.field private gn:I

.field private j3:Landroid/widget/PopupWindow;

.field private tp:I

.field private u7:I

.field private v5:Z

.field private final we:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "top-left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "top-right"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "top-center"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bottom-left"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bottom-right"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bottom-center"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/util/f;->DW([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Qf;->FH:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/ag;)V
    .registers 5

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Hw:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qf;->aM:Lcom/google/android/gms/internal/ads/ag;

    return-void
.end method

.method private final DW(II)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(IIII)V

    return-void
.end method

.method private final DW()[I
    .registers 12

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/app/Activity;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    const/16 v6, 0x32

    if-lt v5, v6, :cond_ff

    if-le v5, v3, :cond_24

    goto/16 :goto_ff

    :cond_24
    iget v7, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    if-lt v7, v6, :cond_fc

    if-le v7, v0, :cond_2c

    goto/16 :goto_fc

    :cond_2c
    if-ne v7, v0, :cond_34

    if-ne v5, v3, :cond_34

    const-string v0, "Cannot resize to a full-screen ad."

    goto/16 :goto_101

    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Hw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    sparse-switch v5, :sswitch_data_15e

    goto :goto_82

    :sswitch_46
    const-string v5, "top-center"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x1

    goto :goto_83

    :sswitch_50
    const-string v5, "bottom-center"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x4

    goto :goto_83

    :sswitch_5a
    const-string v5, "bottom-right"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x5

    goto :goto_83

    :sswitch_64
    const-string v5, "bottom-left"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x3

    goto :goto_83

    :sswitch_6e
    const-string v5, "top-left"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x0

    goto :goto_83

    :sswitch_78
    const-string v5, "center"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x2

    goto :goto_83

    :cond_82
    :goto_82
    const/4 v0, -0x1

    :goto_83
    if-eqz v0, :cond_e1

    if-eq v0, v4, :cond_d5

    if-eq v0, v10, :cond_be

    if-eq v0, v9, :cond_af

    if-eq v0, v7, :cond_a3

    if-eq v0, v8, :cond_99

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v6

    goto :goto_e6

    :cond_99
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v6

    goto :goto_b4

    :cond_a3
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    div-int/2addr v5, v10

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_b4

    :cond_af
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v5

    :goto_b4
    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    add-int/2addr v5, v7

    sub-int/2addr v5, v6

    goto :goto_eb

    :cond_be
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    div-int/2addr v5, v10

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    div-int/2addr v7, v10

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x19

    goto :goto_eb

    :cond_d5
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    div-int/2addr v5, v10

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_e6

    :cond_e1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v5

    :goto_e6
    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v5, v7

    :goto_eb
    if-ltz v0, :cond_104

    add-int/2addr v0, v6

    if-gt v0, v3, :cond_104

    aget v0, v1, v2

    if-lt v5, v0, :cond_104

    add-int/2addr v5, v6

    aget v0, v1, v4

    if-le v5, v0, :cond_fa

    goto :goto_104

    :cond_fa
    const/4 v0, 0x1

    goto :goto_105

    :cond_fc
    :goto_fc
    const-string v0, "Height is too small or too large."

    goto :goto_101

    :cond_ff
    :goto_ff
    const-string v0, "Width is too small or too large."

    :goto_101
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_104
    :goto_104
    const/4 v0, 0x0

    :goto_105
    if-nez v0, :cond_109

    const/4 v0, 0x0

    return-object v0

    :cond_109
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    if-eqz v0, :cond_11c

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v1, v2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0

    :cond_11c
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/app/Activity;)[I

    move-result-object v1

    aget v0, v0, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v5, v6

    if-gez v3, :cond_140

    const/4 v3, 0x0

    goto :goto_148

    :cond_140
    iget v6, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    add-int v7, v3, v6

    if-le v7, v0, :cond_148

    sub-int v3, v0, v6

    :cond_148
    :goto_148
    aget v0, v1, v2

    if-ge v5, v0, :cond_14e

    move v5, v0

    goto :goto_158

    :cond_14e
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    add-int v2, v5, v0

    aget v1, v1, v4

    if-le v2, v1, :cond_158

    sub-int v5, v1, v0

    :cond_158
    :goto_158
    filled-new-array {v3, v5}, [I

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_15e
    .sparse-switch
        -0x514d33ab -> :sswitch_78
        -0x3c587281 -> :sswitch_6e
        -0x27103597 -> :sswitch_64
        0x455fe3fa -> :sswitch_5a
        0x4ccee637 -> :sswitch_50
        0x68a23bcd -> :sswitch_46
    .end sparse-switch
.end method


# virtual methods
.method public final j6(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    return-void
.end method

.method public final j6(IIZ)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_47

    if-eqz p3, :cond_47

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Qf;->DW()[I

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_44

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    aget v4, p1, p2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {p3, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    aget p3, p1, v2

    aget p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/Qf;->DW(II)V

    goto :goto_47

    :cond_44
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Qf;->j6(Z)V

    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public final j6(Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    if-nez v3, :cond_12

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_12
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v3

    if-nez v3, :cond_21

    const-string v0, "Webview is not yet available, size is not set."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_21
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_34
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v0, "Cannot resize an expanded banner."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_43
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nk;->DW(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    :cond_62
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nk;->DW(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    :cond_81
    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nk;->DW(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    :cond_a0
    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bf

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nk;->DW(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    :cond_bf
    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    :cond_db
    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Qf;->Hw:Ljava/lang/String;

    :cond_eb
    iget v0, v1, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_f7

    iget v0, v1, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    if-ltz v0, :cond_f7

    const/4 v0, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v0, 0x0

    :goto_f8
    if-nez v0, :cond_101

    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_101
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_315

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_111

    goto/16 :goto_315

    :cond_111
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Qf;->DW()[I

    move-result-object v5

    if-nez v5, :cond_11e

    const-string v0, "Resize location out of screen or close button is not visible."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_11e
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    iget v7, v1, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    iget v8, v1, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_30e

    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_30e

    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    if-nez v9, :cond_181

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->QX:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->Ws:Lcom/google/android/gms/internal/ads/yp;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->QX:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_184

    :cond_181
    invoke-virtual {v9}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_184
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    invoke-static {v8, v6, v7, v3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    xor-int/2addr v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    const/16 v11, 0x32

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-static {v12, v11}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v8, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->Hw:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    sparse-switch v11, :sswitch_data_322

    goto :goto_22c

    :sswitch_1f1
    const-string v11, "top-center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22c

    const/4 v10, 0x1

    goto :goto_22c

    :sswitch_1fb
    const-string v11, "bottom-center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22c

    const/4 v10, 0x4

    goto :goto_22c

    :sswitch_205
    const-string v11, "bottom-right"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22c

    const/4 v10, 0x5

    goto :goto_22c

    :sswitch_20f
    const-string v11, "bottom-left"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22c

    const/4 v10, 0x3

    goto :goto_22c

    :sswitch_219
    const-string v11, "top-left"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22c

    const/4 v10, 0x0

    goto :goto_22c

    :sswitch_223
    const-string v11, "center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22c

    const/4 v10, 0x2

    :cond_22c
    :goto_22c
    const/16 v9, 0x9

    const/16 v11, 0xa

    if-eqz v10, :cond_262

    const/16 v3, 0xe

    if-eq v10, v4, :cond_25e

    if-eq v10, v15, :cond_258

    const/16 v15, 0xc

    if-eq v10, v14, :cond_251

    if-eq v10, v12, :cond_24d

    const/16 v3, 0xb

    if-eq v10, v13, :cond_249

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_245
    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_266

    :cond_249
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_245

    :cond_24d
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_245

    :cond_251
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_254
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_266

    :cond_258
    const/16 v3, 0xd

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_266

    :cond_25e
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_245

    :cond_262
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_254

    :goto_266
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/google/android/gms/internal/ads/Rf;

    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/Rf;-><init>(Lcom/google/android/gms/internal/ads/Qf;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    const-string v9, "Close button"

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_27e
    .catchall {:try_start_7 .. :try_end_27e} :catchall_31c

    :try_start_27e
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    const/4 v9, 0x0

    aget v10, v5, v9

    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v8

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    aget v10, v5, v4

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v3, v0, v10, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_29f
    .catch Ljava/lang/RuntimeException; {:try_start_27e .. :try_end_29f} :catch_2c6
    .catchall {:try_start_27e .. :try_end_29f} :catchall_31c

    aget v0, v5, v10

    aget v3, v5, v4

    :try_start_2a3
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Qf;->aM:Lcom/google/android/gms/internal/ads/ag;

    if-eqz v8, :cond_2ae

    iget v9, v1, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    invoke-interface {v8, v0, v3, v9, v10}, Lcom/google/android/gms/internal/ads/ag;->j6(IIII)V

    :cond_2ae
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/yp;->j6(II)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    const/4 v0, 0x0

    aget v0, v5, v0

    aget v3, v5, v4

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/Qf;->DW(II)V

    const-string v0, "resized"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->FH(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catch_2c6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2dc

    const-string v3, "Cannot show popup window: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e3

    :cond_2dc
    new-instance v0, Ljava/lang/String;

    const-string v3, "Cannot show popup window: "

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    if-eqz v0, :cond_30c

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->QX:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Qf;->Ws:Lcom/google/android/gms/internal/ads/yp;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    :cond_30c
    monitor-exit v2

    return-void

    :cond_30e
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_315
    :goto_315
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_31c
    move-exception v0

    monitor-exit v2
    :try_end_31e
    .catchall {:try_start_2a3 .. :try_end_31e} :catchall_31c

    goto :goto_320

    :goto_31f
    throw v0

    :goto_320
    goto :goto_31f

    nop

    :sswitch_data_322
    .sparse-switch
        -0x514d33ab -> :sswitch_223
        -0x3c587281 -> :sswitch_219
        -0x27103597 -> :sswitch_20f
        0x455fe3fa -> :sswitch_205
        0x4ccee637 -> :sswitch_1fb
        0x68a23bcd -> :sswitch_1f1
    .end sparse-switch
.end method

.method public final j6(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->QX:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->Ws:Lcom/google/android/gms/internal/ads/yp;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    :cond_30
    if-eqz p1, :cond_3e

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/_f;->FH(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Qf;->aM:Lcom/google/android/gms/internal/ads/ag;

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ag;->ME()V

    :cond_3e
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public final j6()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
