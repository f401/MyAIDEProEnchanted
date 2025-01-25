.class final Lcom/google/android/gms/internal/measurement/va;
.super Landroid/database/ContentObserver;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/measurement/ta;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ta;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/va;->j6:Lcom/google/android/gms/internal/measurement/ta;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/va;->j6:Lcom/google/android/gms/internal/measurement/ta;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ta;->DW()V

    return-void
.end method
