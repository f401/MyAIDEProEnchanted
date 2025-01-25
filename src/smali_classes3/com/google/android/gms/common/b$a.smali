.class final Lcom/google/android/gms/common/b$a;
.super Labcd/Bx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/common/b;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/b;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/b$a;->DW:Lcom/google/android/gms/common/b;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_d

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_11

    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_11
    invoke-direct {p0, p1}, Labcd/Bx;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/b$a;->j6:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Don\'t know how to handle this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "GoogleApiAvailability"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/common/b$a;->DW:Lcom/google/android/gms/common/b;

    iget-object v0, p0, Lcom/google/android/gms/common/b$a;->j6:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/b;->DW(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/common/b$a;->DW:Lcom/google/android/gms/common/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/b;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/common/b$a;->DW:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/common/b$a;->j6:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/b;->DW(Landroid/content/Context;I)V

    :cond_35
    :goto_35
    return-void
.end method
