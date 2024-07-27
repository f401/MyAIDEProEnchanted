.class public Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;
.super Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperatorSymbol"
.end annotation


# instance fields
.field public opcode:I


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;ILcom/sun/tools/javac/code/Symbol;)V
    .registers 12

    .line 1355
    const-wide/16 v2, 0x9

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1356
    iput p3, p0, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    .line 1357
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Symbol$Visitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1360
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Symbol$Visitor;->visitOperatorSymbol(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
