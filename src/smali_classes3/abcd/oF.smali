.class public Labcd/oF;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Labcd/gE$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgE$b<",
            "Labcd/oF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Ljava/lang/String;

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/lang/String;

.field private VH:Z

.field private Zo:Z

.field private gn:Z

.field private u7:Z

.field private v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/nF;

    invoke-direct {v0}, Labcd/nF;-><init>()V

    sput-object v0, Labcd/oF;->j6:Labcd/gE$b;

    return-void
.end method

.method private constructor <init>(Labcd/gE;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GIT_AUTHOR_NAME"

    invoke-static {p1, v0}, Labcd/oF;->DW(Labcd/gE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/oF;->DW:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_16

    invoke-static {}, Labcd/oF;->Hw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/oF;->DW:Ljava/lang/String;

    iput-boolean v1, p0, Labcd/oF;->Zo:Z

    :cond_16
    const-string v0, "GIT_AUTHOR_EMAIL"

    invoke-static {p1, v0}, Labcd/oF;->j6(Labcd/gE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/oF;->FH:Ljava/lang/String;

    if-nez v0, :cond_28

    invoke-static {}, Labcd/oF;->FH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/oF;->FH:Ljava/lang/String;

    iput-boolean v1, p0, Labcd/oF;->VH:Z

    :cond_28
    const-string v0, "GIT_COMMITTER_NAME"

    invoke-static {p1, v0}, Labcd/oF;->DW(Labcd/gE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/oF;->Hw:Ljava/lang/String;

    if-nez v0, :cond_3a

    invoke-static {}, Labcd/oF;->Hw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/oF;->Hw:Ljava/lang/String;

    iput-boolean v1, p0, Labcd/oF;->gn:Z

    :cond_3a
    const-string v0, "GIT_COMMITTER_EMAIL"

    invoke-static {p1, v0}, Labcd/oF;->j6(Labcd/gE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/oF;->v5:Ljava/lang/String;

    if-nez p1, :cond_4c

    invoke-static {}, Labcd/oF;->FH()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/oF;->v5:Ljava/lang/String;

    iput-boolean v1, p0, Labcd/oF;->u7:Z

    :cond_4c
    return-void
.end method

.method synthetic constructor <init>(Labcd/gE;Labcd/oF;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/oF;-><init>(Labcd/gE;)V

    return-void
.end method

.method private static DW(Labcd/gE;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "name"

    const-string v2, "user"

    invoke-virtual {p0, v2, v0, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_13

    invoke-static {}, Labcd/oF;->v5()Labcd/QK;

    move-result-object p0

    invoke-virtual {p0, p1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method private static FH()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/oF;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/oF;->v5()Labcd/QK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/QK;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Hw()Ljava/lang/String;
    .registers 2

    invoke-static {}, Labcd/oF;->v5()Labcd/QK;

    move-result-object v0

    const-string v1, "user.name"

    invoke-virtual {v0, v1}, Labcd/QK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "unknown-user"

    :cond_e
    return-object v0
.end method

.method private static j6(Labcd/gE;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "email"

    const-string v2, "user"

    invoke-virtual {p0, v2, v0, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_13

    invoke-static {}, Labcd/oF;->v5()Labcd/QK;

    move-result-object p0

    invoke-virtual {p0, p1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method private static v5()Labcd/QK;
    .registers 1

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/oF;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/oF;->v5:Ljava/lang/String;

    return-object v0
.end method
