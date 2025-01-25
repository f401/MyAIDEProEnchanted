.class Labcd/nJ;
.super Labcd/DJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:[Ljava/lang/String;

.field private final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Labcd/DJ;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bundle"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "file"

    aput-object v2, v0, v1

    iput-object v0, p0, Labcd/nJ;->DW:[Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/nJ;->FH:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public DW(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Labcd/jJ;
    .registers 7

    const-string v0, "bundle"

    invoke-virtual {p1}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance p3, Labcd/oJ;

    invoke-virtual {p2}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p3, p2, p1, v0}, Labcd/oJ;-><init>(Labcd/UE;Labcd/HJ;Ljava/io/File;)V

    return-object p3

    :cond_25
    sget-object v0, Labcd/zJ;->Mr:Labcd/DJ;

    invoke-virtual {v0, p1, p2, p3}, Labcd/DJ;->DW(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Labcd/jJ;

    move-result-object p1

    return-object p1
.end method

.method public DW()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->transportProtoBundleFile:Ljava/lang/String;

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

    invoke-virtual {p0}, Labcd/nJ;->v5()Ljava/util/Set;

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

    iget-object v0, p0, Labcd/nJ;->FH:Ljava/util/Set;

    return-object v0
.end method
