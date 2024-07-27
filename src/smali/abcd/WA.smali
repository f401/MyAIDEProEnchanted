.class public Labcd/WA;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Labcd/WA;


# instance fields
.field private final DW:Labcd/WA$a;

.field private final FH:Labcd/dG;

.field private final Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/xF$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/WA;

    sget-object v1, Labcd/WA$a;->FH:Labcd/WA$a;

    invoke-direct {v0, v1}, Labcd/WA;-><init>(Labcd/WA$a;)V

    sput-object v0, Labcd/WA;->j6:Labcd/WA;

    return-void
.end method

.method private constructor <init>(Labcd/WA$a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/WA;->DW:Labcd/WA$a;

    iput-object v0, p0, Labcd/WA;->FH:Labcd/dG;

    iput-object v0, p0, Labcd/WA;->Hw:Ljava/util/List;

    iput-object v0, p0, Labcd/WA;->v5:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Labcd/dG;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/dG;",
            "Ljava/util/List",
            "<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/WA$a;->j6:Labcd/WA$a;

    iput-object v0, p0, Labcd/WA;->DW:Labcd/WA$a;

    iput-object p1, p0, Labcd/WA;->FH:Labcd/dG;

    iput-object p2, p0, Labcd/WA;->Hw:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/WA;->v5:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/xF$a;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/WA$a;->DW:Labcd/WA$a;

    iput-object v0, p0, Labcd/WA;->DW:Labcd/WA$a;

    iput-object v1, p0, Labcd/WA;->FH:Labcd/dG;

    iput-object v1, p0, Labcd/WA;->Hw:Ljava/util/List;

    iput-object p1, p0, Labcd/WA;->v5:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public DW()Labcd/dG;
    .registers 2

    iget-object v0, p0, Labcd/WA;->FH:Labcd/dG;

    return-object v0
.end method

.method public FH()Labcd/WA$a;
    .registers 2

    iget-object v0, p0, Labcd/WA;->DW:Labcd/WA$a;

    return-object v0
.end method

.method public j6()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/xF$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/WA;->v5:Ljava/util/Map;

    return-object v0
.end method
