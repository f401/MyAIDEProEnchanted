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
    .registers 6

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object p2

    const-string v0, "GIT_SSH"

    invoke-virtual {p2, v0}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "plink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2f

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v2, "tortoiseplink"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2f

    const-string p2, "-batch"

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object p2, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {p2}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object p2

    invoke-virtual {p2}, Labcd/HJ;->v5()I

    move-result p2

    if-lez p2, :cond_56

    if-eqz v0, :cond_40

    const-string p2, "-P"

    goto :goto_42

    :cond_40
    const-string p2, "-p"

    :goto_42
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {p2}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object p2

    invoke-virtual {p2}, Labcd/HJ;->v5()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object p2, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {p2}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object p2

    invoke-virtual {p2}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8c

    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    invoke-virtual {v0}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    invoke-virtual {v0}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_96

    :cond_8c
    iget-object p2, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    invoke-virtual {p2}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object p2

    invoke-virtual {p2}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object p2

    :goto_96
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/ProcessBuilder;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    iget-object p2, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    iget-object p2, p2, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {p2}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_c6

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Labcd/tJ$a;->j6:Labcd/tJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIT_DIR"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c6
    :try_start_c6
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ca} :catch_cb

    return-object p1

    :catch_cb
    move-exception p1

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
