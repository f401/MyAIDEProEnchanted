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
    .registers 4

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_b
    invoke-virtual {p1, v0}, Labcd/UD;->j6(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_12

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_17

    :catchall_12
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method DW()Labcd/UD;
    .registers 7

    iget-object v0, p0, Labcd/_J$d;->DW:Labcd/_J$a;

    if-eqz v0, :cond_10

    invoke-super {p0}, Labcd/_J$d;->DW()Labcd/UD;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Labcd/UD;

    invoke-direct {v0}, Labcd/UD;-><init>()V

    goto :goto_15

    :cond_10
    new-instance v0, Labcd/UD;

    invoke-direct {v0}, Labcd/UD;-><init>()V

    :cond_15
    :goto_15
    iget-object v1, p0, Labcd/_J$e;->FH:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v1

    iget-object v2, p0, Labcd/_J$e;->FH:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v2

    sget-object v3, Labcd/jE;->j6:Labcd/gE$b;

    invoke-virtual {v2, v3}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/jE;

    invoke-virtual {v2}, Labcd/jE;->DW()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4d

    const-string v4, "~/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v1}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_4a

    :cond_46
    invoke-virtual {v1, v3, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    :goto_4a
    invoke-direct {p0, v0, v2}, Labcd/_J$e;->j6(Labcd/UD;Ljava/io/File;)V

    :cond_4d
    iget-object v2, p0, Labcd/_J$e;->FH:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v2

    const-string v4, "info/exclude"

    invoke-virtual {v1, v2, v4}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/_J$e;->j6(Labcd/UD;Ljava/io/File;)V

    invoke-virtual {v0}, Labcd/UD;->j6()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_67

    move-object v0, v3

    :cond_67
    return-object v0
.end method
