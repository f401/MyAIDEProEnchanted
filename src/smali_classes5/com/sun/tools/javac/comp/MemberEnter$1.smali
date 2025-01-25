.class Lcom/sun/tools/javac/comp/MemberEnter$1;
.super Ljava/lang/Object;
.source "MemberEnter.java"


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

.field final val$toScope:Lcom/sun/tools/javac/code/Scope;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 6

    .line 165
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iput-object p4, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->processed:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 10

    .line 168
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->processed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 186
    :cond_a
    return-void

    .line 172
    :cond_b
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$1;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 173
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

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

    .line 174
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$1;->importFrom(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto :goto_2c

    .line 176
    :cond_3e
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    .line 177
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    :goto_44
    if-eqz v0, :cond_a

    .line 178
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 179
    iget v3, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_85

    .line 180
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->val$packge:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 181
    invoke-virtual {v3, v2, v4}, Lcom/sun/tools/javac/comp/MemberEnter;->staticImportAccessible(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$PackageSymbol;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    .line 182
    invoke-static {v4}, Lcom/sun/tools/javac/comp/MemberEnter;->access$000(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Types;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/code/Symbol;->isMemberOf(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    .line 183
    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/code/Scope;->includes(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 184
    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->val$toScope:Lcom/sun/tools/javac/code/Scope;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$1;->val$origin:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)V

    .line 177
    :cond_85
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_44
.end method
