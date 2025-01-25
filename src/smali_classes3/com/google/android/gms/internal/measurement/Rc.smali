.class final Lcom/google/android/gms/internal/measurement/Rc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Sc;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/measurement/Wa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/Wa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Rc;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Rc;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/Wa;->v5(I)B

    move-result p1

    return p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Rc;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v0

    return v0
.end method
