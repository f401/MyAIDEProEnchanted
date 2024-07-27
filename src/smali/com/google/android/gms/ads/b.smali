.class public Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/b$a;
    }
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Lcom/google/android/gms/internal/ads/AH;

.field private final j6:Lcom/google/android/gms/internal/ads/fH;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/AH;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/fH;->j6:Lcom/google/android/gms/internal/ads/fH;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/AH;Lcom/google/android/gms/internal/ads/fH;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/AH;Lcom/google/android/gms/internal/ads/fH;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/b;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/b;->FH:Lcom/google/android/gms/internal/ads/AH;

    iput-object p3, p0, Lcom/google/android/gms/ads/b;->j6:Lcom/google/android/gms/internal/ads/fH;

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/rI;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b;->FH:Lcom/google/android/gms/internal/ads/AH;

    iget-object v1, p0, Lcom/google/android/gms/ads/b;->DW:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/fH;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rI;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/AH;->DW(Lcom/google/android/gms/internal/ads/zzwb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public j6(Lcom/google/android/gms/ads/c;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->j6()Lcom/google/android/gms/internal/ads/rI;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b;->j6(Lcom/google/android/gms/internal/ads/rI;)V

    return-void
.end method
