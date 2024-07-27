.class public Lcom/sun/tools/javac/code/Types$MapVisitor;
.super Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor",
        "<",
        "Lcom/sun/tools/javac/code/Type;",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3860
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 3861
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sun/tools/javac/code/Type;->accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "TS;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 3862
    return-object p1
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3860
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$MapVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
