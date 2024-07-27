.class public final Lcom/google/android/gms/internal/ads/zD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/wD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wD;"
    }
.end annotation


# instance fields
.field public final DW:I

.field private final FH:Lcom/google/android/gms/internal/ads/iD;

.field private final Hw:Lcom/google/android/gms/internal/ads/AD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/AD",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private volatile VH:J

.field private volatile Zo:Z

.field public final j6:Lcom/google/android/gms/internal/ads/mD;

.field private volatile v5:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iD;Landroid/net/Uri;ILcom/google/android/gms/internal/ads/AD;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/iD;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/android/gms/internal/ads/AD",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zD;->FH:Lcom/google/android/gms/internal/ads/iD;

    new-instance v0, Lcom/google/android/gms/internal/ads/mD;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zD;->DW:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zD;->Hw:Lcom/google/android/gms/internal/ads/AD;

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zD;->Zo:Z

    return v0
.end method

.method public final FH()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zD;->Zo:Z

    return-void
.end method

.method public final Hw()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zD;->v5:Ljava/lang/Object;

    return-object v0
.end method

.method public final j6()V
    .registers 5

    new-instance v1, Lcom/google/android/gms/internal/ads/lD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zD;->FH:Lcom/google/android/gms/internal/ads/iD;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/lD;-><init>(Lcom/google/android/gms/internal/ads/iD;Lcom/google/android/gms/internal/ads/mD;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lD;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zD;->Hw:Lcom/google/android/gms/internal/ads/AD;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zD;->FH:Lcom/google/android/gms/internal/ads/iD;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/iD;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/AD;->j6(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zD;->v5:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lD;->DW()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zD;->VH:J

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lD;->DW()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zD;->VH:J

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final v5()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zD;->VH:J

    return-wide v0
.end method
