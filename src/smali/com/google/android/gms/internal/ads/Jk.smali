.class final synthetic Lcom/google/android/gms/internal/ads/Jk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/Ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ik;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jk;->j6:Lcom/google/android/gms/internal/ads/Ik;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jk;->DW:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Jk;->FH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jk;->j6:Lcom/google/android/gms/internal/ads/Ik;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jk;->DW:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jk;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
