.class final Lcom/google/android/gms/internal/ads/_c;
.super Lcom/google/android/gms/internal/ads/Jp;


# instance fields
.field private final Hw:Lcom/google/android/gms/internal/ads/Tc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/Tc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/_c;->Hw:Lcom/google/android/gms/internal/ads/Tc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Tc;Lcom/google/android/gms/internal/ads/Xc;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/_c;-><init>(Lcom/google/android/gms/internal/ads/Tc;)V

    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Kp;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_c;->Hw:Lcom/google/android/gms/internal/ads/Tc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Kp;->DW:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ed;->j6(Landroid/net/Uri;)Z

    return-void
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/Kp;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_c;->Hw:Lcom/google/android/gms/internal/ads/Tc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Kp;->DW:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ed;->j6(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Kp;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/_c;->Hw:Lcom/google/android/gms/internal/ads/Tc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Tc;->j6(Lcom/google/android/gms/internal/ads/Tc;)Lcom/google/android/gms/internal/ads/hd;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/_c;->Hw:Lcom/google/android/gms/internal/ads/Tc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Tc;->j6(Lcom/google/android/gms/internal/ads/Tc;)Lcom/google/android/gms/internal/ads/hd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/hd;->j6()V

    :cond_11
    return-void
.end method
