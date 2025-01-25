.class final Lcom/google/android/gms/internal/measurement/m$d;
.super Lcom/google/android/gms/internal/measurement/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/measurement/internal/zzcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcy;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m$d;->j6:Lcom/google/android/gms/measurement/internal/zzcy;

    return-void
.end method


# virtual methods
.method public final Bx()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$d;->j6:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$d;->j6:Lcom/google/android/gms/measurement/internal/zzcy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcy;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
