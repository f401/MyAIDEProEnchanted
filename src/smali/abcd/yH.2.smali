.class Labcd/yH;
.super Ljava/lang/Object;


# static fields
.field static final j6:Labcd/gE$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgE$b",
            "<",
            "Labcd/yH;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:I

.field private final FH:Z

.field private final Hw:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/xH;

    invoke-direct {v0}, Labcd/xH;-><init>()V

    sput-object v0, Labcd/yH;->j6:Labcd/gE$b;

    return-void
.end method

.method private constructor <init>(Labcd/gE;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/jE;->j6:Labcd/gE$b;

    invoke-virtual {p1, v0}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jE;

    invoke-virtual {v0}, Labcd/jE;->j6()I

    move-result v0

    iput v0, p0, Labcd/yH;->DW:I

    const-string v0, "core"

    const-string v1, "fsyncobjectfiles"

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labcd/yH;->FH:Z

    const-string v0, "core"

    const-string v1, "fsyncreffiles"

    invoke-virtual {p1, v0, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labcd/yH;->Hw:Z

    return-void
.end method

.method synthetic constructor <init>(Labcd/gE;Labcd/yH;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/yH;-><init>(Labcd/gE;)V

    return-void
.end method


# virtual methods
.method DW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/yH;->FH:Z

    return v0
.end method

.method FH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/yH;->Hw:Z

    return v0
.end method

.method j6()I
    .registers 2

    iget v0, p0, Labcd/yH;->DW:I

    return v0
.end method
