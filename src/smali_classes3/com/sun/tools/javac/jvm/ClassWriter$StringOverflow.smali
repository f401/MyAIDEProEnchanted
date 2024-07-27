.class public Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow;
.super Ljava/lang/Exception;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringOverflow"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 497
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 498
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow;->value:Ljava/lang/String;

    .line 499
    return-void
.end method
