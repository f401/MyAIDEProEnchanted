.class public final Lcom/google/android/gms/internal/ads/Tf;
.super Lcom/google/android/gms/internal/ads/_f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final FH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Mo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storePicture"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Tf;->FH:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Tf;->Hw:Landroid/content/Context;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Tf;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Tf;->Hw:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tf;->Hw:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string v0, "Activity context is not available"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tf;->Hw:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->Zo(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->FH()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "Feature is not supported by the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tf;->FH:Ljava/util/Map;

    const-string v1, "iurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v0, "Image url cannot be empty."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void

    :cond_35
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Invalid image url: "

    if-eqz v1, :cond_4c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_4c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_51
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void

    :cond_55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->FH(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_80

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Image type not recognized: "

    if-eqz v1, :cond_77

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7c

    :cond_77
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    return-void

    :cond_80
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pk;->DW()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Tf;->Hw:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nk;->v5(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v2, :cond_9a

    sget v4, Labcd/ex;->s1:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9c

    :cond_9a
    const-string v4, "Save image"

    :goto_9c
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_a8

    sget v4, Labcd/ex;->s2:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_aa

    :cond_a8
    const-string v4, "Allow Ad to store image in Picture gallery?"

    :goto_aa
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_b6

    sget v4, Labcd/ex;->s3:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_b8

    :cond_b6
    const-string v4, "Accept"

    :goto_b8
    new-instance v5, Lcom/google/android/gms/internal/ads/Uf;

    invoke-direct {v5, p0, v0, v1}, Lcom/google/android/gms/internal/ads/Uf;-><init>(Lcom/google/android/gms/internal/ads/Tf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_c9

    sget v0, Labcd/ex;->s4:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_cb

    :cond_c9
    const-string v0, "Decline"

    :goto_cb
    new-instance v1, Lcom/google/android/gms/internal/ads/Vf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Vf;-><init>(Lcom/google/android/gms/internal/ads/Tf;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
