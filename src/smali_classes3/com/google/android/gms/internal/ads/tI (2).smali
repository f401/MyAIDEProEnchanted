.class public final Lcom/google/android/gms/internal/ads/tI;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/fH;

.field private EQ:Lcom/google/android/gms/internal/ads/IH;

.field private final FH:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Hw:Lcom/google/android/gms/ads/h;

.field private J0:Lcom/google/android/gms/ads/i;

.field private J8:Ljava/lang/String;

.field private QX:I

.field private VH:Lcom/google/android/gms/ads/a;

.field private Ws:Landroid/view/ViewGroup;

.field private XL:Z

.field private Zo:Lcom/google/android/gms/internal/ads/WG;

.field private gn:[Lcom/google/android/gms/ads/d;

.field private final j6:Lcom/google/android/gms/internal/ads/Fe;

.field private tp:Lcom/google/android/gms/ads/e;

.field private u7:Lcom/google/android/gms/ads/doubleclick/a;

.field private final v5:Lcom/google/android/gms/internal/ads/sH;

.field private we:Lcom/google/android/gms/ads/doubleclick/c;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/internal/ads/fH;->j6:Lcom/google/android/gms/internal/ads/fH;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/fH;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/internal/ads/fH;->j6:Lcom/google/android/gms/internal/ads/fH;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/fH;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .registers 10

    sget-object v4, Lcom/google/android/gms/internal/ads/fH;->j6:Lcom/google/android/gms/internal/ads/fH;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/fH;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .registers 11

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/internal/ads/fH;->j6:Lcom/google/android/gms/internal/ads/fH;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/fH;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/fH;I)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/fH;Lcom/google/android/gms/internal/ads/IH;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/fH;Lcom/google/android/gms/internal/ads/IH;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/ads/Fe;

    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/Fe;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/tI;->j6:Lcom/google/android/gms/internal/ads/Fe;

    new-instance p5, Lcom/google/android/gms/ads/h;

    invoke-direct {p5}, Lcom/google/android/gms/ads/h;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/tI;->Hw:Lcom/google/android/gms/ads/h;

    new-instance p5, Lcom/google/android/gms/internal/ads/vI;

    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/ads/vI;-><init>(Lcom/google/android/gms/internal/ads/tI;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/tI;->v5:Lcom/google/android/gms/internal/ads/sH;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tI;->DW:Lcom/google/android/gms/internal/ads/fH;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tI;->FH:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/ads/tI;->QX:I

    if-eqz p2, :cond_78

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_2f
    new-instance p6, Lcom/google/android/gms/internal/ads/zzwi;

    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/ads/zzwi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/ads/zzwi;->j6(Z)[Lcom/google/android/gms/ads/d;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzwi;->j6()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_40} :catch_61

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_78

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/ads/tI;->QX:I

    new-instance p6, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/tI;->j6(I)Z

    move-result p3

    iput-boolean p3, p6, Lcom/google/android/gms/internal/ads/zzwf;->tp:Z

    const-string p3, "Ads by Google"

    invoke-virtual {p2, p1, p6, p3}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;)V

    goto :goto_78

    :catch_61
    move-exception p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/ads/zzwf;

    sget-object p6, Lcom/google/android/gms/ads/d;->j6:Lcom/google/android/gms/ads/d;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tI;)Lcom/google/android/gms/ads/h;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/tI;->Hw:Lcom/google/android/gms/ads/h;

    return-object p0
.end method

