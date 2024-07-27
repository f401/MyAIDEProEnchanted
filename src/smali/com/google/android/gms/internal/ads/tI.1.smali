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

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v4, Lcom/google/android/gms/internal/ads/fH;->j6:Lcom/google/android/gms/internal/ads/fH;

    move-object v0, p0

    move-object v1, p1

    move v5, v3

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
    .registers 12

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/Fe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Fe;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->j6:Lcom/google/android/gms/internal/ads/Fe;

    new-instance v0, Lcom/google/android/gms/ads/h;

    invoke-direct {v0}, Lcom/google/android/gms/ads/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->Hw:Lcom/google/android/gms/ads/h;

    new-instance v0, Lcom/google/android/gms/internal/ads/vI;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vI;-><init>(Lcom/google/android/gms/internal/ads/tI;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->v5:Lcom/google/android/gms/internal/ads/sH;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tI;->DW:Lcom/google/android/gms/internal/ads/fH;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->FH:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/ads/tI;->QX:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwi;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzwi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzwi;->j6(Z)[Lcom/google/android/gms/ads/d;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwi;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    aget-object v2, v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/tI;->QX:I

    new-instance v4, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/tI;->j6(I)Z

    move-result v1

    iput-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzwf;->tp:Z

    const-string v1, "Ads by Google"

    invoke-virtual {v0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzwf;

    sget-object v4, Lcom/google/android/gms/ads/d;->j6:Lcom/google/android/gms/ads/d;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tI;)Lcom/google/android/gms/ads/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->Hw:Lcom/google/android/gms/ads/h;

    return-object v0
.end method

.method private static j6(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/ads/zzwf;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/tI;->j6(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzwf;->tp:Z

    return-object v0
.end method

.method private static j6(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/ads/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->VH:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public final varargs DW([Lcom/google/android/gms/ads/d;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    iget v3, p0, Lcom/google/android/gms/internal/ads/tI;->QX:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/tI;->j6(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/zzwf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final EQ()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final FH()Lcom/google/android/gms/ads/d;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->Ej()Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwf;->FH()Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Hw()[Lcom/google/android/gms/ads/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    return-object v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/kI;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/IH;->getVideoController()Lcom/google/android/gms/internal/ads/kI;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final VH()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->aX()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
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

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hH;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/hH;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/QH;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/ads/doubleclick/c;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->we:Lcom/google/android/gms/ads/doubleclick/c;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/M;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/M;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/J;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/ads/e;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->tp:Lcom/google/android/gms/ads/e;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->tp:Lcom/google/android/gms/ads/e;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/WH;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->tp:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->j6()Lcom/google/android/gms/internal/ads/rH;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/ads/i;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->J0:Lcom/google/android/gms/ads/i;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/zzzw;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzzw;-><init>(Lcom/google/android/gms/ads/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/WG;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->Zo:Lcom/google/android/gms/internal/ads/WG;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/XG;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/XG;-><init>(Lcom/google/android/gms/internal/ads/WG;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/tH;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/rI;)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_b

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    iget v1, p0, Lcom/google/android/gms/internal/ads/tI;->QX:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/tI;->j6(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v3

    const-string v0, "search_v2"

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->DW()Lcom/google/android/gms/internal/ads/iH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/lH;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/lH;-><init>(Lcom/google/android/gms/internal/ads/iH;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/internal/ads/pH;->j6(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/IH;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/ZG;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->v5:Lcom/google/android/gms/internal/ads/sH;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ZG;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->DW(Lcom/google/android/gms/internal/ads/xH;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->Zo:Lcom/google/android/gms/internal/ads/WG;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/XG;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->Zo:Lcom/google/android/gms/internal/ads/WG;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/XG;-><init>(Lcom/google/android/gms/internal/ads/WG;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/tH;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->u7:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/hH;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->u7:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/hH;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/QH;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->we:Lcom/google/android/gms/ads/doubleclick/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/M;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->we:Lcom/google/android/gms/ads/doubleclick/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/M;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/J;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->tp:Lcom/google/android/gms/ads/e;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J0:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tI;->J0:Lcom/google/android/gms/ads/i;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzzw;-><init>(Lcom/google/android/gms/ads/i;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/zzzw;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/tI;->XL:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->Ws(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->d8()Labcd/ox;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-nez v0, :cond_9

    :cond_6
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/fH;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rI;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->j6:Lcom/google/android/gms/internal/ads/Fe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rI;->we()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Fe;->j6(Ljava/util/Map;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->DW()Lcom/google/android/gms/internal/ads/iH;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tI;->j6:Lcom/google/android/gms/internal/ads/Fe;

    new-instance v0, Lcom/google/android/gms/internal/ads/jH;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/jH;-><init>(Lcom/google/android/gms/internal/ads/iH;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/pH;->j6(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/IH;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tI;->Ws:Landroid/view/ViewGroup;

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_a
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->tp:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->j6()Lcom/google/android/gms/internal/ads/rH;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v0, 0x0

    throw v0

    :cond_b
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tI;->XL:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/tI;->XL:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/IH;->Ws(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final varargs j6([Lcom/google/android/gms/ads/d;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->gn:[Lcom/google/android/gms/ads/d;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/tI;->DW([Lcom/google/android/gms/ads/d;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->ys()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->J8:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final we()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tI;->EQ:Lcom/google/android/gms/internal/ads/IH;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/IH;->er()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
