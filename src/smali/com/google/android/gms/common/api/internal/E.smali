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
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
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

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/api/internal/E;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/api/internal/E;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/E;->j6:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/google/android/gms/common/api/internal/E;->j6:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/E;->FH:Lcom/google/android/gms/common/api/a;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/E;->FH:Lcom/google/android/gms/common/api/a;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/E;->Hw:Lcom/google/android/gms/common/api/a$d;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/E;->Hw:Lcom/google/android/gms/common/api/a$d;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
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