.method private static j6(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/ads/zzwf;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/tI;->j6(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/ads/zzwf;->tp:Z

    return-object v0
.end method

.method private static j6(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/ads/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->VH:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public final varargs DW([Lcom/google/android/gms/ads/d;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    iget v2, p0, Lcom/google/android/gms/internal/ads/tI;->QX:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/tI;->j6(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/zzwf;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final EQ()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->pause()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final FH()Lcom/google/android/gms/ads/d;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->Ej()Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwf;->FH()Lcom/google/android/gms/ads/d;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final Hw()[Lcom/google/android/gms/ads/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    return-object v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/kI;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final VH()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->aX()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final Zo()Lcom/google/android/gms/ads/doubleclick/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->u7:Lcom/google/android/gms/ads/doubleclick/a;

    return-object v0
.end method

.method public final gn()Lcom/google/android/gms/ads/doubleclick/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->we:Lcom/google/android/gms/ads/doubleclick/c;

    return-object v0
.end method

.method public final j6()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->destroy()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/a;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->VH:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->v5:Lcom/google/android/gms/internal/ads/sH;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sH;->j6(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/doubleclick/a;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->u7:Lcom/google/android/gms/ads/doubleclick/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/hH;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/hH;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/QH;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/doubleclick/c;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->we:Lcom/google/android/gms/ads/doubleclick/c;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/M;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/M;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/J;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/e;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->tp:Lcom/google/android/gms/ads/e;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    if-nez p1, :cond_d

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/WH;)V

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/ads/e;->j6()Lcom/google/android/gms/internal/ads/rH;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_12

    throw v1

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/i;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->J0:Lcom/google/android/gms/ads/i;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_13

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_10

    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzzw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzzw;-><init>(Lcom/google/android/gms/ads/i;)V

    move-object p1, v1

    :goto_10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/zzzw;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    :cond_13
    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/WG;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->Zo:Lcom/google/android/gms/internal/ads/WG;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/XG;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/XG;-><init>(Lcom/google/android/gms/internal/ads/WG;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/tH;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/rI;)V
    .registers 12

    const-string v0, "#007 Could not call remote method."

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-nez v1, :cond_cd

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_e
    if-eqz v1, :cond_c5

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    iget v3, p0, Lcom/google/android/gms/internal/ads/tI;->QX:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/tI;->j6(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v5

    const-string v2, "search_v2"

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->DW()Lcom/google/android/gms/internal/ads/iH;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/lH;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/lH;-><init>(Lcom/google/android/gms/internal/ads/iH;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v8}, Lcom/google/android/gms/internal/ads/pH;->j6(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_38
    check-cast v1, Lcom/google/android/gms/internal/ads/IH;

    goto :goto_4f

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->DW()Lcom/google/android/gms/internal/ads/iH;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/tI;->j6:Lcom/google/android/gms/internal/ads/Fe;

    new-instance v9, Lcom/google/android/gms/internal/ads/jH;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/jH;-><init>(Lcom/google/android/gms/internal/ads/iH;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)V

    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/ads/pH;->j6(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_38

    :goto_4f
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v2, Lcom/google/android/gms/internal/ads/ZG;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tI;->v5:Lcom/google/android/gms/internal/ads/sH;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/ZG;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/IH;->DW(Lcom/google/android/gms/internal/ads/xH;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->Zo:Lcom/google/android/gms/internal/ads/WG;

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v2, Lcom/google/android/gms/internal/ads/XG;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tI;->Zo:Lcom/google/android/gms/internal/ads/WG;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/XG;-><init>(Lcom/google/android/gms/internal/ads/WG;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/tH;)V

    :cond_6b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->u7:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v2, Lcom/google/android/gms/internal/ads/hH;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tI;->u7:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/hH;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/QH;)V

    :cond_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->we:Lcom/google/android/gms/ads/doubleclick/c;

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v2, Lcom/google/android/gms/internal/ads/M;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tI;->we:Lcom/google/android/gms/ads/doubleclick/c;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/M;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/J;)V

    :cond_8b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->tp:Lcom/google/android/gms/ads/e;

    if-nez v1, :cond_c0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->J0:Lcom/google/android/gms/ads/i;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tI;->J0:Lcom/google/android/gms/ads/i;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzzw;-><init>(Lcom/google/android/gms/ads/i;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/zzzw;)V

    :cond_9f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/tI;->XL:Z

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/IH;->Ws(Z)V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a6} :catch_e9

    :try_start_a6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/IH;->d8()Labcd/ox;

    move-result-object v1

    if-nez v1, :cond_af

    goto :goto_cd

    :cond_af
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-static {v1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_ba} :catch_bb

    goto :goto_cd

    :catch_bb
    move-exception v1

    :try_start_bc
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_cd

    :cond_c0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/e;->j6()Lcom/google/android/gms/internal/ads/rH;
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c3} :catch_e9

    const/4 p1, 0x0

    throw p1

    :cond_c5
    :try_start_c5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cd
    :goto_cd
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/fH;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rI;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v1

    if-eqz v1, :cond_e8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->j6:Lcom/google/android/gms/internal/ads/Fe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rI;->we()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Fe;->j6(Ljava/util/Map;)V
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_e8} :catch_e9

    :cond_e8
    return-void

    :catch_e9
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tI;->XL:Z

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/IH;->Ws(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs j6([Lcom/google/android/gms/ads/d;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/tI;->DW([Lcom/google/android/gms/ads/d;)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final tp()Lcom/google/android/gms/ads/i;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J0:Lcom/google/android/gms/ads/i;

    return-object v0
.end method

.method public final u7()Lcom/google/android/gms/ads/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->Hw:Lcom/google/android/gms/ads/h;

    return-object v0
.end method

.method public final v5()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_15

    :try_start_8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->ys()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    return-object v0
.end method

.method public final we()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->er()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
