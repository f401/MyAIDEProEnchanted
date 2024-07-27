.class final Lcom/google/android/gms/measurement/internal/zzfq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzay;


# instance fields
.field private final zzaue:Lcom/google/android/gms/measurement/internal/zzfo;

.field private final zzauf:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfq;->zzaue:Lcom/google/android/gms/measurement/internal/zzfo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfq;->zzauf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfq;->zzaue:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfq;->zzauf:Ljava/lang/String;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(ILjava/lang/Throwable;[BLjava/lang/String;)V

    return-void
.end method
