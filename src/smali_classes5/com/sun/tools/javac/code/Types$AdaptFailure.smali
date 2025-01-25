.class public Lcom/sun/tools/javac/code/Types$AdaptFailure;
.super Ljava/lang/RuntimeException;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptFailure"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x67f2a5e88037f07eL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3566
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
