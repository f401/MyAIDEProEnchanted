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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/aO;->Hw:Labcd/YN;

    iput-object p2, p0, Labcd/aO;->FH:Labcd/UM;

    invoke-direct {p0}, Labcd/aO;->DW()Labcd/WM;

    move-result-object p1

    iput-object p1, p0, Labcd/aO;->DW:Labcd/WM;

    return-void
.end method

.method private DW()Labcd/WM;
    .registers 4

    const-string v0, "Malformed content."

    :try_start_2
    iget-object v1, p0, Labcd/aO;->FH:Labcd/UM;

    invoke-virtual {v1}, Labcd/UM;->v5()Labcd/qL;

    move-result-object v1

    invoke-static {v1}, Labcd/WM;->j6(Ljava/lang/Object;)Labcd/WM;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v1

    new-instance v2, Labcd/XN;

    invoke-direct {v2, v0, v1}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_14
    move-exception v1

    new-instance v2, Labcd/XN;

    invoke-direct {v2, v0, v1}, Labcd/XN;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public j6()Labcd/UM;
    .registers 2

    iget-object v0, p0, Labcd/aO;->FH:Labcd/UM;

    return-object v0
.end method
