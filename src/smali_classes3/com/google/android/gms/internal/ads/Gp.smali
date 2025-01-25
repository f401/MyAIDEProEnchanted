.class final synthetic Lcom/google/android/gms/internal/ads/Gp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/yp;

.field private final FH:Ljava/lang/String;

.field private final Hw:Z

.field private final VH:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final Zo:Lcom/google/android/gms/internal/ads/ix;

.field private final gn:Lcom/google/android/gms/internal/ads/D;

.field private final j6:Landroid/content/Context;

.field private final tp:Lcom/google/android/gms/ads/internal/ta;

.field private final u7:Lcom/google/android/gms/ads/internal/P;

.field private final v5:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gp;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Gp;->DW:Lcom/google/android/gms/internal/ads/yp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Gp;->FH:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Gp;->Hw:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Gp;->v5:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Gp;->Zo:Lcom/google/android/gms/internal/ads/ix;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Gp;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Gp;->gn:Lcom/google/android/gms/internal/ads/D;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/Gp;->u7:Lcom/google/android/gms/ads/internal/P;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/Gp;->tp:Lcom/google/android/gms/ads/internal/ta;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Gp;->j6:Landroid/content/Context;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Gp;->DW:Lcom/google/android/gms/internal/ads/yp;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Gp;->FH:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/Gp;->Hw:Z

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/Gp;->v5:Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Gp;->Zo:Lcom/google/android/gms/internal/ads/ix;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gp;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Gp;->gn:Lcom/google/android/gms/internal/ads/D;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Gp;->u7:Lcom/google/android/gms/ads/internal/P;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Gp;->tp:Lcom/google/android/gms/ads/internal/ta;

    new-instance v15, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/Hp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>(Landroid/content/Context;)V

    move-object v2, v8

    move-object v4, v15

    move-object v1, v8

    move v8, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/Hp;-><init>(Lcom/google/android/gms/internal/ads/zzbhs;Lcom/google/android/gms/internal/ads/zp;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Xo;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/Xo;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/Do;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/Do;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v15, v2, v14}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/internal/ads/Mo;Z)V

    return-object v2
.end method
