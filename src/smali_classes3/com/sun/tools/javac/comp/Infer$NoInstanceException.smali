.class public Lcom/sun/tools/javac/comp/Infer$NoInstanceException;
.super Lcom/sun/tools/javac/comp/Infer$InferenceException;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoInstanceException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field isAmbiguous:Z


# direct methods
.method constructor <init>(ZLcom/sun/tools/javac/util/JCDiagnostic$Factory;)V
    .registers 3

    .line 98
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/comp/Infer$InferenceException;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V

    .line 99
    iput-boolean p1, p0, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->isAmbiguous:Z

    .line 100
    return-void
.end method
