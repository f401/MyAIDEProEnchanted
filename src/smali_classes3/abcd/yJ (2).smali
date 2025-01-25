.class Labcd/yJ;
.super Labcd/DJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/zJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/DJ;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Labcd/jJ;
    .registers 6

    invoke-virtual {p2}, Labcd/UE;->gn()Labcd/pK;

    move-result-object p3

    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Labcd/oJ;

    invoke-direct {v0, p2, p1, p3}, Labcd/oJ;-><init>(Labcd/UE;Labcd/HJ;Ljava/io/File;)V

    return-object v0

    :cond_1f
    invoke-virtual {p2}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v0

    invoke-static {p3, v0}, Labcd/WE$a;->Hw(Ljava/io/File;Labcd/pK;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_2f

    new-instance v0, Labcd/zJ;

    invoke-direct {v0, p2, p1, p3}, Labcd/zJ;-><init>(Labcd/UE;Labcd/HJ;Ljava/io/File;)V

    return-object v0

    :cond_2f
    new-instance p2, Labcd/hD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->notFound:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Labcd/hD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p2
.end method

.method public DW()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->transportProtoLocal:Ljava/lang/String;

    return-object v0
.end method

.method public j6(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_35

    invoke-virtual {p1}, Labcd/HJ;->v5()I

    move-result p2

    if-gtz p2, :cond_35

    invoke-virtual {p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_35

    invoke-virtual {p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_35

    invoke-virtual {p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_35

    invoke-virtual {p1}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_33

    invoke-virtual {p0}, Labcd/yJ;->v5()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_35

    :cond_33
    const/4 p1, 0x1

    return p1

    :cond_35
    :goto_35
    const/4 p1, 0x0

    return p1
.end method

.method public v5()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
