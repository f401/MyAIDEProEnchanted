.class public Labcd/GJ;
.super Labcd/dJ;

# interfaces
.implements Labcd/SJ;


# static fields
.field static final a8:Labcd/DJ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/EJ;

    invoke-direct {v0}, Labcd/EJ;-><init>()V

    sput-object v0, Labcd/GJ;->a8:Labcd/DJ;

    return-void
.end method

.method constructor <init>(Labcd/UE;Labcd/HJ;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/dJ;-><init>(Labcd/UE;Labcd/HJ;)V

    return-void
.end method


# virtual methods
.method public QX()Labcd/nI;
    .registers 3

    new-instance v0, Labcd/GJ$a;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Labcd/GJ$a;-><init>(Labcd/GJ;Ljava/lang/String;)V

    new-instance v1, Labcd/OJ;

    invoke-direct {v1, p0, v0}, Labcd/OJ;-><init>(Labcd/SJ;Labcd/RJ;)V

    invoke-virtual {v0}, Labcd/GJ$a;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/aI;->j6(Ljava/util/Map;)V

    return-object v1
.end method

.method public XL()Labcd/LI;
    .registers 3

    new-instance v0, Labcd/GJ$a;

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Labcd/GJ$a;-><init>(Labcd/GJ;Ljava/lang/String;)V

    new-instance v1, Labcd/QJ;

    invoke-direct {v1, p0, v0}, Labcd/QJ;-><init>(Labcd/SJ;Labcd/RJ;)V

    invoke-virtual {v0}, Labcd/GJ$a;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/aI;->j6(Ljava/util/Map;)V

    return-object v1
.end method

.method j3()Lcom/jcraft/jsch/ChannelSftp;
    .registers 5

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Labcd/jJ;->gn()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Labcd/dJ;->aM()Labcd/ZI;

    move-result-object v0

    check-cast v0, Labcd/vI;

    invoke-virtual {v0}, Labcd/vI;->j6()Lcom/jcraft/jsch/Channel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Channel;->j6(I)V

    check-cast v0, Lcom/jcraft/jsch/ChannelSftp;
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
