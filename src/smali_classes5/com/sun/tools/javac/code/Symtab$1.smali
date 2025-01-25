.class Lcom/sun/tools/javac/code/Symtab$1;
.super Ljava/lang/Object;
.source "Symtab.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lcom/sun/tools/javac/code/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Symtab;

.field final val$completer:Lcom/sun/tools/javac/code/Symbol$Completer;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/code/Symbol$Completer;)V
    .registers 3

    .line 385
    iput-object p1, p0, Lcom/sun/tools/javac/code/Symtab$1;->this$0:Lcom/sun/tools/javac/code/Symtab;

    iput-object p2, p0, Lcom/sun/tools/javac/code/Symtab$1;->val$completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab$1;->val$completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    invoke-interface {v0, p1}, Lcom/sun/tools/javac/code/Symbol$Completer;->complete(Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_5
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_5} :catch_6

    .line 393
    :goto_5
    return-void

    .line 389
    :catch_6
    move-exception v0

    .line 390
    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x201

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 391
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab$1;->this$0:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    goto :goto_5
.end method
