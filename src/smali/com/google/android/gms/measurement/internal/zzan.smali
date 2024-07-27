.class public final Lcom/google/android/gms/measurement/internal/zzan;
.super Ljava/lang/Object;


# instance fields
.field public final origin:Ljava/lang/String;

.field public final zzade:J

.field public final zzadf:J

.field public final zzadg:Z

.field public final zzadh:Ljava/lang/String;

.field public final zzadi:Ljava/lang/String;

.field public final zzadj:Landroid/os/Bundle;


# direct methods
.method constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzade:J

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzadf:J

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzadg:Z

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzadh:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzan;->origin:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzadi:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzadj:Landroid/os/Bundle;

    return-void
.end method

.method public static final zzc(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzan;
    .registers 12

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzan;

    const/4 v6, 0x1

    move-wide v4, v2

    move-object v8, v7

    move-object v9, v7

    move-object v10, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method
