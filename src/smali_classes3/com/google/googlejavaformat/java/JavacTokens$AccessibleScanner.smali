.class Lcom/google/googlejavaformat/java/JavacTokens$AccessibleScanner;
.super Lcom/google/googlejavaformat/java/javac/parser/Scanner;
.source "JavacTokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavacTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibleScanner"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;)V
    .registers 3

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/google/googlejavaformat/java/javac/parser/Scanner;-><init>(Lcom/google/googlejavaformat/java/javac/parser/ScannerFactory;Lcom/google/googlejavaformat/java/javac/parser/JavaTokenizer;)V

    .line 222
    return-void
.end method
