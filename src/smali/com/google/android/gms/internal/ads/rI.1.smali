.class public final Lcom/google/android/gms/internal/ads/rI;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final EQ:Lcom/google/android/gms/ads/search/a;

.field private final FH:I

.field private final Hw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final J0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final J8:Landroid/os/Bundle;

.field private final QX:Z

.field private final VH:Landroid/os/Bundle;

.field private final Ws:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final XL:Lcom/google/android/gms/internal/ads/fq;

.field private final Zo:Z

.field private final aM:I

.field private final gn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;"
        }
    .end annotation
.end field

.field private final j3:Ljava/lang/String;

.field private final j6:Ljava/util/Date;

.field private final tp:Ljava/lang/String;

.field private final u7:Ljava/lang/String;

.field private final v5:Landroid/location/Location;

.field private final we:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sI;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/rI;-><init>(Lcom/google/android/gms/internal/ads/sI;Lcom/google/android/gms/ads/search/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/sI;Lcom/google/android/gms/ads/search/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->j6(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->j6:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->DW(Lcom/google/android/gms/internal/ads/sI;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->DW:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->FH(Lcom/google/android/gms/internal/ads/sI;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/rI;->FH:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->Hw(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->Hw:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->v5(Lcom/google/android/gms/internal/ads/sI;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->v5:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->Zo(Lcom/google/android/gms/internal/ads/sI;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rI;->Zo:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->VH(Lcom/google/android/gms/internal/ads/sI;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->VH:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->gn(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->gn:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->u7(Lcom/google/android/gms/internal/ads/sI;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->u7:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->tp(Lcom/google/android/gms/internal/ads/sI;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->tp:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rI;->EQ:Lcom/google/android/gms/ads/search/a;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->EQ(Lcom/google/android/gms/internal/ads/sI;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/rI;->we:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->we(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->J0:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->J0(Lcom/google/android/gms/internal/ads/sI;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->J8:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->J8(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->Ws:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->Ws(Lcom/google/android/gms/internal/ads/sI;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rI;->QX:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->XL:Lcom/google/android/gms/internal/ads/fq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->QX(Lcom/google/android/gms/internal/ads/sI;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/rI;->aM:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sI;->XL(Lcom/google/android/gms/internal/ads/sI;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->j3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public final EQ()Lcom/google/android/gms/ads/search/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->EQ:Lcom/google/android/gms/ads/search/a;

    return-object v0
.end method

.method public final FH()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->J8:Landroid/os/Bundle;

    return-object v0
.end method

.method public final Hw()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/rI;->FH:I

    return v0
.end method

.method public final J0()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->VH:Landroid/os/Bundle;

    return-object v0
.end method

.method public final J8()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/rI;->we:I

    return v0
.end method

.method public final QX()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/rI;->aM:I

    return v0
.end method

.method public final VH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rI;->Zo:Z

    return v0
.end method

.method public final Ws()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->Ws:Ljava/util/Set;

    return-object v0
.end method

.method public final XL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->j3:Ljava/lang/String;

    return-object v0
.end method

.method public final Zo()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->v5:Landroid/location/Location;

    return-object v0
.end method

.method public final gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public final j6(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/b;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->VH:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final j6()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->j6:Ljava/util/Date;

    return-object v0
.end method

.method public final j6(Landroid/content/Context;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->J0:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final tp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->tp:Ljava/lang/String;

    return-object v0
.end method

.method public final u7()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rI;->QX:Z

    return v0
.end method

.method public final v5()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->Hw:Ljava/util/Set;

    return-object v0
.end method

.method public final we()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rI;->gn:Ljava/util/Map;

    return-object v0
.end method
