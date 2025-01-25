.class final Lcom/google/android/gms/internal/measurement/Xa;
.super Lcom/google/android/gms/internal/measurement/Za;


# instance fields
.field private final DW:I

.field private final FH:Lcom/google/android/gms/internal/measurement/Wa;

.field private j6:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/Wa;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Xa;->FH:Lcom/google/android/gms/internal/measurement/Wa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Za;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Xa;->j6:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/Xa;->DW:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Xa;->j6:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/Xa;->DW:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final nextByte()B
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Xa;->j6:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/Xa;->DW:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/Xa;->j6:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Xa;->FH:Lcom/google/android/gms/internal/measurement/Wa;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/Wa;->Zo(I)B

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
