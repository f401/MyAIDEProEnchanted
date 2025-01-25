.class public Lcom/sun/tools/javac/main/JavacOption$XOption;
.super Lcom/sun/tools/javac/main/JavacOption$Option;
.source "JavacOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavacOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XOption"
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)V
    .registers 4

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/tools/javac/main/JavacOption$XOption;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/main/OptionName;",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 304
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;Ljava/util/Map;)V

    .line 305
    return-void
.end method

.method varargs constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;[Ljava/lang/String;)V
    .registers 5

    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;[Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 292
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/main/JavacOption$Option;-><init>(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method


# virtual methods
.method public getKind()Lcom/sun/tools/javac/main/JavacOption$OptionKind;
    .registers 2

    .line 318
    sget-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->EXTENDED:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    return-object v0
.end method

.method help(Ljava/io/PrintWriter;)V
    .registers 2

    .line 309
    return-void
.end method

.method xhelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 313
    invoke-super {p0, p1}, Lcom/sun/tools/javac/main/JavacOption$Option;->help(Ljava/io/PrintWriter;)V

    .line 314
    return-void
.end method
