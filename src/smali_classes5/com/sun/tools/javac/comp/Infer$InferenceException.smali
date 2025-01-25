.class public Lcom/sun/tools/javac/comp/Infer$InferenceException;
.super Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InferenceException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;-><init>(Lcom/sun/tools/javac/util/JCDiagnostic$Factory;)V

    .line 89
    return-void
.end method
