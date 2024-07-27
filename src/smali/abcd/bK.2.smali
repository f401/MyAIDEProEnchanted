.class public Labcd/bK;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Labcd/gE$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgE$b",
            "<",
            "Labcd/bK;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Z

.field private final FH:Labcd/jE$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/aK;

    invoke-direct {v0}, Labcd/aK;-><init>()V

    sput-object v0, Labcd/bK;->j6:Labcd/gE$b;

    return-void
.end method

.method private constructor <init>(Labcd/gE;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "core"

    const-string v1, "filemode"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labcd/bK;->DW:Z

    const-string v0, "core"

    const/4 v1, 0x0

    const-string v2, "autocrlf"

    sget-object v3, Labcd/jE$a;->j6:Labcd/jE$a;

    invoke-virtual {p1, v0, v1, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/jE$a;

    iput-object v0, p0, Labcd/bK;->FH:Labcd/jE$a;

    return-void
.end method

.method synthetic constructor <init>(Labcd/gE;Labcd/bK;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/bK;-><init>(Labcd/gE;)V

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/bK;->DW:Z

    return v0
.end method

.method public j6()Labcd/jE$a;
    .registers 2

    iget-object v0, p0, Labcd/bK;->FH:Labcd/jE$a;

    return-object v0
.end method
