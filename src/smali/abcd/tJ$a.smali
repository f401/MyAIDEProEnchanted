.class Labcd/tJ$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ZI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/tJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final j6:Labcd/tJ;


# direct methods
.method private constructor <init>(Labcd/tJ;)V
    .registers 2

    iput-object p1, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/tJ;Labcd/tJ$a;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/tJ$a;-><init>(Labcd/tJ;)V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 1

    return-void
.end method

.method public j6(Ljava/lang/String;I)Ljava/lang/Process;
    .registers 7

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "GIT_SSH"

    invoke-virtual {v0, v1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tortoiseplink"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-batch"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    invoke-virtual {v0}, Labcd/HJ;->v5()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v1, :cond_3

    const-string v0, "-P"

    :goto_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    invoke-virtual {v0}, Labcd/HJ;->v5()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    invoke-virtual {v0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {v1}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v1

    invoke-virtual {v1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {v1}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v1

    invoke-virtual {v1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    iget-object v1, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    iget-object v1, v1, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v1

    const-string v2, "GIT_DIR"

    iget-object v3, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    iget-object v3, v3, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "-p"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    invoke-virtual {v0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
