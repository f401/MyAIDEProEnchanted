.class Lcom/sun/tools/javac/code/Symtab$3;
.super Lcom/sun/tools/javac/code/Type;
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


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symtab;ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 4

    .line 441
    iput-object p1, p0, Lcom/sun/tools/javac/code/Symtab$3;->this$0:Lcom/sun/tools/javac/code/Symtab;

    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/type/TypeVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 444
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeVisitor;->visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
