.class Lcom/sun/tools/javac/jvm/ClassReader$TypeAnnotationProxy;
.super Ljava/lang/Object;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeAnnotationProxy"
.end annotation


# instance fields
.field final compound:Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

.field final position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;Lcom/sun/tools/javac/code/TypeAnnotationPosition;)V
    .registers 3

    .line 1600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1601
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$TypeAnnotationProxy;->compound:Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;

    .line 1602
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassReader$TypeAnnotationProxy;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    .line 1603
    return-void
.end method
