.class public Lcom/sun/tools/javac/comp/Infer$InvalidInstanceException;
.super Lcom/sun/tools/javac/comp/Infer$InferenceException;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidInstanceException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V
    .registers 2

    .line 107
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Infer$InferenceException;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V

    .line 108
    return-void
.end method
