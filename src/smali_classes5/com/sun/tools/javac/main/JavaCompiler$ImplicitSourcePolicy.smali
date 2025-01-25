.class public final enum Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;
.super Ljava/lang/Enum;
.source "JavaCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavaCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ImplicitSourcePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

.field public static final enum CLASS:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

.field public static final enum NONE:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

.field public static final enum UNSET:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->NONE:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    .line 258
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    const-string v1, "CLASS"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->CLASS:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    .line 262
    new-instance v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->UNSET:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    .line 250
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->NONE:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->CLASS:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->$VALUES:[Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static decode(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;
    .registers 2

    .line 265
    if-nez p0, :cond_5

    .line 266
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->UNSET:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    .line 272
    :goto_4
    return-object v0

    .line 267
    :cond_5
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 268
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->NONE:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    goto :goto_4

    .line 269
    :cond_10
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 270
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->CLASS:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    goto :goto_4

    .line 272
    :cond_1b
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->UNSET:Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;
    .registers 2

    .line 250
    const-class v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;
    .registers 1

    .line 250
    sget-object v0, Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->$VALUES:[Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    return-object v0
.end method
