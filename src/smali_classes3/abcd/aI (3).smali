.class public abstract Labcd/aI;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/iI;


# instance fields
.field private DW:Z

.field private FH:Ljava/io/Writer;

.field private j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Labcd/aI;->j6:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final DW()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/aI;->j6:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public FH()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/aI;->j6:Ljava/util/Map;

    return-object v0
.end method

.method protected VH()Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Labcd/aI;->FH:Ljava/io/Writer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, v0}, Labcd/aI;->j6(Ljava/io/Writer;)V

    :cond_c
    iget-object v0, p0, Labcd/aI;->FH:Ljava/io/Writer;

    return-object v0
.end method

.method public final getRef(Ljava/lang/String;)Labcd/ME;
    .registers 3

    iget-object v0, p0, Labcd/aI;->j6:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/ME;

    return-object p1
.end method

.method protected gn()V
    .registers 3

    iget-boolean v0, p0, Labcd/aI;->DW:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/aI;->DW:Z

    return-void

    :cond_8
    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->onlyOneOperationCallPerConnectionIsSupported:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/aI;->FH:Ljava/io/Writer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method protected j6(Ljava/io/Writer;)V
    .registers 3

    iget-object v0, p0, Labcd/aI;->FH:Ljava/io/Writer;

    if-nez v0, :cond_7

    iput-object p1, p0, Labcd/aI;->FH:Ljava/io/Writer;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->writerAlreadyInitialized:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected j6(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Labcd/aI;->j6:Ljava/util/Map;

    return-void
.end method
