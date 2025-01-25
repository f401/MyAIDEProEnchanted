.class public final Lcom/google/android/gms/internal/ads/sI;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/os/Bundle;

.field private EQ:Z

.field private final FH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Ljava/lang/String;

.field private J8:I

.field private QX:I

.field private VH:Ljava/util/Date;

.field private Ws:Z

.field private XL:Ljava/lang/String;

.field private final Zo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/lang/String;

.field private final j6:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Landroid/location/Location;

.field private u7:I

.field private final v5:Landroid/os/Bundle;

.field private we:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->j6:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->DW:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->FH:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->Hw:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->v5:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->Zo:Ljava/util/HashSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/sI;->u7:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/sI;->EQ:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/sI;->J8:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/sI;->QX:I

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/sI;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->gn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic EQ(Lcom/google/android/gms/internal/ads/sI;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/sI;->J8:I

    return p0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/sI;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/sI;->u7:I

    return p0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->j6:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic J0(Lcom/google/android/gms/internal/ads/sI;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->v5:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic J8(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->Zo:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic QX(Lcom/google/android/gms/internal/ads/sI;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/sI;->QX:I

    return p0
.end method

.method static synthetic VH(Lcom/google/android/gms/internal/ads/sI;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->DW:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic Ws(Lcom/google/android/gms/internal/ads/sI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/sI;->Ws:Z

    return p0
.end method

.method static synthetic XL(Lcom/google/android/gms/internal/ads/sI;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->XL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Zo(Lcom/google/android/gms/internal/ads/sI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/sI;->EQ:Z

    return p0
.end method

.method static synthetic gn(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->FH:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->VH:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic tp(Lcom/google/android/gms/internal/ads/sI;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->J0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u7(Lcom/google/android/gms/internal/ads/sI;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->we:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v5(Lcom/google/android/gms/internal/ads/sI;)Landroid/location/Location;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->tp:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic we(Lcom/google/android/gms/internal/ads/sI;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/sI;->Hw:Ljava/util/HashSet;

    return-object p0
.end method


# virtual methods
.method public final DW(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->Hw:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final DW(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/sI;->Ws:Z

    return-void
.end method

.method public final FH(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->Hw:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j6(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/internal/ads/sI;->u7:I

    return-void
.end method

.method public final j6(Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sI;->tp:Landroid/location/Location;

    return-void
.end method

.method public final j6(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/b;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->DW:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sI;->j6:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j6(Ljava/util/Date;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sI;->VH:Ljava/util/Date;

    return-void
.end method

.method public final j6(Z)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/sI;->J8:I

    return-void
.end method
