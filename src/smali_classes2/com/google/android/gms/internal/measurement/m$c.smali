.class final Lcom/google/android/gms/internal/measurement/m$c;
.super Lcom/google/android/gms/internal/measurement/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/measurement/internal/zzcx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m$c;->j6:Lcom/google/android/gms/measurement/internal/zzcx;

    return-void
.end method


# virtual methods
.method public final Bx()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$c;->j6:Lcom/google/android/gms/measurement/internal/zzcx;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$c;->j6:Lcom/google/android/gms/measurement/internal/zzcx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcx;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
