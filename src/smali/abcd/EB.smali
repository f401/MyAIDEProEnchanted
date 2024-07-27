.class public Labcd/EB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Labcd/WH;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final FH:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/EB;->FH:Ljava/util/Collection;

    return-void
.end method

.method private j6(Labcd/YH;)Labcd/WH;
    .registers 7

    invoke-virtual {p1}, Labcd/YH;->VH()Labcd/yE;

    move-result-object v1

    invoke-virtual {p1}, Labcd/YH;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Labcd/YH;->Hw()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Labcd/WH;

    sget-object v3, Labcd/XH;->j6:Labcd/XH;

    invoke-direct {v0, v3, v2, v1}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Labcd/YH;->DW()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Labcd/WH;

    sget-object v3, Labcd/XH;->DW:Labcd/XH;

    invoke-direct {v0, v3, v2, v1}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Labcd/YH;->tp()Labcd/UE;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Labcd/WH;

    sget-object v3, Labcd/XH;->DW:Labcd/XH;

    invoke-direct {v0, v3, v2, v1}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;)V

    goto :goto_0

    :cond_2
    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v0, Labcd/WH;

    sget-object v4, Labcd/XH;->DW:Labcd/XH;

    invoke-direct {v0, v4, v2, v1, v3}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Labcd/WH;

    sget-object v4, Labcd/XH;->Hw:Labcd/XH;

    invoke-direct {v0, v4, v2, v1, v3}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    goto :goto_0

    :cond_4
    new-instance v0, Labcd/WH;

    sget-object v4, Labcd/XH;->FH:Labcd/XH;

    invoke-direct {v0, v4, v2, v1, v3}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/EB;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/WH;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/dB;->j6()V

    :try_start_0
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-static {v0}, Labcd/YH;->j6(Labcd/UE;)Labcd/YH;

    move-result-object v0

    iget-object v1, p0, Labcd/EB;->FH:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/EB;->FH:Ljava/util/Collection;

    invoke-static {v1}, Labcd/hK;->DW(Ljava/util/Collection;)Labcd/jK;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/YH;->j6(Labcd/jK;)Labcd/YH;

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {v0}, Labcd/YH;->EQ()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, v0}, Labcd/EB;->j6(Labcd/YH;)Labcd/WH;

    move-result-object v2

    invoke-virtual {v2}, Labcd/WH;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/XC; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
