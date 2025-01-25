.class public abstract Lcom/google/android/gms/internal/ads/po;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/i;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field protected DW:Ljava/lang/String;

.field protected FH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/Dn;",
            ">;"
        }
    .end annotation
.end field

.field protected j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Dn;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/po;->j6:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/po;->j6:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Dn;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/po;->DW:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_98

    goto/16 :goto_87

    :sswitch_9
    const-string v0, "noCacheDir"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 p0, 0x7

    goto/16 :goto_88

    :sswitch_14
    const-string v0, "expireFailed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 p0, 0x6

    goto/16 :goto_88

    :sswitch_1f
    const-string v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 p0, 0x1

    goto :goto_88

    :sswitch_29
    const-string v0, "noop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 p0, 0x4

    goto :goto_88

    :sswitch_33
    const-string v0, "externalAbort"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/16 p0, 0xa

    goto :goto_88

    :sswitch_3e
    const-string v0, "sizeExceeded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/16 p0, 0xb

    goto :goto_88

    :sswitch_49
    const-string v0, "playerFailed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 p0, 0x5

    goto :goto_88

    :sswitch_53
    const-string v0, "contentLengthMissing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 p0, 0x0

    goto :goto_88

    :sswitch_5d
    const-string v0, "downloadTimeout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/16 p0, 0x9

    goto :goto_88

    :sswitch_68
    const-string v0, "inProgress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 p0, 0x2

    goto :goto_88

    :sswitch_72
    const-string v0, "badUrl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/16 p0, 0x8

    goto :goto_88

    :sswitch_7d
    const-string v0, "interrupted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 p0, 0x3

    goto :goto_88

    :cond_87
    :goto_87
    const/4 p0, -0x1

    :goto_88
    packed-switch p0, :pswitch_data_ca

    goto :goto_95

    :pswitch_8c  #0xa, 0xb
    const-string p0, "policy"

    goto :goto_97

    :pswitch_8f  #0x8, 0x9
    const-string p0, "network"

    goto :goto_97

    :pswitch_92  #0x6, 0x7
    const-string p0, "io"

    goto :goto_97

    :goto_95
    :pswitch_95  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5
    const-string p0, "internal"

    :goto_97
    return-object p0

    :sswitch_data_98
    .sparse-switch
        -0x7416d1be -> :sswitch_7d
        -0x533f68d6 -> :sswitch_72
        -0x5049c18e -> :sswitch_68
        -0x36c40c47 -> :sswitch_5d
        -0x274d4859 -> :sswitch_53
        -0x26475182 -> :sswitch_49
        -0x151a598c -> :sswitch_3e
        -0x1e989db -> :sswitch_33
        0x33af62 -> :sswitch_29
        0x5c4d208 -> :sswitch_1f
        0x2293ea3c -> :sswitch_14
        0x2b3e368c -> :sswitch_9
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_95  #00000000
        :pswitch_95  #00000001
        :pswitch_95  #00000002
        :pswitch_95  #00000003
        :pswitch_95  #00000004
        :pswitch_95  #00000005
        :pswitch_92  #00000006
        :pswitch_92  #00000007
        :pswitch_8f  #00000008
        :pswitch_8f  #00000009
        :pswitch_8c  #0000000a
        :pswitch_8c  #0000000b
    .end packed-switch
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Dn;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Zl;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract DW()V
.end method

.method protected DW(I)V
    .registers 2

    return-void
.end method

.method protected FH(I)V
    .registers 2

    return-void
.end method

.method protected Hw(I)V
    .registers 2

    return-void
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method protected final j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/so;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/so;-><init>(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    sget-object v0, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/to;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/to;-><init>(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;JJZII)V
    .registers 23

    sget-object v0, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v12, Lcom/google/android/gms/internal/ads/ro;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/ro;-><init>(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/lang/String;JJZII)V

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    sget-object v0, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/uo;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/uo;-><init>(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract j6(Ljava/lang/String;)Z
.end method

.method protected v5(I)V
    .registers 2

    return-void
.end method
