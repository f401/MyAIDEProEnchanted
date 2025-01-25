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

    const-string v0, "unable to get DER object"

    :try_start_2
    invoke-virtual {p0}, Labcd/gM;->j6()Labcd/EL;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v1

    new-instance v2, Labcd/DL;

    invoke-direct {v2, v0, v1}, Labcd/DL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_e
    move-exception v1

    new-instance v2, Labcd/DL;

    invoke-direct {v2, v0, v1}, Labcd/DL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public j6()Labcd/EL;
    .registers 4

    :try_start_0
    new-instance v0, Labcd/fM;

    iget-object v1, p0, Labcd/gM;->j6:Labcd/JL;

    invoke-virtual {v1}, Labcd/JL;->DW()Labcd/rL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/fM;-><init>(Labcd/rL;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Labcd/tL;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/tL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
