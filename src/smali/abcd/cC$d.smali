.class Labcd/cC$d;
.super Labcd/cC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final DW:Labcd/_J;

.field private FH:Ljava/lang/String;

.field private Hw:Labcd/_J;

.field private final j6:Labcd/YJ;


# direct methods
.method constructor <init>(Labcd/_J;)V
    .registers 4

    invoke-direct {p0}, Labcd/cC;-><init>()V

    new-instance v0, Labcd/YJ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/YJ;-><init>(Labcd/IE;)V

    iput-object v0, p0, Labcd/cC$d;->j6:Labcd/YJ;

    iput-object p1, p0, Labcd/cC$d;->DW:Labcd/_J;

    return-void
.end method

.method static synthetic j6(Labcd/cC$d;)Labcd/_J;
    .registers 2

    iget-object v0, p0, Labcd/cC$d;->Hw:Labcd/_J;

    return-object v0
.end method

.method private j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/cC$d;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/cC$d;->DW:Labcd/_J;

    invoke-virtual {v0}, Labcd/_J;->EQ()V

    iget-object v0, p0, Labcd/cC$d;->j6:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->J8()V

    iget-object v0, p0, Labcd/cC$d;->j6:Labcd/YJ;

    iget-object v1, p0, Labcd/cC$d;->DW:Labcd/_J;

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v0, p0, Labcd/cC$d;->j6:Labcd/YJ;

    invoke-static {p1}, Labcd/fK;->j6(Ljava/lang/String;)Labcd/fK;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/jK;)V

    iput-object p1, p0, Labcd/cC$d;->FH:Ljava/lang/String;

    iget-object v0, p0, Labcd/cC$d;->j6:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/cC$d;->j6:Labcd/YJ;

    const/4 v1, 0x0

    const-class v2, Labcd/_J;

    invoke-virtual {v0, v1, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/_J;

    iput-object v0, p0, Labcd/cC$d;->Hw:Labcd/_J;

    iget-object v0, p0, Labcd/cC$d;->Hw:Labcd/_J;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;Labcd/yE;)J
    .registers 5

    invoke-direct {p0, p1}, Labcd/cC$d;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/cC$d;->Hw:Labcd/_J;

    invoke-virtual {v0}, Labcd/_J;->j3()J

    move-result-wide v0

    return-wide v0
.end method

.method public j6(Ljava/lang/String;Labcd/yE;)Labcd/FE;
    .registers 4

    invoke-direct {p0, p1}, Labcd/cC$d;->j6(Ljava/lang/String;)V

    new-instance v0, Labcd/dC;

    invoke-direct {v0, p0}, Labcd/dC;-><init>(Labcd/cC$d;)V

    return-object v0
.end method
