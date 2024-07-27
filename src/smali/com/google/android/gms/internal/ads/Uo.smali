.class final synthetic Lcom/google/android/gms/internal/ads/Uo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/yp;

.field private final EQ:Lcom/google/android/gms/internal/ads/YF;

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
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uo;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Uo;->DW:Lcom/google/android/gms/internal/ads/yp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Uo;->FH:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Uo;->Hw:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Uo;->v5:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Uo;->Zo:Lcom/google/android/gms/internal/ads/ix;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Uo;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Uo;->gn:Lcom/google/android/gms/internal/ads/D;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/Uo;->u7:Lcom/google/android/gms/ads/internal/P;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/Uo;->tp:Lcom/google/android/gms/ads/internal/ta;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/Uo;->EQ:Lcom/google/android/gms/internal/ads/YF;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uo;->j6:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uo;->DW:Lcom/google/android/gms/internal/ads/yp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Uo;->FH:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Uo;->Hw:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/Uo;->v5:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Uo;->Zo:Lcom/google/android/gms/internal/ads/ix;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Uo;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Uo;->gn:Lcom/google/android/gms/internal/ads/D;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/Uo;->u7:Lcom/google/android/gms/ads/internal/P;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/Uo;->tp:Lcom/google/android/gms/ads/internal/ta;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/Uo;->EQ:Lcom/google/android/gms/internal/ads/YF;

    new-instance v11, Lcom/google/android/gms/internal/ads/Xo;

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/Zo;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Zo;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/ads/Xo;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0, v11, v10, v4}, Lcom/google/android/gms/internal/ads/Vk;->j6(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/YF;Z)Lcom/google/android/gms/internal/ads/No;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/ads/Mo;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Do;

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/Do;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/ads/Mo;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v11
.end method
