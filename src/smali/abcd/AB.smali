.class public Labcd/AB;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/AB$a;
    }
.end annotation


# static fields
.field static final DW:Labcd/AB;

.field static final FH:Labcd/AB;

.field static final Hw:Labcd/AB;

.field static final j6:Labcd/AB;


# instance fields
.field private VH:Ljava/util/Map;
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

.field private final Zo:Labcd/dG;

.field private final v5:Labcd/AB$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/AB;

    sget-object v1, Labcd/AB$a;->j6:Labcd/AB$a;

    invoke-direct {v0, v1}, Labcd/AB;-><init>(Labcd/AB$a;)V

    sput-object v0, Labcd/AB;->j6:Labcd/AB;

    new-instance v0, Labcd/AB;

    sget-object v1, Labcd/AB$a;->DW:Labcd/AB$a;

    invoke-direct {v0, v1}, Labcd/AB;-><init>(Labcd/AB$a;)V

    sput-object v0, Labcd/AB;->DW:Labcd/AB;

    new-instance v0, Labcd/AB;

    sget-object v1, Labcd/AB$a;->v5:Labcd/AB$a;

    invoke-direct {v0, v1}, Labcd/AB;-><init>(Labcd/AB$a;)V

    sput-object v0, Labcd/AB;->FH:Labcd/AB;

    new-instance v0, Labcd/AB;

    sget-object v1, Labcd/AB$a;->Zo:Labcd/AB$a;

    invoke-direct {v0, v1}, Labcd/AB;-><init>(Labcd/AB$a;)V

    sput-object v0, Labcd/AB;->Hw:Labcd/AB;

    return-void
.end method

.method private constructor <init>(Labcd/AB$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/AB;->v5:Labcd/AB$a;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/AB;->Zo:Labcd/dG;

    return-void
.end method

.method constructor <init>(Labcd/dG;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/AB$a;->FH:Labcd/AB$a;

    iput-object v0, p0, Labcd/AB;->v5:Labcd/AB$a;

    iput-object p1, p0, Labcd/AB;->Zo:Labcd/dG;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .registers 3
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/AB$a;->Hw:Labcd/AB$a;

    iput-object v0, p0, Labcd/AB;->v5:Labcd/AB$a;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/AB;->Zo:Labcd/dG;

    iput-object p1, p0, Labcd/AB;->VH:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public j6()Labcd/AB$a;
    .registers 2

    iget-object v0, p0, Labcd/AB;->v5:Labcd/AB$a;

    return-object v0
.end method
