.class public final Lcom/google/android/gms/common/api/internal/E;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final DW:I

.field private final FH:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final Hw:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final j6:Z


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/E;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/api/internal/E;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/E;->j6:Z

    if-nez v1, :cond_29

    iget-boolean v1, p1, Lcom/google/android/gms/common/api/internal/E;->j6:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/E;->FH:Lcom/google/android/gms/common/api/a;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/E;->FH:Lcom/google/android/gms/common/api/a;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/E;->Hw:Lcom/google/android/gms/common/api/a$d;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/E;->Hw:Lcom/google/android/gms/common/api/a$d;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    return v0

    :cond_29
    return v2
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/internal/E;->DW:I

    return v0
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/E;->FH:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->j6()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
