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
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ql;->j6:Lcom/google/android/gms/internal/ads/pl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/pl;->j6:Landroid/content/Context;

    const-string p2, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
