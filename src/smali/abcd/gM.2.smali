.class public Labcd/gM;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/qL;
.implements Labcd/IM;


# instance fields
.field private j6:Labcd/JL;


# direct methods
.method public constructor <init>(Labcd/JL;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/gM;->j6:Labcd/JL;

    return-void
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Labcd/gM;->j6()Labcd/EL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/DL;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Labcd/DL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/DL;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Labcd/DL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6()Labcd/EL;
    .registers 4

    :try_start_0
    new-instance v0, Labcd/fM;

    iget-object v1, p0, Labcd/gM;->j6:Labcd/JL;

    invoke-virtual {v1}, Labcd/JL;->DW()Labcd/rL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/fM;-><init>(Labcd/rL;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/tL;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/tL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
