.class public Lorg/codehaus/groovy/ast/MethodNode;
.super Lorg/codehaus/groovy/ast/AnnotatedNode;

# interfaces
.implements Lgroovyjarjarasm/asm/Opcodes;


# instance fields
.field private EQ:Lorg/codehaus/groovy/ast/ClassNode;

.field private J0:Z

.field private J8:Lorg/codehaus/groovy/ast/stmt/Statement;

.field private Mr:Z

.field private QX:Lorg/codehaus/groovy/ast/VariableScope;

.field U2:Ljava/lang/String;

.field private Ws:Z

.field private final XL:[Lorg/codehaus/groovy/ast/ClassNode;

.field private final aM:Z

.field private j3:[Lorg/codehaus/groovy/ast/GenericsType;

.field private tp:I

.field private final u7:Ljava/lang/String;

.field private we:[Lorg/codehaus/groovy/ast/Parameter;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;[Lorg/codehaus/groovy/ast/Parameter;[Lorg/codehaus/groovy/ast/ClassNode;Lorg/codehaus/groovy/ast/stmt/Statement;)V
    .registers 9

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/AnnotatedNode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->J0:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/groovy/ast/MethodNode;->j3:[Lorg/codehaus/groovy/ast/GenericsType;

    iput-object p1, p0, Lorg/codehaus/groovy/ast/MethodNode;->u7:Ljava/lang/String;

    iput p2, p0, Lorg/codehaus/groovy/ast/MethodNode;->tp:I

    iput-object p6, p0, Lorg/codehaus/groovy/ast/MethodNode;->J8:Lorg/codehaus/groovy/ast/stmt/Statement;

    invoke-virtual {p0, p3}, Lorg/codehaus/groovy/ast/MethodNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    new-instance p2, Lorg/codehaus/groovy/ast/VariableScope;

    invoke-direct {p2}, Lorg/codehaus/groovy/ast/VariableScope;-><init>()V

    invoke-virtual {p0, p2}, Lorg/codehaus/groovy/ast/MethodNode;->j6(Lorg/codehaus/groovy/ast/VariableScope;)V

    invoke-virtual {p0, p4}, Lorg/codehaus/groovy/ast/MethodNode;->j6([Lorg/codehaus/groovy/ast/Parameter;)V

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->Mr:Z

    iput-object p5, p0, Lorg/codehaus/groovy/ast/MethodNode;->XL:[Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz p1, :cond_2c

    const-string p2, "<clinit>"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->aM:Z

    return-void
.end method

.method private static FH(Lorg/codehaus/groovy/ast/ClassNode;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->yS()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->yS()Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->VH()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object p0

    goto :goto_8

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    if-ge v0, v1, :cond_36

    const-string p0, "[]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private J0()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->U2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DW(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/MethodNode;->J0()V

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->Ws:Z

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne v1, p1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->Ws:Z

    iput-object p1, p0, Lorg/codehaus/groovy/ast/MethodNode;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    if-nez p1, :cond_17

    sget-object p1, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p1, p0, Lorg/codehaus/groovy/ast/MethodNode;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    :cond_17
    return-void
.end method

.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/MethodNode;->Mr:Z

    return-void
.end method

.method public EQ()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->U2:Ljava/lang/String;

    if-nez v0, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/MethodNode;->u7:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/codehaus/groovy/ast/MethodNode;->we:[Lorg/codehaus/groovy/ast/Parameter;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/codehaus/groovy/ast/MethodNode;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/MethodNode;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2e
    iget-object v2, p0, Lorg/codehaus/groovy/ast/MethodNode;->we:[Lorg/codehaus/groovy/ast/Parameter;

    array-length v2, v2

    if-ge v1, v2, :cond_4c

    if-lez v1, :cond_3a

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    iget-object v2, p0, Lorg/codehaus/groovy/ast/MethodNode;->we:[Lorg/codehaus/groovy/ast/Parameter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/Parameter;->getType()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/ast/MethodNode;->FH(Lorg/codehaus/groovy/ast/ClassNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_4c
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->U2:Ljava/lang/String;

    :cond_57
    iget-object v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->U2:Ljava/lang/String;

    return-object v0
.end method

.method public VH()[Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->XL:[Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public Zo()Lorg/codehaus/groovy/ast/stmt/Statement;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->J8:Lorg/codehaus/groovy/ast/stmt/Statement;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public gn()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->tp:I

    return v0
.end method

.method public j6(Lorg/codehaus/groovy/ast/VariableScope;)V
    .registers 3

    iput-object p1, p0, Lorg/codehaus/groovy/ast/MethodNode;->QX:Lorg/codehaus/groovy/ast/VariableScope;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/MethodNode;->we()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/ast/VariableScope;->j6(Z)V

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/ast/stmt/Statement;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/ast/MethodNode;->J8:Lorg/codehaus/groovy/ast/stmt/Statement;

    return-void
.end method

.method public j6([Lorg/codehaus/groovy/ast/GenericsType;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/MethodNode;->J0()V

    iput-object p1, p0, Lorg/codehaus/groovy/ast/MethodNode;->j3:[Lorg/codehaus/groovy/ast/GenericsType;

    return-void
.end method

.method public j6([Lorg/codehaus/groovy/ast/Parameter;)V
    .registers 7

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/MethodNode;->J0()V

    new-instance v0, Lorg/codehaus/groovy/ast/VariableScope;

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/VariableScope;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/ast/MethodNode;->we:[Lorg/codehaus/groovy/ast/Parameter;

    if-eqz p1, :cond_2b

    array-length v1, p1

    if-lez v1, :cond_2b

    array-length v1, p1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2b

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/codehaus/groovy/ast/Parameter;->Zo()Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/codehaus/groovy/ast/MethodNode;->J0:Z

    :cond_1e
    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/MethodNode;->we()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/codehaus/groovy/ast/Parameter;->DW(Z)V

    invoke-virtual {v0, v3}, Lorg/codehaus/groovy/ast/VariableScope;->j6(Lorg/codehaus/groovy/ast/Variable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2b
    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/ast/MethodNode;->j6(Lorg/codehaus/groovy/ast/VariableScope;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodNode@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/MethodNode;->EQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->EQ:Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public u7()[Lorg/codehaus/groovy/ast/Parameter;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->we:[Lorg/codehaus/groovy/ast/Parameter;

    return-object v0
.end method

.method public we()Z
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/ast/MethodNode;->tp:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
