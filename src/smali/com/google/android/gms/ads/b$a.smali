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
    .registers 6

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->DW()Lcom/google/android/gms/internal/ads/iH;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/Fe;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Fe;-><init>()V

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/iH;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)Lcom/google/android/gms/internal/ads/DH;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/b$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/DH;)V

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
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j6(Lcom/google/android/gms/ads/formats/b;)Lcom/google/android/gms/ads/b$a;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzacp;-><init>(Lcom/google/android/gms/ads/formats/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/zzacp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to specify native ad options"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
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
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to add app install ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
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
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to add content ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j6(Lcom/google/android/gms/ads/formats/g$a;)Lcom/google/android/gms/ads/b$a;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    new-instance v1, Lcom/google/android/gms/internal/ads/Kb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/Kb;-><init>(Lcom/google/android/gms/ads/formats/g$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/ub;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to add google native ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;Lcom/google/android/gms/ads/formats/f$b;Lcom/google/android/gms/ads/formats/f$a;)Lcom/google/android/gms/ads/b$a;
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/b$a;->DW:Lcom/google/android/gms/internal/ads/DH;

    new-instance v2, Lcom/google/android/gms/internal/ads/Jb;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/Jb;-><init>(Lcom/google/android/gms/ads/formats/f$b;)V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1, v2, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/lb;)V

    :goto_1
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Ib;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/Ib;-><init>(Lcom/google/android/gms/ads/formats/f$a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to add custom template ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
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
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
