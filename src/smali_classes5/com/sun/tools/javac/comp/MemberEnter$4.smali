.class Lcom/sun/tools/javac/comp/MemberEnter$4;
.super Ljava/lang/Object;
.source "MemberEnter.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Annotate$Annotator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/MemberEnter;->importNamedStatic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/comp/Env;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field found:Z

.field processed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/comp/MemberEnter;

.field final val$env:Lcom/sun/tools/javac/comp/Env;

.field final val$name:Lcom/sun/tools/javac/util/Name;

.field final val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

.field final val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

.field final val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field final val$toScope:Lcom/sun/tools/javac/code/Scope;

.field final val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/comp/Env;)V
    .registers 10

    .line 284
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$name:Lcom/sun/tools/javac/util/Name;

    iput-object p4, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object p5, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iput-object p6, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p7, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    iput-object p8, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$env:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->processed:Ljava/util/Set;

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->found:Z

    return-void
.end method


# virtual methods
.method public enterAnnotation()V
    .registers 13

    .line 315
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$env:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 317
    :try_start_10
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$4;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 318
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->found:Z

    if-nez v0, :cond_53

    .line 319
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    sget-object v3, Lcom/sun/tools/javac/code/Kinds$KindName;->STATIC:Lcom/sun/tools/javac/code/Kinds$KindName;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$name:Lcom/sun/tools/javac/util/Name;

    .line 321
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 322
    invoke-static {v7}, Lcom/sun/tools/javac/code/Kinds;->typeKindName(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 319
    const-string v9, "cant.resolve.location"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v3, 0x1

    aput-object v4, v10, v3

    const/4 v3, 0x2

    aput-object v5, v10, v3

    const/4 v3, 0x3

    aput-object v6, v10, v3

    const/4 v3, 0x4

    aput-object v7, v10, v3

    const/4 v3, 0x5

    aput-object v8, v10, v3

    invoke-virtual {v0, v2, v9, v10}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_5d

    .line 326
    :cond_53
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 327
    return-void

    .line 326
    :catchall_5d
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 327
    throw v0
.end method

.method importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 7

    .line 292
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->processed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 313
    :cond_a
    return-void

    .line 296
    :cond_b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$4;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 297
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 298
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$4;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto :goto_2c

    .line 300
    :cond_3e
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 301
    :goto_48
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_a

    .line 303
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 304
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 305
    invoke-virtual {v2, v1, v3}, Lcom/sun/tools/javac/comp/MemberEnter;->staticImportAccessible(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;)Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    .line 306
    invoke-static {v3}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 307
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->found:Z

    .line 308
    iget v2, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_8a

    iget v2, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9b

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    .line 309
    invoke-static {v2}, Lcom/sun/tools/javac/comp/MemberEnter;->access$100(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v3, v1, v4}, Lcom/sun/tools/javac/comp/Check;->checkUniqueStaticImport(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 310
    :cond_8a
    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    iget-object v3, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)V

    .line 302
    :cond_9b
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_48
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "import static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$4;->val$name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
