.class final Lcom/google/android/gms/internal/ads/ql;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/pl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ql;->j6:Lcom/google/android/gms/internal/ads/pl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ql;->j6:Lcom/google/android/gms/internal/ads/pl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pl;->j6:Landroid/content/Context;

    const-string v1, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
