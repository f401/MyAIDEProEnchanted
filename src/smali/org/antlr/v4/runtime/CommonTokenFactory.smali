.class public Lorg/antlr/v4/runtime/CommonTokenFactory;
.super Ljava/lang/Object;
.source "CommonTokenFactory.java"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/antlr/v4/runtime/TokenFactory",
        "<",
        "Lorg/antlr/v4/runtime/CommonToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/antlr/v4/runtime/TokenFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<",
            "Lorg/antlr/v4/runtime/CommonToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final copyText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/antlr/v4/runtime/CommonTokenFactory;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/CommonTokenFactory;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/CommonTokenFactory;->DEFAULT:Lorg/antlr/v4/runtime/TokenFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/CommonTokenFactory;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/antlr/v4/runtime/CommonTokenFactory;->copyText:Z

    return-void
.end method


# virtual methods
.method public create(ILjava/lang/String;)Lorg/antlr/v4/runtime/CommonToken;
    .locals 1

    .line 85
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    invoke-direct {v0, p1, p2}, Lorg/antlr/v4/runtime/CommonToken;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/CommonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/Pair",
            "<",
            "Lorg/antlr/v4/runtime/TokenSource;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ">;I",
            "Ljava/lang/String;",
            "IIIII)",
            "Lorg/antlr/v4/runtime/CommonToken;"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/antlr/v4/runtime/CommonToken;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/antlr/v4/runtime/CommonToken;-><init>(Lorg/antlr/v4/runtime/misc/Pair;IIII)V

    .line 71
    invoke-virtual {v0, p7}, Lorg/antlr/v4/runtime/CommonToken;->setLine(I)V

    .line 72
    invoke-virtual {v0, p8}, Lorg/antlr/v4/runtime/CommonToken;->setCharPositionInLine(I)V

    if-eqz p3, :cond_1

    .line 74
    invoke-virtual {v0, p3}, Lorg/antlr/v4/runtime/CommonToken;->setText(Ljava/lang/String;)V

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/CommonTokenFactory;->copyText:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p1, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast v1, Lorg/antlr/v4/runtime/CharStream;

    invoke-static {p5, p6}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/CommonToken;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic create(ILjava/lang/String;)Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/CommonTokenFactory;->create(ILjava/lang/String;)Lorg/antlr/v4/runtime/CommonToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 16
    invoke-virtual/range {p0 .. p8}, Lorg/antlr/v4/runtime/CommonTokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/CommonToken;

    move-result-object v0

    return-object v0
.end method
