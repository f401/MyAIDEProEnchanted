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

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->XL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->u7:Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p3, p0, Lorg/codehaus/groovy/ast/GenericsType;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->gW()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->EQ:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Ljava/util/Set;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->u7:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->we:Z

    if-eqz v0, :cond_2

    const-string v0, "?"

    :goto_0
    iget-object v2, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    if-eqz v3, :cond_5

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/ClassNode;->gW()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Object"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->gn:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lorg/codehaus/groovy/ast/GenericsType;->tp:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->u7:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, p1}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " extends "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_2
    iget-object v2, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/codehaus/groovy/ast/GenericsType;->Zo:[Lorg/codehaus/groovy/ast/ClassNode;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " & "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lorg/codehaus/groovy/ast/GenericsType;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " super "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/groovy/ast/GenericsType;->VH:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/groovy/ast/ClassNode;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->yS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->VH()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->gn()[Lorg/codehaus/groovy/ast/GenericsType;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    instance-of v0, v0, Lorg/codehaus/groovy/ast/InnerClassNode;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/ast/InnerClassNode;

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/InnerClassNode;->KD()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->EQ()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->BT()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/InnerClassNode;->KD()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/InnerClassNode;->KD()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, v4}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Lorg/codehaus/groovy/ast/ClassNode;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    array-length v0, v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/GenericsType;->gn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "java.lang.Object"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/GenericsType;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, "<"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_3
    array-length v1, v3

    if-ge v0, v1, :cond_9

    if-eqz v0, :cond_7

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    aget-object v1, v3, v0

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/GenericsType;->gn()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/GenericsType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/GenericsType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-direct {v1, p2}, Lorg/codehaus/groovy/ast/GenericsType;->j6(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
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
