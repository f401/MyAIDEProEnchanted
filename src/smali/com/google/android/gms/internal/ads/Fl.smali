.class public Lcom/google/android/gms/internal/ads/Fl;
.super Lcom/google/android/gms/internal/ads/xw;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static tp:Lcom/google/android/gms/internal/ads/Gw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/Fl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Gw;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/Gw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Fl;->tp:Lcom/google/android/gms/internal/ads/Gw;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Aw;Lcom/google/android/gms/internal/ads/fl;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xw;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Aw;->size()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/xw;->j6(Lcom/google/android/gms/internal/ads/Aw;JLcom/google/android/gms/internal/ads/fl;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Aw;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->Hw:Lcom/google/android/gms/internal/ads/Aw;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "model("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
