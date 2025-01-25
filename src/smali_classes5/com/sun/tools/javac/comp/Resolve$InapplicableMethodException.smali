.class public Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;
.super Ljava/lang/RuntimeException;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InapplicableMethodException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field diagnostic:Lcom/sun/tools/javac/util/JCDiagnostic;

.field diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V
    .registers 3

    .line 487
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->diagnostic:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 489
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    .line 490
    return-void
.end method


# virtual methods
.method public getDiagnostic()Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->diagnostic:Lcom/sun/tools/javac/util/JCDiagnostic;

    return-object v0
.end method

.method setMessage()Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;
    .registers 2

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->diagnostic:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 493
    return-object p0
.end method

.method setMessage(Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;
    .registers 2

    .line 504
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->diagnostic:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 505
    return-object p0
.end method

.method setMessage(Ljava/lang/String;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;
    .registers 4

    .line 496
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->diagnostic:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 497
    return-object p0

    .line 496
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method varargs setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;
    .registers 4

    .line 500
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;->diagnostic:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 501
    return-object p0

    .line 500
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method
