.class Lcom/sun/tools/javac/code/Symtab$4;
.super Lcom/sun/tools/javac/code/Symbol$PackageSymbol;
.source "Symtab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Symtab;-><init>(Lcom/sun/tools/javac/util/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Symtab;

.field final val$messages:Lcom/sun/tools/javac/util/JavacMessages;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JavacMessages;)V
    .registers 5

    .line 451
    iput-object p1, p0, Lcom/sun/tools/javac/code/Symtab$4;->this$0:Lcom/sun/tools/javac/code/Symtab;

    iput-object p4, p0, Lcom/sun/tools/javac/code/Symtab$4;->val$messages:Lcom/sun/tools/javac/util/JavacMessages;

    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 453
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab$4;->val$messages:Lcom/sun/tools/javac/util/JavacMessages;

    const-string v1, "compiler.misc.unnamed.package"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
