.class public abstract Lcom/sun/tools/javac/code/Types$UnaryVisitor;
.super Lcom/sun/tools/javac/code/Types$SimpleVisitor;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UnaryVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/tools/javac/code/Types$SimpleVisitor",
        "<TR;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3846
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            ")TR;"
        }
    .end annotation

    .line 3847
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sun/tools/javac/code/Type;->accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
