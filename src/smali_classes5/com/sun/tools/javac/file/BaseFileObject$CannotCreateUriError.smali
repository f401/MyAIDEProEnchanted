.class public Lcom/sun/tools/javac/file/BaseFileObject$CannotCreateUriError;
.super Ljava/lang/Error;
.source "BaseFileObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/BaseFileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CannotCreateUriError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7e4fc3f7ccb1efeaL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method
