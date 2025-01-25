.class final Lcom/google/android/gms/internal/ads/Vf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Tf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Tf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vf;->j6:Lcom/google/android/gms/internal/ads/Tf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Vf;->j6:Lcom/google/android/gms/internal/ads/Tf;

    const-string p2, "User canceled the download."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void
.end method
