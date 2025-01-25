.class final Lcom/google/android/gms/internal/ads/Uf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Lcom/google/android/gms/internal/ads/Tf;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Tf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uf;->FH:Lcom/google/android/gms/internal/ads/Tf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Uf;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Uf;->DW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Uf;->FH:Lcom/google/android/gms/internal/ads/Tf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Tf;->j6(Lcom/google/android/gms/internal/ads/Tf;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "download"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    :try_start_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Uf;->j6:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uf;->DW:Ljava/lang/String;

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/app/DownloadManager$Request;)Z

    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Uf;->FH:Lcom/google/android/gms/internal/ads/Tf;

    const-string p2, "Could not store picture."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void
.end method
