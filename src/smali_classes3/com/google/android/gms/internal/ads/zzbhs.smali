.class public final Lcom/google/android/gms/internal/ads/zzbhs;
.super Landroid/content/MutableContextWrapper;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Landroid/content/Context;

.field private FH:Landroid/content/Context;

.field private j6:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhs;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final DW()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->FH:Landroid/content/Context;

    return-object v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->FH:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j6()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->j6:Landroid/app/Activity;

    return-object v0
.end method

.method public final setBaseContext(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->DW:Landroid/content/Context;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_e

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhs;->j6:Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhs;->FH:Landroid/content/Context;

    invoke-super {p0, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->j6:Landroid/app/Activity;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_8
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->DW:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
