.class public final Lcom/google/android/gms/internal/measurement/La;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/net/Uri;

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/lang/String;

.field private final VH:Z

.field private final Zo:Z

.field private final j6:Ljava/lang/String;

.field private final v5:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 10

    const/4 v1, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/La;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/La;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/La;->DW:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/La;->FH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/La;->Hw:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/La;->v5:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/La;->Zo:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/La;->VH:Z

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/measurement/La;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/La;->Hw:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/measurement/La;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/La;->FH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/La;->DW:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public final j6(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p1

    return-object p1
.end method
