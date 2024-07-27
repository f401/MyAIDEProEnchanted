.class Lcom/sun/tools/javac/comp/MemberEnter$3;
.super Ljava/lang/Object;
.source "MemberEnter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/MemberEnter;->importNamedStatic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/comp/Env;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

.field final val$name:Lcom/sun/tools/javac/util/Name;

.field final val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

.field final val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

.field final val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field final val$toScope:Lcom/sun/tools/javac/code/Scope;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Scope;)V
    .registers 8

    .line 258
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$name:Lcom/sun/tools/javac/util/Name;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object p4, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iput-object p5, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p6, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->processed:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 7

    .line 261
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->processed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$3;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 266
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 267
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$3;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 270
    :goto_1
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 273
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 275
    invoke-virtual {v2, v1, v3}, Lcom/sun/tools/javac/comp/MemberEnter;->staticImportAccessible(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    .line 276
    invoke-static {v3}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    .line 277
    invoke-static {v2}, Lcom/sun/tools/javac/comp/MemberEnter;->access$100(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$pos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v3, v1, v4}, Lcom/sun/tools/javac/comp/Check;->checkUniqueStaticImport(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    iget-object v3, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$3;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)V

    .line 271
    :cond_3
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_1
.end method
