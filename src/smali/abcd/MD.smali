.class abstract Labcd/MD;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/QD;


# instance fields
.field private final DW:Z

.field private j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/MD;->j6:Ljava/util/List;

    iput-boolean p1, p0, Labcd/MD;->DW:Z

    return-void
.end method


# virtual methods
.method protected abstract DW(C)Z
.end method

.method public j6(C)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Labcd/MD;->DW(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/MD;->j6:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/OD;->j6:Ljava/util/List;

    goto :goto_0
.end method

.method public final j6(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/MD;->j6:Ljava/util/List;

    if-nez v0, :cond_0

    iput-object p1, p0, Labcd/MD;->j6:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->propertyIsAlreadyNonNull:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6()Z
    .registers 2

    iget-boolean v0, p0, Labcd/MD;->DW:Z

    return v0
.end method
