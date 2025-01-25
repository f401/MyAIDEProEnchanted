.class public Lcom/sun/tools/javac/util/Abort;
.super Ljava/lang/Error;
.source "Abort.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method
