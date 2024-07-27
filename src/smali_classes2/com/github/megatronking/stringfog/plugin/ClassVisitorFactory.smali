.class public final Lcom/github/megatronking/stringfog/plugin/ClassVisitorFactory;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/github/megatronking/stringfog/IStringFog;Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/ClassWriter;)Lorg/objectweb/asm/ClassVisitor;
    .registers 13

    invoke-static {p5}, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->inWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p5}, Lcom/github/megatronking/stringfog/plugin/ClassVisitorFactory;->isInFogPackages([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StringFog ignore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/utils/Log;->v(Ljava/lang/String;)V

    invoke-static {p6}, Lcom/github/megatronking/stringfog/plugin/ClassVisitorFactory;->createEmpty(Lorg/objectweb/asm/ClassWriter;)Lorg/objectweb/asm/ClassVisitor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StringFog execute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/utils/Log;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/github/megatronking/stringfog/plugin/StringFogClassVisitor;-><init>(Lcom/github/megatronking/stringfog/IStringFog;Lcom/github/megatronking/stringfog/plugin/StringFogMappingPrinter;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/ClassWriter;)V

    goto :goto_0
.end method

.method private static createEmpty(Lorg/objectweb/asm/ClassWriter;)Lorg/objectweb/asm/ClassVisitor;
    .registers 3

    new-instance v0, Lcom/github/megatronking/stringfog/plugin/ClassVisitorFactory$100000000;

    const/high16 v1, 0x50000

    invoke-direct {v0, v1, p0}, Lcom/github/megatronking/stringfog/plugin/ClassVisitorFactory$100000000;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    return-object v0
.end method

.method private static isInFogPackages([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/github/megatronking/stringfog/plugin/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    array-length v2, p0

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
