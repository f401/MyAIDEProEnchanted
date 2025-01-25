.class public final Lcom/google/android/gms/internal/ads/rl;
.super Lcom/google/android/gms/internal/ads/yd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final v5:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/oh;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/yd;-><init>(Lcom/google/android/gms/internal/ads/oh;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl;->v5:Landroid/content/Context;

    return-void
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/DG;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/rl;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ph;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Ph;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/rl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/oh;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/DG;

    new-instance v2, Lcom/google/android/gms/internal/ads/_e;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v4, "admob_volley"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 p0, 0x1400000

    invoke-direct {v2, v3, p0}, Lcom/google/android/gms/internal/ads/_e;-><init>(Ljava/io/File;I)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/DG;-><init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/MB;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/DG;->j6()V

    return-object v1
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/nD;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/nD;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Mr()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->Zo()I

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->VH()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->BJ:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl;->v5:Landroid/content/Context;

    const v1, 0xcc77c0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Zl;->FH(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_78

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rl;->v5:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/nD;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->VH()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Got gmscore asset response: "

    if-eqz v1, :cond_52

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_57

    :cond_52
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_57
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-object v0

    :cond_5b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lE;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Failed to get gmscore asset response: "

    if-eqz v1, :cond_70

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_70
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_75
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_78
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/yd;->j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/nD;

    move-result-object p1

    return-object p1
.end method
