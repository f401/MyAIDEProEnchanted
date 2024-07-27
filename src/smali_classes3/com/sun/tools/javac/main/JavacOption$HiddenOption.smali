.class public Lcom/sun/tools/javac/main/JavacOption$HiddenOption;
.super Lcom/sun/tools/javac/main/JavacOption$Option;
.source "JavacOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavacOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiddenOption"
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;)V
    .registers 3

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, p1, v0, v0}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V
    .registers 4

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method


# virtual methods
.method public getKind()Lcom/sun/tools/javac/main/JavacOption$OptionKind;
    .registers 2

    .line 346
    sget-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->HIDDEN:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    return-object v0
.end method

.method help(Ljava/io/PrintWriter;)V
    .registers 2

    .line 338
    return-void
.end method

.method xhelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 342
    return-void
.end method
