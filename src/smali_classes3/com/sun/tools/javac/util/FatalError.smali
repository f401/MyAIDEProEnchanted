.class public Lcom/sun/tools/javac/util/FatalError;
.super Ljava/lang/Error;
.source "FatalError.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/JCDiagnostic;)V
    .registers 3

    .line 44
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/JCDiagnostic;Ljava/lang/Throwable;)V
    .registers 4

    .line 53
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/JCDiagnostic;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
