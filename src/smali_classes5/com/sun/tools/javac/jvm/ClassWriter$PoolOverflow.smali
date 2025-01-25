.class public Lcom/sun/tools/javac/jvm/ClassWriter$PoolOverflow;
.super Ljava/lang/Exception;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoolOverflow"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 489
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 490
    return-void
.end method
