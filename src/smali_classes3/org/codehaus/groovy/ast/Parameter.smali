.class public Lorg/codehaus/groovy/ast/Parameter;
.super Lorg/codehaus/groovy/ast/AnnotatedNode;

# interfaces
.implements Lorg/codehaus/groovy/ast/Variable;


# static fields
.field public static final u7:[Lorg/codehaus/groovy/ast/Parameter;


# instance fields
.field private final EQ:Ljava/lang/String;

.field private J0:Z

.field private J8:Z

.field private QX:Lorg/codehaus/groovy/ast/ClassNode;

.field private Ws:Z

.field private tp:Lorg/codehaus/groovy/ast/ClassNode;

.field private we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/groovy/ast/Parameter;

    sput-object v0, Lorg/codehaus/groovy/ast/Parameter;->u7:[Lorg/codehaus/groovy/ast/Parameter;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/ast/ClassNode;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/AnnotatedNode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/Parameter;->Ws:Z

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object v1, p0, Lorg/codehaus/groovy/ast/Parameter;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    iput-object p2, p0, Lorg/codehaus/groovy/ast/Parameter;->EQ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/ast/Parameter;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    iput-object p1, p0, Lorg/codehaus/groovy/ast/Parameter;->QX:Lorg/codehaus/groovy/ast/ClassNode;

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/Parameter;->J0:Z

    return-void
.end method


# virtual methods
.method public DW(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 4

    iput-object p1, p0, Lorg/codehaus/groovy/ast/Parameter;->tp:Lorg/codehaus/groovy/ast/ClassNode;

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/Parameter;->we:Z

    sget-object v1, Lorg/codehaus/groovy/ast/ClassHelper;->FH:Lorg/codehaus/groovy/ast/ClassNode;

    if-ne p1, v1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/Parameter;->we:Z

    return-void
.end method

.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/Parameter;->J8:Z

    return-void
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/Parameter;->J0:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/Parameter;->EQ:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/codehaus/groovy/ast/ClassNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/ast/Parameter;->tp:Lorg/codehaus/groovy/ast/ClassNode;

    return-object v0
.end method

.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/groovy/ast/Parameter;->we:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/Parameter;->EQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/ast/Parameter;->tp:Lorg/codehaus/groovy/ast/ClassNode;

    if-nez v1, :cond_1d

    const-string v1, ""

    goto :goto_34

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codehaus/groovy/ast/Parameter;->tp:Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v2}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasDefaultValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/Parameter;->Zo()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
