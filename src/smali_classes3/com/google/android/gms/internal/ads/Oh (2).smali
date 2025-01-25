.class final Lcom/google/android/gms/internal/ads/Oh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Rh;


# instance fields
.field private final j6:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Oh;->j6:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/zzbbi;)Z
    .registers 8

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oh;->j6:Landroid/content/Context;

    const v1, 0xbdfcb8

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Zl;->FH(Landroid/content/Context;I)Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->jH:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzbbi;->Hw:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Oh;->j6:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Nk;->Zo(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Oh;->j6:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbbi;->Hw:Z

    invoke-static {v5, p1}, Lcom/google/android/gms/internal/ads/Nh;->j6(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_46

    if-eqz v0, :cond_46

    if-nez v1, :cond_46

    if-eqz v4, :cond_45

    goto :goto_46

    :cond_45
    return v3

    :cond_46
    :goto_46
    return v2
.end method
