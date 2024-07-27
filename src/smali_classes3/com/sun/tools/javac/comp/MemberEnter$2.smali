.class Lcom/sun/tools/javac/comp/MemberEnter$2;
.super Ljava/lang/Object;
.source "MemberEnter.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Annotate$Annotator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/MemberEnter;->importStaticAll(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/comp/Env;)V
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

.field final val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

.field final val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

.field final val$sourcefile:Ljavax/tools/JavaFileObject;

.field final val$toScope:Lcom/sun/tools/javac/code/Scope;

.field final val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 8

    .line 190
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$sourcefile:Ljavax/tools/JavaFileObject;

    iput-object p4, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object p5, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    iput-object p6, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->processed:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public enterAnnotation()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$2;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 218
    return-void
.end method

.method importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 7

    .line 197
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->processed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$2;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 202
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

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

    .line 203
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$2;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    .line 206
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    :goto_1
    if-eqz v0, :cond_0

    .line 207
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 208
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 209
    invoke-virtual {v3, v2, v4}, Lcom/sun/tools/javac/comp/MemberEnter;->staticImportAccessible(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    .line 210
    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/code/Scope;->includes(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    .line 211
    invoke-static {v4}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)V

    .line 206
    :cond_3
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "import static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".* in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$2;->val$sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
