.class Lcom/sun/tools/javac/util/DiagnosticSource$1;
.super Lcom/sun/tools/javac/util/DiagnosticSource;
.source "DiagnosticSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/DiagnosticSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/util/DiagnosticSource;-><init>(Lcom/sun/tools/javac/util/DiagnosticSource$1;)V

    return-void
.end method


# virtual methods
.method protected findLine(I)Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method
