.class public final Lcom/google/android/gms/internal/ads/Qf;
.super Lcom/google/android/gms/internal/ads/_f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
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
    .registers 6

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Hw:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qf;->aM:Lcom/google/android/gms/internal/ads/ag;

    return-void
.end method

.method private final DW(II)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/_f;->j6(IIII)V

    return-void
.end method

.method private final DW()[I
    .registers 12

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/app/Activity;)[I

    move-result-object v6

    aget v7, v0, v3

    aget v0, v0, v4

    iget v8, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    const/16 v9, 0x32

    if-lt v8, v9, :cond_0

    if-le v8, v7, :cond_2

    :cond_0
    const-string v0, "Width is too small or too large."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    iget v9, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    const/16 v10, 0x32

    if-lt v9, v10, :cond_3

    if-le v9, v0, :cond_4

    :cond_3
    const-string v0, "Height is too small or too large."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne v9, v0, :cond_5

    if-ne v8, v7, :cond_5

    const-string v0, "Cannot resize to a full-screen ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    if-eqz v0, :cond_7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/Qf;->Hw:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_6
    :goto_3
    if-eqz v0, :cond_d

    if-eq v0, v4, :cond_c

    if-eq v0, v5, :cond_b

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x32

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    :goto_4
    add-int/2addr v0, v1

    :goto_5
    if-ltz v2, :cond_1

    add-int/lit8 v1, v2, 0x32

    if-gt v1, v7, :cond_1

    aget v1, v6, v3

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x32

    aget v1, v6, v4

    if-gt v0, v1, :cond_1

    :cond_7
    move v0, v4

    goto :goto_1

    :sswitch_0
    const-string v9, "top-center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v4

    goto :goto_3

    :sswitch_1
    const-string v9, "bottom-center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v1

    goto :goto_3

    :sswitch_2
    const-string v9, "bottom-right"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v0, 0x5

    goto :goto_3

    :sswitch_3
    const-string v9, "bottom-left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v2

    goto :goto_3

    :sswitch_4
    const-string v9, "top-left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v3

    goto :goto_3

    :sswitch_5
    const-string v9, "center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v5

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x32

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    :goto_6
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x32

    goto :goto_5

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x19

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    goto :goto_6

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int v2, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    goto :goto_6

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x19

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x19

    goto/16 :goto_5

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x19

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    goto/16 :goto_4

    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    goto/16 :goto_4

    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    if-eqz v0, :cond_f

    new-array v0, v5, [I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v1, v2

    aput v1, v0, v3

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    goto/16 :goto_2

    :cond_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/app/Activity;)[I

    move-result-object v2

    aget v6, v0, v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    add-int/2addr v1, v7

    if-gez v0, :cond_12

    move v0, v3

    :cond_10
    :goto_7
    aget v6, v2, v3

    if-ge v1, v6, :cond_13

    aget v1, v2, v3

    :cond_11
    :goto_8
    new-array v2, v5, [I

    aput v0, v2, v3

    aput v1, v2, v4

    move-object v0, v2

    goto/16 :goto_2

    :cond_12
    iget v7, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    add-int v8, v0, v7

    if-le v8, v6, :cond_10

    sub-int v0, v6, v7

    goto :goto_7

    :cond_13
    iget v6, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    add-int v7, v1, v6

    aget v8, v2, v4

    if-le v7, v8, :cond_11

    aget v1, v2, v4

    sub-int/2addr v1, v6

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
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
    .registers 11

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/Qf;->Zo:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Qf;->VH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Qf;->DW()[I

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/Qf;->DW(II)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Qf;->j6(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string v1, "Not an activity context. Cannot resize."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Webview is not yet available, size is not set."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Cannot resize an expanded banner."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_0

    :cond_3
    const-string v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->DW(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    :cond_4
    const-string v1, "height"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v1, "height"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->DW(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    :cond_5
    const-string v1, "offsetX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v1, "offsetX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->DW(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->u7:I

    :cond_6
    const-string v1, "offsetY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v1, "offsetY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->DW(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Qf;->tp:I

    :cond_7
    const-string v1, "allowOffscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "allowOffscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    :cond_8
    const-string v1, "customClosePosition"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Hw:Ljava/lang/String;

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    if-ltz v1, :cond_a

    iget v1, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    if-ltz v1, :cond_a

    move v1, v4

    :goto_1
    if-nez v1, :cond_b

    const-string v1, "Invalid width and height options. Cannot resize."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v6

    goto/16 :goto_0

    :cond_a
    move v1, v5

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    const-string v1, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v6

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Qf;->DW()[I

    move-result-object v8

    if-nez v8, :cond_e

    const-string v1, "Resize location out of screen or close button is not visible."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v6

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1a

    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    if-nez v1, :cond_10

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-direct {v2, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->QX:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->QX:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Ws:Lcom/google/android/gms/internal/ads/yp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->QX:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-static {v1, v9, v10, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Qf;->v5:Z

    if-nez v1, :cond_11

    move v1, v4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v1, v2, v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    const/16 v11, 0x32

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    const/16 v12, 0x32

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v2, v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Hw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    move v1, v3

    :goto_4
    if-eqz v1, :cond_17

    if-eq v1, v4, :cond_16

    const/4 v3, 0x2

    if-eq v1, v3, :cond_15

    const/4 v3, 0x3

    if-eq v1, v3, :cond_14

    const/4 v3, 0x4

    if-eq v1, v3, :cond_13

    const/4 v3, 0x5

    if-eq v1, v3, :cond_12

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/google/android/gms/internal/ads/Rf;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/Rf;-><init>(Lcom/google/android/gms/internal/ads/Qf;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    const-string v3, "Close button"

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    const/4 v7, 0x0

    aget v7, v8, v7

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/Qf;->J8:Landroid/app/Activity;

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v1, v2, v7, v3, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    aget v1, v8, v5

    aget v2, v8, v4

    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qf;->aM:Lcom/google/android/gms/internal/ads/ag;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qf;->aM:Lcom/google/android/gms/internal/ads/ag;

    iget v4, p0, Lcom/google/android/gms/internal/ads/Qf;->EQ:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Qf;->gn:I

    invoke-interface {v3, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/ag;->j6(IIII)V

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/yp;->j6(II)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/Qf;->DW(II)V

    const-string v1, "resized"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->FH(Ljava/lang/String;)V

    monitor-exit v6

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_2

    :cond_11
    move v1, v5

    goto/16 :goto_3

    :sswitch_0
    const-string v11, "top-center"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v4

    goto/16 :goto_4

    :sswitch_1
    const-string v11, "bottom-center"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x4

    goto/16 :goto_4

    :sswitch_2
    const-string v11, "bottom-right"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x5

    goto/16 :goto_4

    :sswitch_3
    const-string v11, "bottom-left"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x3

    goto/16 :goto_4

    :sswitch_4
    const-string v11, "top-left"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v5

    goto/16 :goto_4

    :sswitch_5
    const-string v11, "center"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x2

    goto/16 :goto_4

    :cond_12
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :cond_13
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :cond_14
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :cond_15
    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :cond_16
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :cond_17
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "Cannot show popup window: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

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

    :cond_18
    monitor-exit v6

    goto/16 :goto_0

    :cond_19
    new-instance v1, Ljava/lang/String;

    const-string v2, "Cannot show popup window: "

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_1a
    const-string v1, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_1b
    move v1, v3

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch
.end method

.method public final j6(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->QX:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->J0:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qf;->Ws:Lcom/google/android/gms/internal/ads/yp;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->FH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->aM:Lcom/google/android/gms/internal/ads/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->aM:Lcom/google/android/gms/internal/ads/ag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ag;->ME()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->Mr:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->U2:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->XL:Landroid/widget/LinearLayout;

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qf;->we:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qf;->j3:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
