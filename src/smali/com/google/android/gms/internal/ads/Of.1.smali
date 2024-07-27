.class final Lcom/google/android/gms/internal/ads/Of;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Mf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Mf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Of;->j6:Lcom/google/android/gms/internal/ads/Mf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Of;->j6:Lcom/google/android/gms/internal/ads/Mf;

    const-string v1, "Operation denied by user."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void
.end method
