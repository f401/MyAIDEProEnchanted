.class public Labcd/jE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/jE$a;
    }
.end annotation


# static fields
.field public static final j6:Labcd/gE$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgE$b",
            "<",
            "Labcd/jE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Z

.field private final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/iE;

    invoke-direct {v0}, Labcd/iE;-><init>()V

    sput-object v0, Labcd/jE;->j6:Labcd/gE$b;

    return-void
.end method

.method private constructor <init>(Labcd/gE;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "core"

    const-string v1, "compression"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labcd/jE;->DW:I

    const-string v0, "pack"

    const-string v1, "indexversion"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labcd/jE;->FH:I

    const-string v0, "core"

    const-string v1, "logallrefupdates"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labcd/jE;->Hw:Z

    const-string v0, "core"

    const/4 v1, 0x0

    const-string v2, "excludesfile"

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/jE;->v5:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Labcd/gE;Labcd/jE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/jE;-><init>(Labcd/gE;)V

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/jE;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/jE;->FH:I

    return v0
.end method

.method public Hw()Z
    .registers 2

    iget-boolean v0, p0, Labcd/jE;->Hw:Z

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/jE;->DW:I

    return v0
.end method
