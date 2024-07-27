.class Labcd/_J$e;
.super Labcd/_J$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/_J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field final FH:Labcd/UE;


# direct methods
.method constructor <init>(Labcd/_J$a;Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/_J$d;-><init>(Labcd/_J$a;)V

    iput-object p2, p0, Labcd/_J$e;->FH:Labcd/UE;

    return-void
.end method

.method private j6(Labcd/UD;Ljava/io/File;)V
    .registers 5

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p1, v0}, Labcd/UD;->j6(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
.end method


# virtual methods
.method DW()Labcd/UD;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/_J$d;->DW:Labcd/_J$a;

    if-eqz v0, :cond_2

    invoke-super {p0}, Labcd/_J$d;->DW()Labcd/UD;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Labcd/UD;

    invoke-direct {v0}, Labcd/UD;-><init>()V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Labcd/_J$e;->FH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v3

    iget-object v0, p0, Labcd/_J$e;->FH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v4, Labcd/jE;->j6:Labcd/gE$b;

    invoke-virtual {v0, v4}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jE;

    invoke-virtual {v0}, Labcd/jE;->DW()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "~/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v1, v0}, Labcd/_J$e;->j6(Labcd/UD;Ljava/io/File;)V

    :cond_0
    iget-object v0, p0, Labcd/_J$e;->FH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    const-string v4, "info/exclude"

    invoke-virtual {v3, v0, v4}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Labcd/_J$e;->j6(Labcd/UD;Ljava/io/File;)V

    invoke-virtual {v1}, Labcd/UD;->j6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, v2

    :cond_1
    return-object v1

    :cond_2
    new-instance v0, Labcd/UD;

    invoke-direct {v0}, Labcd/UD;-><init>()V

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v2, v0}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method
