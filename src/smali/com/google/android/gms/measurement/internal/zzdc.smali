.class final Lcom/google/android/gms/measurement/internal/zzdc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$name:Ljava/lang/String;

.field private final zzads:Ljava/lang/String;

.field private final zzaer:Z

.field private final zzagj:Ljava/lang/String;

.field private final zzare:Lcom/google/android/gms/measurement/internal/zzda;

.field private final zzarf:J

.field private final zzarg:Landroid/os/Bundle;

.field private final zzarh:Z

.field private final zzari:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 11

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzads:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzdc;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarf:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarg:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzaer:Z

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarh:Z

    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzari:Z

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzagj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzads:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdc;->val$name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarf:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarg:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzaer:Z

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarh:Z

    iget-boolean v9, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzari:Z

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzagj:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Lcom/google/android/gms/measurement/internal/zzda;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
