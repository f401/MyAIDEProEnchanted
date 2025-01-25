.class Lcom/google/googlejavaformat/java/JavacTokens$AccessibleReader;
.super Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;
.source "JavacTokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibleReader"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V
    .registers 4

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlejavaformat/java/javac/parser/UnicodeReader;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;[CI)V

    .line 229
    return-void
.end method
