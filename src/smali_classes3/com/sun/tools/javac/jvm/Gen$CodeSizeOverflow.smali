.class public Lcom/sun/tools/javac/jvm/Gen$CodeSizeOverflow;
.super Ljava/lang/RuntimeException;
.source "Gen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Gen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeSizeOverflow"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 942
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 943
    return-void
.end method
