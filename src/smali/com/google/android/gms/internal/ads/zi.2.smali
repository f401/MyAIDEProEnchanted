.class public final Lcom/google/android/gms/internal/ads/zi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/MF;

.field public final EQ:Lcom/google/android/gms/internal/ads/Ei;

.field public final FH:Lcom/google/android/gms/internal/ads/fk;

.field public final Hw:Lcom/google/android/gms/internal/ads/d;

.field public final VH:Lcom/google/android/gms/internal/ads/Ri;

.field public final Zo:Lcom/google/android/gms/internal/ads/je;

.field public final gn:Lcom/google/android/gms/internal/ads/kg;

.field public final j6:Lcom/google/android/gms/internal/ads/Hi;

.field public final tp:Z

.field public final u7:Lcom/google/android/gms/internal/ads/jk;

.field public final v5:Lcom/google/android/gms/internal/ads/Qi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/Hi;Lcom/google/android/gms/internal/ads/MF;Lcom/google/android/gms/internal/ads/fk;Lcom/google/android/gms/internal/ads/d;Lcom/google/android/gms/internal/ads/Qi;Lcom/google/android/gms/internal/ads/je;Lcom/google/android/gms/internal/ads/Ri;Lcom/google/android/gms/internal/ads/kg;Lcom/google/android/gms/internal/ads/jk;ZLcom/google/android/gms/internal/ads/Ei;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zi;->j6:Lcom/google/android/gms/internal/ads/Hi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zi;->DW:Lcom/google/android/gms/internal/ads/MF;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zi;->FH:Lcom/google/android/gms/internal/ads/fk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zi;->Hw:Lcom/google/android/gms/internal/ads/d;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zi;->v5:Lcom/google/android/gms/internal/ads/Qi;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zi;->Zo:Lcom/google/android/gms/internal/ads/je;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zi;->VH:Lcom/google/android/gms/internal/ads/Ri;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zi;->gn:Lcom/google/android/gms/internal/ads/kg;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zi;->u7:Lcom/google/android/gms/internal/ads/jk;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zi;->tp:Z

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zi;->EQ:Lcom/google/android/gms/internal/ads/Ei;

    return-void
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zi;
    .registers 13

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->XL()Lcom/google/android/gms/internal/ads/cd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cd;->j6(Landroid/content/Context;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzauj;

    invoke-direct {v11, p0}, Lcom/google/android/gms/internal/ads/zzauj;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zi;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/ads/PF;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/PF;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/gk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/gk;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/c;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/c;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/Oi;

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/Ei;->VH()Lcom/google/android/gms/internal/ads/Ud;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/internal/ads/Oi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ud;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/ke;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/ke;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/Si;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/Si;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/jg;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/jg;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/hk;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/hk;-><init>()V

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zi;-><init>(Lcom/google/android/gms/internal/ads/Hi;Lcom/google/android/gms/internal/ads/MF;Lcom/google/android/gms/internal/ads/fk;Lcom/google/android/gms/internal/ads/d;Lcom/google/android/gms/internal/ads/Qi;Lcom/google/android/gms/internal/ads/je;Lcom/google/android/gms/internal/ads/Ri;Lcom/google/android/gms/internal/ads/kg;Lcom/google/android/gms/internal/ads/jk;ZLcom/google/android/gms/internal/ads/Ei;)V

    return-object v0
.end method
