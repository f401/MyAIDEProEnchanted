.class public Lcom/google/android/gms/ads/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/DH;

.field private final j6:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/DH;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/b$a;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->DW()Lcom/google/android/gms/internal/ads/iH;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Fe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Fe;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/iH;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)Lcom/google/android/gms/internal/ads/DH;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/b$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/DH;)V

    return-void
.end method


# virtual methods
.method public j6(Lcom/google/android/gms/ads/a;)Lcom/google/android/gms/ads/b$a;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    new-instance v1, Lcom/google/android/gms/internal/ads/ZG;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ZG;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/xH;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to set AdListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public j6(Lcom/google/android/gms/ads/formats/b;)Lcom/google/android/gms/ads/b$a;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzacp;-><init>(Lcom/google/android/gms/ads/formats/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/zzacp;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public j6(Lcom/google/android/gms/ads/formats/d$a;)Lcom/google/android/gms/ads/b$a;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    new-instance v1, Lcom/google/android/gms/internal/ads/Gb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/Gb;-><init>(Lcom/google/android/gms/ads/formats/d$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/fb;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to add app install ad listener"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public j6(Lcom/google/android/gms/ads/formats/e$a;)Lcom/google/android/gms/ads/b$a;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    new-instance v1, Lcom/google/android/gms/internal/ads/Hb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/Hb;-><init>(Lcom/google/android/gms/ads/formats/e$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/ib;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to add content ad listener"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public j6(Lcom/google/android/gms/ads/formats/g$a;)Lcom/google/android/gms/ads/b$a;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    new-instance v1, Lcom/google/android/gms/internal/ads/Kb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/Kb;-><init>(Lcom/google/android/gms/ads/formats/g$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/ub;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public j6(Ljava/lang/String;Lcom/google/android/gms/ads/formats/f$b;Lcom/google/android/gms/ads/formats/f$a;)Lcom/google/android/gms/ads/b$a;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    new-instance v1, Lcom/google/android/gms/internal/ads/Jb;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/Jb;-><init>(Lcom/google/android/gms/ads/formats/f$b;)V

    if-nez p3, :cond_b

    const/4 p2, 0x0

    goto :goto_10

    :cond_b
    new-instance p2, Lcom/google/android/gms/internal/ads/Ib;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/Ib;-><init>(Lcom/google/android/gms/ads/formats/f$a;)V

    :goto_10
    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/DH;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/lb;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception p1

    const-string p2, "Failed to add custom template ad listener"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-object p0
.end method

.method public j6()Lcom/google/android/gms/ads/b;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/b;

    iget-object v1, p0, Lcom/google/android/gms/ads/b$a;->j6:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/DH;->AE()Lcom/google/android/gms/internal/ads/AH;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/AH;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
