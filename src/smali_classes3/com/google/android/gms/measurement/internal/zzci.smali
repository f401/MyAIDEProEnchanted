.class final Lcom/google/android/gms/measurement/internal/zzci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

.field private final zzaql:Lcom/google/android/gms/measurement/internal/zzby;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzby;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzci;->zzaql:Lcom/google/android/gms/measurement/internal/zzby;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzci;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzci;->zzaql:Lcom/google/android/gms/measurement/internal/zzby;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzby;->zza(Lcom/google/android/gms/measurement/internal/zzby;)Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzme()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzci;->zzaql:Lcom/google/android/gms/measurement/internal/zzby;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzby;->zza(Lcom/google/android/gms/measurement/internal/zzby;)Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzci;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzd(Lcom/google/android/gms/measurement/internal/zzk;)V

    return-void
.end method
