.class Labcd/PK;
.super Labcd/QK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/QK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile FH:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/QK;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Labcd/gE;Labcd/pK;)Labcd/FG;
    .registers 7

    new-instance v0, Labcd/FG;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object v2

    const-string v3, ".gitconfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p2}, Labcd/FG;-><init>(Labcd/gE;Ljava/io/File;Labcd/pK;)V

    return-object v0
.end method

.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/PK;->FH:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/PK;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v0, Labcd/QK;->DW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/PK;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/PK;->FH:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "localhost"

    iput-object v0, p0, Labcd/PK;->FH:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(J)I
    .registers 6

    invoke-virtual {p0}, Labcd/QK;->Hw()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    return v0
.end method

.method public j6()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public j6(Labcd/gE;Labcd/pK;)Labcd/FG;
    .registers 6

    invoke-virtual {p2}, Labcd/pK;->FH()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Labcd/OK;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Labcd/OK;-><init>(Labcd/PK;Ljava/io/File;Labcd/pK;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/FG;

    const-string v2, "etc"

    invoke-virtual {p2, v1, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "gitconfig"

    invoke-virtual {p2, v1, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Labcd/FG;-><init>(Labcd/gE;Ljava/io/File;Labcd/pK;)V

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
