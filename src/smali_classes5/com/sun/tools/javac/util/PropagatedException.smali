.class public Lcom/sun/tools/javac/util/PropagatedException;
.super Ljava/lang/RuntimeException;
.source "PropagatedException.java"


# static fields
.field static final serialVersionUID:J = -0x542c4eb590edf0c7L


# direct methods
.method public constructor <init>(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/RuntimeException;
    .registers 2

    .line 48
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/PropagatedException;->getCause()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method
