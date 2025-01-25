.class public final enum Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;
.super Ljava/lang/Enum;
.source "JavaCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavaCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CompilePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum ATTR_ONLY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum BY_FILE:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum BY_TODO:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum CHECK_ONLY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum SIMPLE:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v1, "ATTR_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->ATTR_ONLY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    .line 204
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v1, "CHECK_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->CHECK_ONLY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    .line 212
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v1, "SIMPLE"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->SIMPLE:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    .line 220
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v1, "BY_FILE"

    invoke-direct {v0, v1, v6}, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->BY_FILE:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    .line 228
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v1, "BY_TODO"

    invoke-direct {v0, v1, v7}, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->BY_TODO:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    .line 194
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->ATTR_ONLY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->CHECK_ONLY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->SIMPLE:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->BY_FILE:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->$VALUES:[Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static decode(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;
    .registers 2

    .line 231
    if-nez p0, :cond_7

    .line 232
    invoke-static {}, Lcom/sun/tools/javac/main/JavaCompiler;->access$000()Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    move-result-object v0

    .line 244
    :goto_6
    return-object v0

    .line 233
    :cond_7
    const-string v0, "attr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 234
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->ATTR_ONLY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    goto :goto_6

    .line 235
    :cond_12
    const-string v0, "check"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 236
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->CHECK_ONLY:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    goto :goto_6

    .line 237
    :cond_1d
    const-string v0, "simple"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 238
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->SIMPLE:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    goto :goto_6

    .line 239
    :cond_28
    const-string v0, "byfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 240
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->BY_FILE:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    goto :goto_6

    .line 241
    :cond_33
    const-string v0, "bytodo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 242
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->BY_TODO:Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    goto :goto_6

    .line 244
    :cond_3e
    invoke-static {}, Lcom/sun/tools/javac/main/JavaCompiler;->access$000()Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    move-result-object v0

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;
    .registers 2

    .line 194
    const-class v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;
    .registers 1

    .line 194
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->$VALUES:[Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object v0
.end method
