.class Lcom/sun/tools/javac/code/Symtab$2;
.super Ljava/lang/Object;
.source "Symtab.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Symtab;->synthesizeBoxTypeIfMissing(Lcom/sun/tools/javac/code/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Symtab;

.field final val$completer:Lcom/sun/tools/javac/code/Symbol$Completer;

.field final val$type:Lcom/sun/tools/javac/code/Type;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/code/Symbol$Completer;Lcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 402
    iput-object p1, p0, Lcom/sun/tools/javac/code/Symtab$2;->this$0:Lcom/sun/tools/javac/code/Symtab;

    iput-object p2, p0, Lcom/sun/tools/javac/code/Symtab$2;->val$completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    iput-object p3, p0, Lcom/sun/tools/javac/code/Symtab$2;->val$type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    const-wide/16 v10, 0x1

    .line 405
    :try_start_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab$2;->val$completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    invoke-interface {v0, p1}, Lcom/sun/tools/javac/code/Symbol$Completer;->complete(Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_7
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_2 .. :try_end_7} :catch_8

    .line 425
    :goto_7
    return-void

    .line 406
    :catch_8
    move-exception v0

    .line 407
    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v0, v10

    iput-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 408
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab$2;->this$0:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 409
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab$2;->this$0:Lcom/sun/tools/javac/code/Symtab;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Symtab;->access$000(Lcom/sun/tools/javac/code/Symtab;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->boxWithConstructors()Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab$2;->this$0:Lcom/sun/tools/javac/code/Symtab;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Symtab;->access$100(Lcom/sun/tools/javac/code/Symtab;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    .line 410
    :goto_2c
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab$2;->val$type:Lcom/sun/tools/javac/code/Type;

    .line 413
    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v6, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 414
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x9

    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/code/Symtab$2;->this$0:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 416
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 417
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab$2;->val$type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab$2;->this$0:Lcom/sun/tools/javac/code/Symtab;

    .line 419
    invoke-static {v1}, Lcom/sun/tools/javac/code/Symtab;->access$100(Lcom/sun/tools/javac/code/Symtab;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Value:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Name;->append(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    .line 420
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab$2;->val$type:Lcom/sun/tools/javac/code/Type;

    .line 421
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab$2;->this$0:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v2, v3, v6}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-wide v2, v10

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 423
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    goto :goto_7

    .line 409
    :cond_84
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab$2;->this$0:Lcom/sun/tools/javac/code/Symtab;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Symtab;->access$100(Lcom/sun/tools/javac/code/Symtab;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->valueOf:Lcom/sun/tools/javac/util/Name;

    goto :goto_2c
.end method
