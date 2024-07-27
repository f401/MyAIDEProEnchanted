.class public Labcd/WI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private DW:Z

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/lang/String;

.field private j6:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Labcd/WI;->j6:Z

    iput-boolean v0, p0, Labcd/WI;->DW:Z

    const-string v0, "HEAD"

    iput-object v0, p0, Labcd/WI;->FH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/WI;->Hw:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Labcd/WI;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/WI;->FH()Z

    move-result v0

    iput-boolean v0, p0, Labcd/WI;->j6:Z

    invoke-virtual {p1}, Labcd/WI;->Hw()Z

    move-result v0

    iput-boolean v0, p0, Labcd/WI;->DW:Z

    invoke-virtual {p1}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/WI;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/WI;->Hw:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Labcd/WI;->j6:Z

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Labcd/WI;->Hw:Ljava/lang/String;

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidWildcards:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lez v1, :cond_6

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/WI;->FH:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/WI;->Hw:Ljava/lang/String;

    iget-object v0, p0, Labcd/WI;->FH:Ljava/lang/String;

    invoke-static {v0}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/WI;->Hw:Ljava/lang/String;

    invoke-static {v0}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Labcd/WI;->DW:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Labcd/WI;->FH:Ljava/lang/String;

    invoke-static {v0}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Labcd/WI;->Hw:Ljava/lang/String;

    invoke-static {v0}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidWildcards:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v0}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-object v0, p0, Labcd/WI;->FH:Ljava/lang/String;

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidWildcards:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static FH(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_0

    const-string v0, "/*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private FH(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Labcd/WI;->Hw()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private gn(Ljava/lang/String;)Labcd/WI;
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/WI;->FH:Ljava/lang/String;

    iget-object v1, p0, Labcd/WI;->Hw:Ljava/lang/String;

    iput-boolean v4, p0, Labcd/WI;->DW:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/WI;->FH:Ljava/lang/String;

    iput-object p1, p0, Labcd/WI;->Hw:Ljava/lang/String;

    return-object p0
.end method

.method private u7(Ljava/lang/String;)Labcd/WI;
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/WI;->FH:Ljava/lang/String;

    iget-object v1, p0, Labcd/WI;->Hw:Ljava/lang/String;

    iput-boolean v4, p0, Labcd/WI;->DW:Z

    iput-object p1, p0, Labcd/WI;->FH:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/WI;->Hw:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/WI;
    .registers 3

    invoke-virtual {p0}, Labcd/WI;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/WI;

    invoke-direct {v0, p0}, Labcd/WI;-><init>(Labcd/WI;)V

    invoke-direct {v0, p1}, Labcd/WI;->u7(Ljava/lang/String;)Labcd/WI;

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/WI;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public DW(Labcd/ME;)Z
    .registers 4

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/WI;->FH(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public FH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/WI;->j6:Z

    return v0
.end method

.method public Hw()Z
    .registers 2

    iget-boolean v0, p0, Labcd/WI;->DW:Z

    return v0
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/WI;->FH(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public VH(Ljava/lang/String;)Labcd/WI;
    .registers 5

    new-instance v0, Labcd/WI;

    invoke-direct {v0, p0}, Labcd/WI;-><init>(Labcd/WI;)V

    iput-object p1, v0, Labcd/WI;->FH:Ljava/lang/String;

    iget-object v1, v0, Labcd/WI;->FH:Ljava/lang/String;

    invoke-static {v1}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Labcd/WI;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Labcd/WI;->FH:Ljava/lang/String;

    invoke-static {v1}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, v0, Labcd/WI;->Hw:Ljava/lang/String;

    invoke-static {v2}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->destinationIsNotAWildcard:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->sourceDestinationMustMatch:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Zo(Ljava/lang/String;)Labcd/WI;
    .registers 5

    new-instance v0, Labcd/WI;

    invoke-direct {v0, p0}, Labcd/WI;-><init>(Labcd/WI;)V

    iput-object p1, v0, Labcd/WI;->Hw:Ljava/lang/String;

    iget-object v1, v0, Labcd/WI;->Hw:Ljava/lang/String;

    invoke-static {v1}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Labcd/WI;->FH:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Labcd/WI;->FH:Ljava/lang/String;

    invoke-static {v1}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, v0, Labcd/WI;->Hw:Ljava/lang/String;

    invoke-static {v2}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->sourceIsNotAWildcard:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->sourceDestinationMustMatch:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/WI;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/WI;

    invoke-virtual {p0}, Labcd/WI;->FH()Z

    move-result v1

    invoke-virtual {p1}, Labcd/WI;->FH()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Labcd/WI;->Hw()Z

    move-result v1

    invoke-virtual {p1}, Labcd/WI;->Hw()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/WI;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/WI;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    invoke-virtual {p0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public j6(Labcd/ME;)Labcd/WI;
    .registers 3

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/WI;->DW(Ljava/lang/String;)Labcd/WI;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Labcd/WI;
    .registers 3

    invoke-virtual {p0}, Labcd/WI;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/WI;

    invoke-direct {v0, p0}, Labcd/WI;-><init>(Labcd/WI;)V

    invoke-direct {v0, p1}, Labcd/WI;->gn(Ljava/lang/String;)Labcd/WI;

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Labcd/WI;
    .registers 5

    invoke-static {p1}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p2}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Labcd/WI;

    invoke-direct {v0, p0}, Labcd/WI;-><init>(Labcd/WI;)V

    invoke-static {p1}, Labcd/WI;->FH(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Labcd/WI;->DW:Z

    iput-object p1, v0, Labcd/WI;->FH:Ljava/lang/String;

    iput-object p2, v0, Labcd/WI;->Hw:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->sourceDestinationMustMatch:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Z)Labcd/WI;
    .registers 3

    new-instance v0, Labcd/WI;

    invoke-direct {v0, p0}, Labcd/WI;-><init>(Labcd/WI;)V

    iput-boolean p1, v0, Labcd/WI;->j6:Z

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/WI;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/WI;->FH()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/WI;->FH(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
