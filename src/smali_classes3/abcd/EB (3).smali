.class public Labcd/EB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Labcd/WH;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final FH:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/EB;->FH:Ljava/util/Collection;

    return-void
.end method

.method private j6(Labcd/YH;)Labcd/WH;
    .registers 6

    invoke-virtual {p1}, Labcd/YH;->VH()Labcd/yE;

    move-result-object v0

    invoke-virtual {p1}, Labcd/YH;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/YH;->Hw()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    new-instance p1, Labcd/WH;

    sget-object v2, Labcd/XH;->j6:Labcd/XH;

    invoke-direct {p1, v2, v1, v0}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;)V

    return-object p1

    :cond_16
    invoke-virtual {p1}, Labcd/YH;->DW()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    new-instance p1, Labcd/WH;

    sget-object v2, Labcd/XH;->DW:Labcd/XH;

    invoke-direct {p1, v2, v1, v0}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;)V

    return-object p1

    :cond_24
    invoke-virtual {p1}, Labcd/YH;->tp()Labcd/UE;

    move-result-object p1

    if-nez p1, :cond_32

    new-instance p1, Labcd/WH;

    sget-object v2, Labcd/XH;->DW:Labcd/XH;

    invoke-direct {p1, v2, v1, v0}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;)V

    return-object p1

    :cond_32
    const-string v2, "HEAD"

    invoke-virtual {p1, v2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object p1

    if-nez p1, :cond_42

    new-instance v2, Labcd/WH;

    sget-object v3, Labcd/XH;->DW:Labcd/XH;

    invoke-direct {v2, v3, v1, v0, p1}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    return-object v2

    :cond_42
    invoke-virtual {p1, v0}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v2

    if-nez v2, :cond_50

    new-instance v2, Labcd/WH;

    sget-object v3, Labcd/XH;->Hw:Labcd/XH;

    invoke-direct {v2, v3, v1, v0, p1}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    return-object v2

    :cond_50
    new-instance v2, Labcd/WH;

    sget-object v3, Labcd/XH;->FH:Labcd/XH;

    invoke-direct {v2, v3, v1, v0, p1}, Labcd/WH;-><init>(Labcd/XH;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    return-object v2
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/WH;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/dB;->j6()V

    :try_start_3
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-static {v0}, Labcd/YH;->j6(Labcd/UE;)Labcd/YH;

    move-result-object v0

    iget-object v1, p0, Labcd/EB;->FH:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Labcd/EB;->FH:Ljava/util/Collection;

    invoke-static {v1}, Labcd/hK;->DW(Ljava/util/Collection;)Labcd/jK;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/YH;->j6(Labcd/jK;)Labcd/YH;

    :cond_1a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_1f
    invoke-virtual {v0}, Labcd/YH;->EQ()Z

    move-result v2

    if-nez v2, :cond_26

    return-object v1

    :cond_26
    invoke-direct {p0, v0}, Labcd/EB;->j6(Labcd/YH;)Labcd/WH;

    move-result-object v2

    invoke-virtual {v2}, Labcd/WH;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_31} :catch_3d
    .catch Labcd/XC; {:try_start_3 .. :try_end_31} :catch_32

    goto :goto_1f

    :catch_32
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3d
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_49

    :goto_48
    throw v1

    :goto_49
    goto :goto_48
.end method
