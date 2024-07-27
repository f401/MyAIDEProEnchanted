.class public final Lcom/google/android/gms/internal/ads/fc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ge;

.field private final FH:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final Hw:Lcom/google/android/gms/ads/internal/ta;

.field private final j6:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fc;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fc;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fc;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/fc;->Hw:Lcom/google/android/gms/ads/internal/ta;

    return-void
.end method


# virtual methods
.method public final DW(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/m;
    .registers 9

    new-instance v0, Lcom/google/android/gms/ads/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fc;->j6:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzwf;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fc;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fc;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/fc;->Hw:Lcom/google/android/gms/ads/internal/ta;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-object v0
.end method

.method public final DW()Lcom/google/android/gms/internal/ads/fc;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/fc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fc;->j6:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fc;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fc;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fc;->Hw:Lcom/google/android/gms/ads/internal/ta;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/fc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-object v0
.end method

.method public final j6()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fc;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/m;
    .registers 9

    new-instance v0, Lcom/google/android/gms/ads/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fc;->j6:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzwf;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fc;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fc;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/fc;->Hw:Lcom/google/android/gms/ads/internal/ta;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V

    return-object v0
.end method
