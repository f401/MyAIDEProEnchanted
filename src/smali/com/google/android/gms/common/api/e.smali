.class public Lcom/google/android/gms/common/api/e;
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
.field private final DW:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final FH:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final Hw:Lcom/google/android/gms/common/api/internal/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/E",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final j6:Landroid/content/Context;

.field private final v5:I


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/e;->v5:I

    return v0
.end method

.method public final FH()Lcom/google/android/gms/common/api/internal/E;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/E",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->Hw:Lcom/google/android/gms/common/api/internal/E;

    return-object v0
.end method

.method public j6(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/a$f;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/b$a",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->j6()Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->j6()Lcom/google/android/gms/common/internal/d;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->DW:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->DW()Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->j6:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/e;->FH:Lcom/google/android/gms/common/api/a$d;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$a;->j6(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    return-object v0
.end method

.method public j6(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/w;
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/api/internal/w;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->j6()Lcom/google/android/gms/common/internal/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/d$a;->j6()Lcom/google/android/gms/common/internal/d;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/w;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/d;)V

    return-object v0
.end method

.method protected j6()Lcom/google/android/gms/common/internal/d$a;
    .registers 4

    new-instance v1, Lcom/google/android/gms/common/internal/d$a;

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/d$a;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->FH:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v0, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/gms/common/api/a$d$b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$d$b;->j6()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->DW()Landroid/accounts/Account;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/d$a;->j6(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/d$a;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->FH:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v0, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/google/android/gms/common/api/a$d$b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$d$b;->j6()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->tp()Ljava/util/Set;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/d$a;->j6(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/d$a;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/d$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/common/internal/d$a;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->j6:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/d$a;->DW(Ljava/lang/String;)Lcom/google/android/gms/common/internal/d$a;

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->FH:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v0, Lcom/google/android/gms/common/api/a$d$a;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/gms/common/api/a$d$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$d$a;->lp()Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method
