.class public Labcd/aO;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Labcd/eO;


# instance fields
.field DW:Labcd/WM;

.field FH:Labcd/UM;

.field Hw:Labcd/YN;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Labcd/eO;->j6:Labcd/eO;

    sput-object v0, Labcd/aO;->j6:Labcd/eO;

    return-void
.end method

.method public constructor <init>(Labcd/YN;Labcd/UM;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/aO;->Hw:Labcd/YN;

    iput-object p2, p0, Labcd/aO;->FH:Labcd/UM;

    invoke-direct {p0}, Labcd/aO;->DW()Labcd/WM;

    move-result-object v0

    iput-object v0, p0, Labcd/aO;->DW:Labcd/WM;

    return-void
.end method

.method private DW()Labcd/WM;
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/aO;->FH:Labcd/UM;

    invoke-virtual {v0}, Labcd/UM;->v5()Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/WM;->j6(Ljava/lang/Object;)Labcd/WM;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/XN;

    const-string v2, "Malformed content."

    invoke-direct {v1, v2, v0}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/XN;

    const-string v2, "Malformed content."

    invoke-direct {v1, v2, v0}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public j6()Labcd/UM;
    .registers 2

    iget-object v0, p0, Labcd/aO;->FH:Labcd/UM;

    return-object v0
.end method
