.class public Lorg/codehaus/groovy/ast/GenericsType;
.super Lorg/codehaus/groovy/ast/ASTNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/ast/GenericsType$GenericsTypeMatcher;
    }
.end annotation


# instance fields
.field private EQ:Z

.field private final VH:Lorg/codehaus/groovy/ast/ClassNode;

.field private final Zo:[Lorg/codehaus/groovy/ast/ClassNode;

.field private gn:Lorg/codehaus/groovy/ast/ClassNode;

.field private tp:Z

.field private u7:Ljava/lang/String;

.field private we:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/codehaus/groovy/ast/GenericsType;-><init>(Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 5

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/ASTNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/ast/GenericsType;->gn:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->gW()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->XL()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->u7:Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p3, p0, Lorg/codehaus/groovy/ast/GenericsType;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->gW()Z

    move-result p1

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/GenericsType;->EQ:Z

    return-void
.end method

.method private j6(Ljava/util/Set;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->u7:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->we:Z

    if-eqz v0, :cond_10

    const-string v0, "?"

    goto :goto_20

    :cond_10
    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->gn:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_1e

    iget-boolean v1, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    if-eqz v1, :cond_19

    goto :goto_1e

    :cond_19
    invoke-direct {p0, v0, p1}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->u7:Ljava/lang/String;

    :goto_20
    iget-object v1, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v1, :cond_85

    iget-boolean v2, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_46

    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_46

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->gW()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Object"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_a3

    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " extends "

    :goto_50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_57
    iget-object v1, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    array-length v1, v1

    if-ge v3, v1, :cond_a3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    aget-object v0, v0, v3

    invoke-direct {p0, v0, p1}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    iget-object v1, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    array-length v1, v1

    if-ge v3, v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " & "

    goto :goto_50

    :cond_85
    iget-object v1, p0, Lorg/codehaus/groovy/ast/GenericsType;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v1, :cond_a3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " super "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a3
    :goto_a3
    return-object v0
.end method

.method private j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/groovy/ast/ClassNode;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->yS()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->VH()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    :cond_1d
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    instance-of v1, v1, Lorg/codehaus/groovy/ast/InnerClassNode;

    if-eqz v1, :cond_70

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    check-cast v1, Lorg/codehaus/groovy/ast/InnerClassNode;

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/InnerClassNode;->KD()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->EQ()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_52

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->BT()Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_52

    :cond_44
    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/InnerClassNode;->KD()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v1, v4}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5a

    :cond_52
    :goto_52
    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/InnerClassNode;->KD()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_70
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :goto_75
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->gn()[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v1

    if-eqz v1, :cond_d8

    array-length v3, v1

    if-nez v3, :cond_7f

    goto :goto_d8

    :cond_7f
    array-length v3, v1

    const/4 v4, 0x0

    if-ne v3, v2, :cond_9e

    aget-object v2, v1, v4

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/GenericsType;->gn()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.Object"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    aget-object p1, v1, v4

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9e
    const-string p1, "<"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a3
    array-length p1, v1

    if-ge v4, p1, :cond_ce

    if-eqz v4, :cond_ad

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ad
    aget-object p1, v1, v4

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->gn()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/GenericsType;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_c8

    :cond_c4
    invoke-direct {p1, p2}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    :goto_c8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    :cond_ce
    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d8
    :goto_d8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/GenericsType;->we:Z

    return-void
.end method

.method public VH()[Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public Zo()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public gn()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    return v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/ast/GenericsType;->u7:Ljava/lang/String;

    return-void
.end method

.method public j6(Z)V
    .registers 3

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->gn:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
