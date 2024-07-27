.class public Lorg/codehaus/groovy/ast/CompileUnit;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/groovy/ast/ClassNode;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Lorg/codehaus/groovy/control/CompilerConfiguration;

.field private Hw:Lgroovy/lang/GroovyClassLoader;

.field private VH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/groovy/control/SourceUnit;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/groovy/ast/ClassNode;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/groovy/ast/InnerClassNode;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/ModuleNode;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/security/CodeSource;


# direct methods
.method public constructor <init>(Lgroovy/lang/GroovyClassLoader;Ljava/security/CodeSource;Lorg/codehaus/groovy/control/CompilerConfiguration;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->j6:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->DW:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->Zo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->VH:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->gn:Ljava/util/Map;

    iput-object p1, p0, Lorg/codehaus/groovy/ast/CompileUnit;->Hw:Lgroovy/lang/GroovyClassLoader;

    iput-object p3, p0, Lorg/codehaus/groovy/ast/CompileUnit;->FH:Lorg/codehaus/groovy/control/CompilerConfiguration;

    iput-object p2, p0, Lorg/codehaus/groovy/ast/CompileUnit;->v5:Ljava/security/CodeSource;

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Lorg/codehaus/groovy/ast/ClassNode;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->Zo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/ast/ClassNode;

    goto :goto_0
.end method

.method public j6(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 13

    invoke-virtual {p1}, Lorg/codehaus/groovy/ast/ClassNode;->SI()Lorg/codehaus/groovy/ast/ClassNode;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->DW:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/ast/ClassNode;

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_2

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ClassNode;->we()Lorg/codehaus/groovy/ast/ModuleNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ModuleNode;->Zo()Lorg/codehaus/groovy/control/SourceUnit;

    move-result-object v8

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->we()Lorg/codehaus/groovy/ast/ModuleNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/groovy/ast/ModuleNode;->Zo()Lorg/codehaus/groovy/control/SourceUnit;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid duplicate class definition of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne v8, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "The source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contains at least two definitions of the class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ClassNode;->P8()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/groovy/ast/ClassNode;->P8()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "One of the classes is an explicit generated class using the class statement, the other is a class generated from the script body based on the file name. Solutions are to change the file name or to change the class name.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {v8}, Lorg/codehaus/groovy/control/ProcessingUnit;->FH()Lorg/codehaus/groovy/control/ErrorCollector;

    move-result-object v9

    new-instance v10, Lorg/codehaus/groovy/control/messages/SyntaxErrorMessage;

    new-instance v0, Lorg/codehaus/groovy/syntax/SyntaxException;

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ASTNode;->v5()I

    move-result v2

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ASTNode;->DW()I

    move-result v3

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ASTNode;->Hw()I

    move-result v4

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ASTNode;->FH()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/groovy/syntax/SyntaxException;-><init>(Ljava/lang/String;IIII)V

    invoke-direct {v10, v0, v8}, Lorg/codehaus/groovy/control/messages/SyntaxErrorMessage;-><init>(Lorg/codehaus/groovy/syntax/SyntaxException;Lorg/codehaus/groovy/control/SourceUnit;)V

    invoke-virtual {v9, v10}, Lorg/codehaus/groovy/control/ErrorCollector;->j6(Lorg/codehaus/groovy/control/messages/Message;)V

    :cond_2
    iget-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->DW:Ljava/util/Map;

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->Zo:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->Zo:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/ast/ClassNode;

    invoke-virtual {v0, v6}, Lorg/codehaus/groovy/ast/ClassNode;->DW(Lorg/codehaus/groovy/ast/ClassNode;)V

    iget-object v0, p0, Lorg/codehaus/groovy/ast/CompileUnit;->Zo:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "The sources "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/codehaus/groovy/control/SourceUnit;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " each contain a class with the name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/codehaus/groovy/ast/ClassNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
