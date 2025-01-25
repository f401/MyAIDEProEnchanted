.class public final Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/d$a;,
        Lcom/google/android/gms/common/internal/d$b;
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Lcom/google/android/gms/common/internal/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:Ljava/lang/String;

.field private final Zo:Landroid/view/View;

.field private final gn:Ljava/lang/String;

.field private final j6:Landroid/accounts/Account;

.field private tp:Ljava/lang/Integer;

.field private final u7:Labcd/Nx;

.field private final v5:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Labcd/Nx;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Lcom/google/android/gms/common/internal/d$b;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Labcd/Nx;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->j6:Landroid/accounts/Account;

    if-nez p2, :cond_a

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_e

    :cond_a
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->DW:Ljava/util/Set;

    if-nez p3, :cond_14

    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_14
    iput-object p3, p0, Lcom/google/android/gms/common/internal/d;->Hw:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/d;->Zo:Landroid/view/View;

    iput p4, p0, Lcom/google/android/gms/common/internal/d;->v5:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/d;->VH:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/d;->gn:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/d;->u7:Labcd/Nx;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/internal/d$b;

    iget-object p3, p3, Lcom/google/android/gms/common/internal/d$b;->j6:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2d

    :cond_3f
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->FH:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final DW()Landroid/accounts/Account;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->j6:Landroid/accounts/Account;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final FH()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->FH:Ljava/util/Set;

    return-object v0
.end method

.method public final Hw()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->tp:Ljava/lang/Integer;

    return-object v0
.end method

.method public final VH()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->DW:Ljava/util/Set;

    return-object v0
.end method

.method public final Zo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->VH:Ljava/lang/String;

    return-object v0
.end method

.method public final gn()Labcd/Nx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->u7:Labcd/Nx;

    return-object v0
.end method

.method public final j6()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->j6:Landroid/accounts/Account;

    return-object v0
.end method

.method public final j6(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->tp:Ljava/lang/Integer;

    return-void
.end method

.method public final v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->gn:Ljava/lang/String;

    return-object v0
.end method
