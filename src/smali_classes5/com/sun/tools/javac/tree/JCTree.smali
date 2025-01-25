.class public abstract Lcom/sun/tools/javac/tree/JCTree;
.super Ljava/lang/Object;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/Tree;
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/tree/JCTree$Factory;,
        Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;,
        Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;,
        Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;,
        Lcom/sun/tools/javac/tree/JCTree$JCAssert;,
        Lcom/sun/tools/javac/tree/JCTree$JCAssign;,
        Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;,
        Lcom/sun/tools/javac/tree/JCTree$JCBinary;,
        Lcom/sun/tools/javac/tree/JCTree$JCBlock;,
        Lcom/sun/tools/javac/tree/JCTree$JCBreak;,
        Lcom/sun/tools/javac/tree/JCTree$JCExpression;,
        Lcom/sun/tools/javac/tree/JCTree$JCStatement;
    }
.end annotation


# static fields
.field public static final AND:I = 0x3a

.field public static final ANNOTATED_TYPE:I = 0x2e

.field public static final ANNOTATION:I = 0x2c

.field public static final APPLY:I = 0x1a

.field public static final ASGOffset:I = 0x11

.field public static final ASSERT:I = 0x19

.field public static final ASSIGN:I = 0x1e

.field public static final BITAND:I = 0x3d

.field public static final BITAND_ASG:I = 0x4e

.field public static final BITOR:I = 0x3b

.field public static final BITOR_ASG:I = 0x4c

.field public static final BITXOR:I = 0x3c

.field public static final BITXOR_ASG:I = 0x4d

.field public static final BLOCK:I = 0x7

.field public static final BREAK:I = 0x15

.field public static final CASE:I = 0xe

.field public static final CATCH:I = 0x11

.field public static final CLASSDEF:I = 0x3

.field public static final COMPL:I = 0x33

.field public static final CONDEXPR:I = 0x12

.field public static final CONTINUE:I = 0x16

.field public static final DIV:I = 0x4a

.field public static final DIV_ASG:I = 0x5b

.field public static final DOLOOP:I = 0x8

.field public static final EQ:I = 0x3e

.field public static final ERRONEOUS:I = 0x2f

.field public static final EXEC:I = 0x14

.field public static final FOREACHLOOP:I = 0xb

.field public static final FORLOOP:I = 0xa

.field public static final GE:I = 0x43

.field public static final GT:I = 0x41

.field public static final IDENT:I = 0x23

.field public static final IF:I = 0x13

.field public static final IMPORT:I = 0x2

.field public static final INDEXED:I = 0x21

.field public static final LABELLED:I = 0xc

.field public static final LE:I = 0x42

.field public static final LETEXPR:I = 0x5d

.field public static final LITERAL:I = 0x24

.field public static final LT:I = 0x40

.field public static final METHODDEF:I = 0x4

.field public static final MINUS:I = 0x48

.field public static final MINUS_ASG:I = 0x59

.field public static final MOD:I = 0x4b

.field public static final MODIFIERS:I = 0x2d

.field public static final MOD_ASG:I = 0x5c

.field public static final MUL:I = 0x49

.field public static final MUL_ASG:I = 0x5a

.field public static final NE:I = 0x3f

.field public static final NEG:I = 0x31

.field public static final NEWARRAY:I = 0x1c

.field public static final NEWCLASS:I = 0x1b

.field public static final NOT:I = 0x32

.field public static final NULLCHK:I = 0x38

.field public static final OR:I = 0x39

.field public static final PARENS:I = 0x1d

.field public static final PLUS:I = 0x47

.field public static final PLUS_ASG:I = 0x58

.field public static final POS:I = 0x30

.field public static final POSTDEC:I = 0x37

.field public static final POSTINC:I = 0x36

.field public static final PREDEC:I = 0x35

.field public static final PREINC:I = 0x34

.field public static final RETURN:I = 0x17

.field public static final SELECT:I = 0x22

.field public static final SKIP:I = 0x6

.field public static final SL:I = 0x44

.field public static final SL_ASG:I = 0x55

.field public static final SR:I = 0x45

.field public static final SR_ASG:I = 0x56

.field public static final SWITCH:I = 0xd

.field public static final SYNCHRONIZED:I = 0xf

.field public static final THROW:I = 0x18

.field public static final TOPLEVEL:I = 0x1

.field public static final TRY:I = 0x10

.field public static final TYPEAPPLY:I = 0x27

.field public static final TYPEARRAY:I = 0x26

.field public static final TYPEBOUNDKIND:I = 0x2b

.field public static final TYPECAST:I = 0x1f

.field public static final TYPEIDENT:I = 0x25

.field public static final TYPEPARAMETER:I = 0x29

.field public static final TYPETEST:I = 0x20

.field public static final TYPEUNION:I = 0x28

.field public static final USR:I = 0x46

.field public static final USR_ASG:I = 0x57

.field public static final VARDEF:I = 0x5

.field public static final WHILELOOP:I = 0x9

.field public static final WILDCARD:I = 0x2a


# instance fields
.field public pos:I

.field public type:Lcom/sun/tools/javac/code/Type;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation
.end method

.method public abstract accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 500
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 501
    :catch_5
    move-exception v0

    .line 502
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEndPosition(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 530
    invoke-static {p0, p1}, Lcom/sun/tools/javac/tree/TreeInfo;->getEndPos(Lcom/sun/tools/javac/tree/JCTree;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public getPreferredPosition()I
    .registers 2

    .line 525
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    return v0
.end method

.method public getStartPosition()I
    .registers 2

    .line 520
    invoke-static {p0}, Lcom/sun/tools/javac/tree/TreeInfo;->getStartPos(Lcom/sun/tools/javac/tree/JCTree;)I

    move-result v0

    return v0
.end method

.method public abstract getTag()I
.end method

.method public getTree()Lcom/sun/tools/javac/tree/JCTree;
    .registers 1

    .line 515
    return-object p0
.end method

.method public pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .registers 1

    .line 510
    return-object p0
.end method

.method public setPos(I)Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 475
    iput p1, p0, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    .line 476
    return-object p0
.end method

.method public setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree;
    .registers 2

    .line 483
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 484
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 460
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 462
    :try_start_5
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sun/tools/javac/tree/Pretty;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {v1, p0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_13

    .line 467
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :catch_13
    move-exception v0

    .line 466
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
