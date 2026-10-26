.class final Lcom/google/android/gms/internal/ads/pl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Z

.field private final Hw:Z

.field final j6:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ol;Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pl;->j6:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pl;->DW:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/pl;->FH:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/pl;->Hw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pl;->j6:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pl;->DW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pl;->FH:Z

    if-eqz v0, :cond_0

    const-string v0, "Error"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pl;->Hw:Z

    if-eqz v0, :cond_1

    const-string v0, "Dismiss"

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const-string v0, "Info"

    goto :goto_0

    :cond_1
    const-string v0, "Learn More"

    new-instance v2, Lcom/google/android/gms/internal/ads/ql;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ql;-><init>(Lcom/google/android/gms/internal/ads/pl;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Dismiss"

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
